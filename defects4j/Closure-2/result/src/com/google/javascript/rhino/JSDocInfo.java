/*
 *
 * ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Rhino code, released
 * May 6, 1999.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1997-1999
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *   Bob Jervis
 *   Google Inc.
 *
 * Alternatively, the contents of this file may be used under the terms of
 * the GNU General Public License Version 2 or later (the "GPL"), in which
 * case the provisions of the GPL are applicable instead of those above. If
 * you wish to allow use of your version of this file only under the terms of
 * the GPL and not to allow others to use your version of this file under the
 * MPL, indicate your decision by deleting the provisions above and replacing
 * them with the notice and other provisions required by the GPL. If you do
 * not delete the provisions above, a recipient may use your version of this
 * file under either the MPL or the GPL.
 *
 * ***** END LICENSE BLOCK ***** */

package com.google.javascript.rhino;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.ArrayList;

/**
 * <p>JSDoc information describing JavaScript code. JSDoc is represented as a
 * unified object with fields for each JSDoc annotation, even though some
 * combinations are incorrect. For instance, if a JSDoc describes an enum,
 * it cannot have information about a return type. This implementation
 * takes advantage of such incompatibilities to reuse fields for multiple
 * purposes, reducing memory consumption.</p>
 *
 * <p>Constructing {@link JSDocInfo} objects is simplified by
 * {@link JSDocInfoBuilder} which provides early incompatibility detection.</p>
 *
 */
public class JSDocInfo implements Serializable {
  private static final long serialVersionUID = 1L;

  /**
   * Visibility categories. The {@link Visibility#ordinal()} can be used as a
   * numerical indicator of privacy, where 0 is the most private. This means
   * that the {@link Visibility#compareTo} method can be used to
   * determine if a visibility is more permissive than another.
   */
  public enum Visibility {
    PRIVATE,
    PROTECTED,
    PUBLIC,

    // If visibility is not specified, we just assume that visibility
    // is inherited from the super class.
    INHERITED
  }

  private static final class LazilyInitializedInfo implements Serializable {
    private static final long serialVersionUID = 1L;

    // Function information
    JSTypeExpression baseType = null;
    List<JSTypeExpression> extendedInterfaces = null;
    List<JSTypeExpression> implementedInterfaces = null;
    Map<String, JSTypeExpression> parameters = null;
    List<JSTypeExpression> thrownTypes = null;
    ImmutableList<String> templateTypeNames = null;

    // Other information
    String description = null;
    String meaning = null;
    String deprecated = null;
    String license = null;
    Set<String> suppressions = null;
    Set<String> modifies = null;
    String lendsName = null;
  }

  private static final class LazilyInitializedDocumentation {
    String sourceComment = null;
    List<Marker> markers = null;

    Map<String, String> parameters = null;
    Map<JSTypeExpression, String> throwsDescriptions = null;
    String blockDescription = null;
    String fileOverview = null;
    String returnDescription = null;
    String version = null;

    List<String> authors = null;
    List<String> sees = null;
  }

  /**
   * A piece of information (found in a marker) which contains a position
   * with a string.
   */
  public static class StringPosition extends SourcePosition<String> {
  }

  /**
   * A piece of information (found in a marker) which contains a position
   * with a string that has no leading or trailing whitespace.
   */
  static class TrimmedStringPosition extends StringPosition {
    @Override public void setItem(String item) {
      Preconditions.checkArgument(
          item.charAt(0) != ' ' &&
          item.charAt(item.length() - 1) != ' ',
          "String has leading or trailing whitespace");
      super.setItem(item);
    }
  }

  /**
   * A piece of information (found in a marker) which contains a position
   * with a name node.
   */
  public static class NamePosition extends SourcePosition<Node> {}

  /**
   * A piece of information (found in a marker) which contains a position
   * with a type expression syntax tree.
   */
  public static class TypePosition extends SourcePosition<Node> {
    private boolean brackets = false;

    /** Returns whether the type has curly braces around it. */
    public boolean hasBrackets() {
      return brackets;
    }

    void setHasBrackets(boolean newVal) {
      brackets = newVal;
    }
  }

  /**
   * Defines a class for containing the parsing information
   * for this JSDocInfo. For each annotation found in the
   * JsDoc, a marker will be created indicating the annotation
   * itself, the name of the annotation (if any; for example,
   * a @param has a name, but a @return does not), the
   * textual description found on that annotation and, if applicable,
   * the type declaration. All this information is only collected
   * if documentation collection is turned on.
   */
  public static final class Marker {
    private TrimmedStringPosition annotation = null;
    private TrimmedStringPosition name = null;
    private SourcePosition<Node> nameNode = null;
    private StringPosition description = null;
    private TypePosition type = null;

    /**
     * Gets the position information for the annotation name. (e.g., "param")
     */
    public StringPosition getAnnotation() {
      return annotation;
    }

    void setAnnotation(TrimmedStringPosition p) {
      annotation = p;
    }

    /**
     * Gets the position information for the name found
     * in a @param tag.
     * @deprecated Use #getNameNode
     */
    @Deprecated
    public StringPosition getName() {
      return name;
    }

    void setName(TrimmedStringPosition p) {
      name = p;
    }

    /**
     * Gets the position information for the name found
     * in an @param tag.
     */
    public SourcePosition<Node> getNameNode() {
      return nameNode;
    }

    void setNameNode(SourcePosition<Node> p) {
      nameNode = p;
    }

    /**
     * Gets the position information for the description found
     * in a block tag.
     */
    public StringPosition getDescription() {
      return description;
    }

    void setDescription(StringPosition p) {
      description = p;
    }

    /**
     * Gets the position information for the type expression found
     * in some block tags, like "@param" and "@return".
     */
    public TypePosition getType() {
      return type;
    }

    void setType(TypePosition p) {
      type = p;
    }
  }

  private LazilyInitializedInfo info = null;

  private LazilyInitializedDocumentation documentation = null;

  // The Node this JSDoc is associated with.
  private Node associatedNode = null;

  private Visibility visibility = null;

  /**
   * The {@link #isConstant()}, {@link #isConstructor()}, {@link #isInterface},
   * {@link #isHidden()} and {@link #shouldPreserveTry()} flags as well as
   * whether the {@link #type} field stores a value for {@link #getType()},
   * {@link #getReturnType()} or {@link #getEnumParameterType()}.
   *
   * @see #setFlag(boolean, int)
   * @see #getFlag(int)
   * @see #setType(JSTypeExpression, int)
   * @see #getType(int)
   */
  private int bitset = 0x00;

  /**
   * The type for {@link #getType()}, {@link #getReturnType()} or
   * {@link #getEnumParameterType()}. The knowledge of which one is recorded is
   * stored in the {@link #bitset} field.
   *
   * @see #setType(JSTypeExpression, int)
   * @see #getType(int)
   */
  private JSTypeExpression type = null;

  /**
   * The type for {@link #getThisType()}.
   */
  private JSTypeExpression thisType = null;

  /**
   * Whether to include documentation.
   *
   * @see JSDocInfo.LazilyInitializedDocumentation
   */
  private boolean includeDocumentation = false;

  // We use a bit map to represent whether or not the JSDoc contains
  // one of the "boolean" annotation types (annotations like @constructor,
  // for which the presence of the annotation alone is significant).

  // Mask all the boolean annotation types
  private static final int MASK_FLAGS       = 0x3FFFFFFF;

  private static final int MASK_CONSTANT      = 0x00000001; // @const
  private static final int MASK_CONSTRUCTOR   = 0x00000002; // @constructor
  private static final int MASK_DEFINE        = 0x00000004; // @define
  private static final int MASK_HIDDEN        = 0x00000008; // @hidden
  private static final int MASK_PRESERVETRY   = 0x00000010; // @preserveTry
  private static final int MASK_NOCHECK       = 0x00000020; // @notypecheck
  private static final int MASK_OVERRIDE      = 0x00000040; // @override
  private static final int MASK_NOALIAS       = 0x00000080; // @noalias
  private static final int MASK_DEPRECATED    = 0x00000100; // @deprecated
  private static final int MASK_INTERFACE     = 0x00000200; // @interface
  private static final int MASK_EXPORT        = 0x00000400; // @export
  private static final int MASK_NOSHADOW      = 0x00000800; // @noshadow
  private static final int MASK_FILEOVERVIEW  = 0x00001000; // @fileoverview
  private static final int MASK_IMPLICITCAST  = 0x00002000; // @implicitCast
  private static final int MASK_NOSIDEEFFECTS = 0x00004000; // @nosideeffects
  private static final int MASK_EXTERNS       = 0x00008000; // @externs
  private static final int MASK_JAVADISPATCH  = 0x00010000; // @javadispatch
  private static final int MASK_NOCOMPILE     = 0x00020000; // @nocompile
  private static final int MASK_CONSISTIDGEN  = 0x00040000; // @consistentIdGenerator
  private static final int MASK_IDGEN         = 0x00080000; // @idGenerator
  private static final int MASK_EXPOSE        = 0x00100000; // @expose
  private static final int MASK_STRUCT        = 0x00200000; // @struct
  private static final int MASK_DICT          = 0x00400000; // @dict
  private static final int MASK_STALBEIDGEN   = 0x00800000; // @stableIdGenerator

  // 3 bit type field stored in the top 3 bits of the most significant
  // nibble.
  private static final int MASK_TYPEFIELD    = 0xE0000000; // 1110...
  private static final int TYPEFIELD_TYPE    = 0x20000000; // 0010...
  private static final int TYPEFIELD_RETURN  = 0x40000000; // 0100...
  private static final int TYPEFIELD_ENUM    = 0x60000000; // 0110...
  private static final int TYPEFIELD_TYPEDEF = 0x80000000; // 1000...

  /**
   * Creates a {@link JSDocInfo} object. This object should be created using
   * a {@link JSDocInfoBuilder}.
   */
  JSDocInfo(boolean includeDocumentation) {
    int PROBE_START_LINE_335 = 335;
	boolean p_include_documentation_4241_line_335 = includeDocumentation;
	int PROBE_END_LINE_335 = 335;
	this.includeDocumentation = p_include_documentation_4241_line_335;
  }

  // Visible for testing.
  public JSDocInfo() {}

  void setConsistentIdGenerator(boolean value) {
    setFlag(value, MASK_CONSISTIDGEN);
  }

  void setStableIdGenerator(boolean value) {
    setFlag(value, MASK_STALBEIDGEN);
  }

  void setConstant(boolean value) {
    setFlag(value, MASK_CONSTANT);
  }

  void setConstructor(boolean value) {
    setFlag(value, MASK_CONSTRUCTOR);
  }

  void setStruct() {
    setFlag(true, MASK_STRUCT);
  }

  void setDict() {
    setFlag(true, MASK_DICT);
  }

  void setDefine(boolean value) {
    setFlag(value, MASK_DEFINE);
  }

  void setHidden(boolean value) {
    setFlag(value, MASK_HIDDEN);
  }

  void setNoCheck(boolean value) {
    setFlag(value, MASK_NOCHECK);
  }

  void setShouldPreserveTry(boolean value) {
    setFlag(value, MASK_PRESERVETRY);
  }

  void setOverride(boolean value) {
    setFlag(value, MASK_OVERRIDE);
  }

  void setNoAlias(boolean value) {
    setFlag(value, MASK_NOALIAS);
  }

  // Visible for testing.
  public void setDeprecated(boolean value) {
    setFlag(value, MASK_DEPRECATED);
  }

  void setInterface(boolean value) {
    int PROBE_START_LINE_395 = 395;
	boolean p_value_4253_line_395 = value;
	int f_mask_interface_4254_line_395 = MASK_INTERFACE;
	int PROBE_END_LINE_395 = 395;
	setFlag(p_value_4253_line_395, f_mask_interface_4254_line_395);
  }

  void setExport(boolean value) {
    setFlag(value, MASK_EXPORT);
  }

  void setExpose(boolean value) {
    setFlag(value, MASK_EXPOSE);
  }

  void setNoShadow(boolean value) {
    setFlag(value, MASK_NOSHADOW);
  }

  void setIdGenerator(boolean value) {
    setFlag(value, MASK_IDGEN);
  }

  void setImplicitCast(boolean value) {
    setFlag(value, MASK_IMPLICITCAST);
  }

  void setNoSideEffects(boolean value) {
    setFlag(value, MASK_NOSIDEEFFECTS);
  }

  void setExterns(boolean value) {
    setFlag(value, MASK_EXTERNS);
  }

  void setJavaDispatch(boolean value) {
    setFlag(value, MASK_JAVADISPATCH);
  }

  void setNoCompile(boolean value) {
    setFlag(value, MASK_NOCOMPILE);
  }

  private void setFlag(boolean value, int mask) {
    int PROBE_START_LINE_435 = 439;
	boolean p_value_4264_line_435 = value;
	int PROBE_END_LINE_435 = 439;
	if (p_value_4264_line_435) {
      int PROBE_START_LINE_436 = 436;
		int p_mask_4265_line_436 = mask;
		int PROBE_END_LINE_436 = 436;
	bitset |= p_mask_4265_line_436;
    } else {
      bitset &= ~mask;
    }
  }

  /**
   * @return whether the {@code @consistentIdGenerator} is present on
   * this {@link JSDocInfo}
   */
  public boolean isConsistentIdGenerator() {
    return getFlag(MASK_CONSISTIDGEN);
  }

  /**
   * @return whether the {@code @stableIdGenerator} is present on this {@link JSDocInfo}.
   */
  public boolean isStableIdGenerator() {
    return getFlag(MASK_STALBEIDGEN);
  }

  /**
   * Returns whether the {@code @const} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isConstant() {
    return getFlag(MASK_CONSTANT) || isDefine();
  }

  /**
   * Returns whether the {@code @constructor} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isConstructor() {
    int PROBE_START_LINE_470 = 470;
	int f_mask_constructor_4266_line_470 = MASK_CONSTRUCTOR;
	boolean jsdoc_info_1_expr6_line_470 = getFlag(f_mask_constructor_4266_line_470);
	int PROBE_END_LINE_470 = 470;
	return jsdoc_info_1_expr6_line_470;
  }

  /**
   * Returns whether the {@code @struct} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean makesStructs() {
    int PROBE_START_LINE_478 = 478;
	int f_mask_struct_4267_line_478 = MASK_STRUCT;
	boolean jsdoc_info_1_expr7_line_478 = getFlag(f_mask_struct_4267_line_478);
	int PROBE_END_LINE_478 = 478;
	return jsdoc_info_1_expr7_line_478;
  }

  /**
   * Returns whether the {@code @dict} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean makesDicts() {
    int PROBE_START_LINE_486 = 486;
	int f_mask_dict_4268_line_486 = MASK_DICT;
	boolean jsdoc_info_1_expr8_line_486 = getFlag(f_mask_dict_4268_line_486);
	int PROBE_END_LINE_486 = 486;
	return jsdoc_info_1_expr8_line_486;
  }

  /**
   * Returns whether the {@code @define} annotation is present on this
   * {@link JSDocInfo}. If this annotation is present, then the
   * {@link #getType()} method will retrieve the define type.
   */
  public boolean isDefine() {
    return getFlag(MASK_DEFINE);
  }

  /**
   * Returns whether the {@code @hidden} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isHidden() {
    return getFlag(MASK_HIDDEN);
  }

  /**
   * Returns whether the {@code @nocheck} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isNoTypeCheck() {
    int PROBE_START_LINE_511 = 511;
	int f_mask_nocheck_4269_line_511 = MASK_NOCHECK;
	boolean jsdoc_info_1_expr9_line_511 = getFlag(f_mask_nocheck_4269_line_511);
	int PROBE_END_LINE_511 = 511;
	return jsdoc_info_1_expr9_line_511;
  }

  /**
   * Returns whether the {@code @preserveTry} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean shouldPreserveTry() {
    return getFlag(MASK_PRESERVETRY);
  }

  /**
   * Returns whether the {@code @override} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isOverride() {
    return getFlag(MASK_OVERRIDE);
  }

  /**
   * Returns whether the {@code @noalias} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isNoAlias() {
    return getFlag(MASK_NOALIAS);
  }

  /**
   * Returns whether the {@code @deprecated} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isDeprecated() {
    return getFlag(MASK_DEPRECATED);
  }

  /**
   * Returns whether the {@code @interface} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isInterface() {
    int PROBE_START_LINE_551 = 551;
	int f_mask_interface_4254_line_551 = MASK_INTERFACE;
	boolean jsdoc_info_1_expr10_line_551 = getFlag(f_mask_interface_4254_line_551);
	int PROBE_END_LINE_551 = 551;
	return jsdoc_info_1_expr10_line_551;
  }

  /**
   * Returns whether the {@code @export} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isExport() {
    return getFlag(MASK_EXPORT);
  }

  /**
   * Returns whether the {@code @expose} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isExpose() {
    return getFlag(MASK_EXPOSE);
  }

  /**
   * Returns whether the {@code @noshadow} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isNoShadow() {
    return getFlag(MASK_NOSHADOW);
  }

  /**
   * @return whether the {@code @idGenerator} is present on
   * this {@link JSDocInfo}
   */
  public boolean isIdGenerator() {
    return getFlag(MASK_IDGEN);
  }

  /**
   * Returns whether the {@code @implicitCast} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isImplicitCast() {
    return getFlag(MASK_IMPLICITCAST);
  }

  /**
   * Returns whether the {@code @nosideeffects} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isNoSideEffects() {
    return getFlag(MASK_NOSIDEEFFECTS);
  }

  /**
   * Returns whether the {@code @externs} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isExterns() {
    int PROBE_START_LINE_607 = 607;
	int f_mask_externs_4270_line_607 = MASK_EXTERNS;
	boolean jsdoc_info_1_expr11_line_607 = getFlag(f_mask_externs_4270_line_607);
	int PROBE_END_LINE_607 = 607;
	return jsdoc_info_1_expr11_line_607;
  }

  /**
   * Returns whether the {@code @javadispatch} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isJavaDispatch() {
    return getFlag(MASK_JAVADISPATCH);
  }

  /**
   * Returns whether the {@code @nocompile} annotation is present on this
   * {@link JSDocInfo}.
   */
  public boolean isNoCompile() {
    int PROBE_START_LINE_623 = 623;
	int f_mask_nocompile_4271_line_623 = MASK_NOCOMPILE;
	boolean jsdoc_info_1_expr12_line_623 = getFlag(f_mask_nocompile_4271_line_623);
	int PROBE_END_LINE_623 = 623;
	return jsdoc_info_1_expr12_line_623;
  }

  /**
   * @return Whether there is declaration present on this {@link JSDocInfo}.
   */
  public boolean containsDeclaration() {
    return (hasType()
        || hasReturnType()
        || hasEnumParameterType()
        || hasTypedefType()
        || hasThisType()
        || getParameterCount() > 0
        || getFlag(MASK_CONSTANT
            | MASK_CONSTRUCTOR
            | MASK_DEFINE
            | MASK_OVERRIDE
            | MASK_NOALIAS
            | MASK_DEPRECATED
            | MASK_INTERFACE
            | MASK_NOSHADOW
            | MASK_IMPLICITCAST
            | MASK_NOSIDEEFFECTS));
  }

  private boolean getFlag(int mask) {
    int PROBE_START_LINE_649 = 649;
	int f_bitset_4237_line_649 = bitset;
	int p_mask_4272_line_649 = mask;
	int jsdoc_info_1_expr15_line_649 = f_bitset_4237_line_649 & p_mask_4272_line_649;
	int jsdoc_info_1_expr14_line_649 = (jsdoc_info_1_expr15_line_649);
	boolean jsdoc_info_1_expr13_line_649 = jsdoc_info_1_expr14_line_649 != 0x00;
	int PROBE_END_LINE_649 = 649;
	return jsdoc_info_1_expr13_line_649;
  }

  // Visible for testing.
  public void setVisibility(Visibility visibility) {
    int PROBE_START_LINE_654 = 654;
	com.google.javascript.rhino.JSDocInfo.Visibility p_visibility_4273_line_654 = visibility;
	int PROBE_END_LINE_654 = 654;
	this.visibility = p_visibility_4273_line_654;
  }

  private void lazyInitInfo() {
    int PROBE_START_LINE_658 = 660;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_658 = info;
	boolean jsdoc_info_1_expr19_line_658 = f_info_4233_line_658 == null;
	int PROBE_END_LINE_658 = 660;
	if (jsdoc_info_1_expr19_line_658) {
      info = new LazilyInitializedInfo();
    }
  }

  /**
   * Lazily initializes the documentation information object, but only
   * if the JSDocInfo was told to keep such information around.
   */
  private boolean lazyInitDocumentation() {
    int PROBE_START_LINE_668 = 670;
	boolean f_include_documentation_4240_line_668 = includeDocumentation;
	boolean jsdoc_info_1_expr22_line_668 = !f_include_documentation_4240_line_668;
	int PROBE_END_LINE_668 = 670;
	if (jsdoc_info_1_expr22_line_668) {
      return false;
    }

    if (documentation == null) {
      documentation = new LazilyInitializedDocumentation();
    }

    return true;
  }

  /**
   * Adds a marker to the documentation (if it exists) and
   * returns the marker. Returns null otherwise.
   */
  Marker addMarker() {
    int PROBE_START_LINE_684 = 686;
	boolean jsdoc_info_1_expr24_line_684 = lazyInitDocumentation();
	boolean jsdoc_info_1_expr23_line_684 = !jsdoc_info_1_expr24_line_684;
	int PROBE_END_LINE_684 = 686;
	if (jsdoc_info_1_expr23_line_684) {
      return null;
    }

    if (documentation.markers == null) {
      documentation.markers = Lists.newArrayList();
    }

    Marker marker = new Marker();
    documentation.markers.add(marker);
    return marker;
  }

  /**
   * Sets the deprecation reason.
   *
   * @param reason The deprecation reason
   */
  boolean setDeprecationReason(String reason) {
    lazyInitInfo();

    if (info.deprecated != null) {
      return false;
    }

    info.deprecated = reason;
    return true;
  }

  /**
   * Add a suppressed warning.
   */
  public void addSuppression(String suppression) {
    lazyInitInfo();

    if (info.suppressions == null) {
      info.suppressions = Sets.newHashSet();
    }
    info.suppressions.add(suppression);
  }

  /**
   * Sets suppressed warnings.
   * @param suppressions A list of suppressed warning types.
   */
  boolean setSuppressions(Set<String> suppressions) {
    lazyInitInfo();

    if (info.suppressions != null) {
      return false;
    }

    info.suppressions = suppressions;
    return true;
  }

  /**
   * Add modifies values.
   */
  void addModifies(String modifies) {
    lazyInitInfo();

    if (info.modifies == null) {
      info.modifies = Sets.newHashSet();
    }
    info.modifies.add(modifies);
  }

  /**
   * Sets modifies values.
   * @param modifies A list of modifies types.
   */
  boolean setModifies(Set<String> modifies) {
    lazyInitInfo();

    if (info.modifies != null) {
      return false;
    }

    info.modifies = modifies;
    return true;
  }

  /**
   * Documents the version.
   */
  boolean documentVersion(String version) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.version != null) {
      return false;
    }

    documentation.version = version;
    return true;
  }

  /**
   * Documents a reference (i.e. adds a "see" reference to the list).
   */
  boolean documentReference(String reference) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.sees == null) {
      documentation.sees = Lists.newArrayList();
    }

    documentation.sees.add(reference);
    return true;
  }

  /**
   * Documents the author (i.e. adds it to the author list).
   */
  boolean documentAuthor(String author) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.authors == null) {
      documentation.authors = Lists.newArrayList();
    }

    documentation.authors.add(author);
    return true;
  }

  /**
   * Documents the throws (i.e. adds it to the throws list).
   */
  boolean documentThrows(JSTypeExpression type, String throwsDescription) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.throwsDescriptions == null) {
      documentation.throwsDescriptions =
          new LinkedHashMap<JSTypeExpression, String>();
    }

    if (!documentation.throwsDescriptions.containsKey(type)) {
      documentation.throwsDescriptions.put(type, throwsDescription);
      return true;
    }

    return false;
  }


  /**
   * Documents a parameter. Parameters are described using the {@code @param}
   * annotation.
   *
   * @param parameter the parameter's name
   * @param description the parameter's description
   */
  boolean documentParam(String parameter, String description) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.parameters == null) {
      documentation.parameters = new LinkedHashMap<String, String>();
    }

    if (!documentation.parameters.containsKey(parameter)) {
      documentation.parameters.put(parameter, description);
      return true;
    } else {
      return false;
    }
  }

  /**
   * Documents the block-level comment/description.
   *
   * @param description the description
   */
  boolean documentBlock(String description) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.blockDescription != null) {
      return false;
    }

    documentation.blockDescription = description;
    return true;
  }

  /**
   * Documents the fileoverview comment/description.
   *
   * @param description the description
   */
  boolean documentFileOverview(String description) {
    setFlag(true, MASK_FILEOVERVIEW);
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.fileOverview != null) {
      return false;
    }

    documentation.fileOverview = description;
    return true;
  }

  /**
   * Documents the return value. Return value is described using the
   * {@code @return} annotation.
   *
   * @param description the return value's description
   */
  boolean documentReturn(String description) {
    if (!lazyInitDocumentation()) {
      return true;
    }

    if (documentation.returnDescription != null) {
      return false;
    }

    documentation.returnDescription = description;
    return true;
  }

  /**
   * Declares a parameter. Parameters are described using the {@code @param}
   * annotation.
   *
   * @param jsType the parameter's type, it may be {@code null} when the
   *     {@code @param} annotation did not specify a type.
   * @param parameter the parameter's name
   */
  boolean declareParam(JSTypeExpression jsType, String parameter) {
    lazyInitInfo();
    if (info.parameters == null) {
      info.parameters = new LinkedHashMap<String, JSTypeExpression>();
    }
    if (!info.parameters.containsKey(parameter)) {
      info.parameters.put(parameter, jsType);
      return true;
    } else {
      return false;
    }
  }

  /**
   * Declares a template type name. Template type names are described using the
   * {@code @template} annotation.
   *
   * @param templateTypeNames the template type name.
   */
  boolean declareTemplateTypeNames(List<String> templateTypeNames) {
    lazyInitInfo();

    if (info.templateTypeNames != null) {
      return false;
    }

    info.templateTypeNames = ImmutableList.copyOf(templateTypeNames);
    return true;
  }

  /**
   * Declares that the method throws a given type.
   *
   * @param jsType The type that can be thrown by the method.
   */
  boolean declareThrows(JSTypeExpression jsType) {
    lazyInitInfo();

    if (info.thrownTypes == null) {
      info.thrownTypes = Lists.newArrayList();
    }

    info.thrownTypes.add(jsType);
    return true;
  }

  /**
   * Gets the visibility specified by {@code @private}, {@code @protected} or
   * {@code @public} annotation. If no visibility is specified, visibility
   * is inherited from the base class.
   */
  public Visibility getVisibility() {
    int PROBE_START_LINE_977 = 977;
	com.google.javascript.rhino.JSDocInfo.Visibility f_visibility_4236_line_977 = visibility;
	int PROBE_END_LINE_977 = 977;
	return f_visibility_4236_line_977;
  }

  /**
   * Gets the parameter type.
   * @param parameter the parameter's name
   * @return the parameter's type or {@code null} if this parameter is not
   *     defined or has a {@code null} type
   */
  public JSTypeExpression getParameterType(String parameter) {
    if (info == null || info.parameters == null) {
      return null;
    }
    return info.parameters.get(parameter);
  }

  /**
   * Returns whether the parameter is defined.
   */
  public boolean hasParameter(String parameter) {
    if (info == null || info.parameters == null) {
      return false;
    }
    return info.parameters.containsKey(parameter);
  }

  /**
   * Returns whether the parameter has an attached type.
   *
   * @return {@code true} if the parameter has an attached type, {@code false}
   *     if the parameter has no attached type or does not exist.
   */
  public boolean hasParameterType(String parameter) {
    return getParameterType(parameter) != null;
  }

  /**
   * Returns the set of names of the defined parameters. The iteration order
   * of the returned set is not the order in which parameters are defined.
   *
   * @return the set of names of the defined parameters. The returned set is
   *     immutable.
   */
  public Set<String> getParameterNames() {
    int PROBE_START_LINE_1021 = 1023;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1021 = info;
	boolean jsdoc_info_1_expr26_line_1021 = f_info_4233_line_1021 == null;
	boolean jsdoc_info_1_expr27_line_1021 = false;
	if (!jsdoc_info_1_expr26_line_1021) {
		com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1021_v1 = info;
		Map<String, com.google.javascript.rhino.JSTypeExpression> q_parameters_111_line_1021 = f_info_4233_line_1021_v1.parameters;
		jsdoc_info_1_expr27_line_1021 = q_parameters_111_line_1021 == null;
	}
	boolean jsdoc_info_1_expr25_line_1021 = jsdoc_info_1_expr26_line_1021 || jsdoc_info_1_expr27_line_1021;
	int PROBE_END_LINE_1021 = 1023;
	if (jsdoc_info_1_expr25_line_1021) {
      int PROBE_START_LINE_1022 = 1022;
		ImmutableSet<String> jsdoc_info_1_expr28_line_1022 = ImmutableSet.of();
		int PROBE_END_LINE_1022 = 1022;
	return jsdoc_info_1_expr28_line_1022;
    }
    return ImmutableSet.copyOf(info.parameters.keySet());
  }

  /**
   * Gets the number of parameters defined.
   */
  public int getParameterCount() {
    if (info == null || info.parameters == null) {
      return 0;
    }
    return info.parameters.size();
  }

  void setType(JSTypeExpression type) {
    setType(type, TYPEFIELD_TYPE);
  }

  void setReturnType(JSTypeExpression type) {
    setType(type, TYPEFIELD_RETURN);
  }

  void setEnumParameterType(JSTypeExpression type) {
    setType(type, TYPEFIELD_ENUM);
  }

  void setTypedefType(JSTypeExpression type) {
    setType(type, TYPEFIELD_TYPEDEF);
  }

  private void setType(JSTypeExpression type, int mask) {
    if ((bitset & MASK_TYPEFIELD) != 0) {
      throw new IllegalStateException(
          "API tried to add two incompatible type tags. " +
          "This should have been blocked and emitted a warning.");
    }
    this.bitset = (bitset & MASK_FLAGS) | mask;
    this.type = type;
  }

  /**
   * Returns the list of thrown types.
   */
  public List<JSTypeExpression> getThrownTypes() {
    if (info == null || info.thrownTypes == null) {
      return ImmutableList.of();
    }
    return Collections.unmodifiableList(info.thrownTypes);
  }

  /**
   * Returns whether a type, specified using the {@code @type} annotation, is
   * present on this JSDoc.
   */
  public boolean hasType() {
    int PROBE_START_LINE_1078 = 1078;
	int f_typefield_type_4302_line_1078 = TYPEFIELD_TYPE;
	boolean jsdoc_info_1_expr29_line_1078 = hasType(f_typefield_type_4302_line_1078);
	int PROBE_END_LINE_1078 = 1078;
	return jsdoc_info_1_expr29_line_1078;
  }

  /**
   * Returns whether an enum parameter type, specified using the {@code @enum}
   * annotation, is present on this JSDoc.
   */
  public boolean hasEnumParameterType() {
    int PROBE_START_LINE_1086 = 1086;
	int f_typefield_enum_4303_line_1086 = TYPEFIELD_ENUM;
	boolean jsdoc_info_1_expr30_line_1086 = hasType(f_typefield_enum_4303_line_1086);
	int PROBE_END_LINE_1086 = 1086;
	return jsdoc_info_1_expr30_line_1086;
  }

  /**
   * Returns whether a typedef parameter type, specified using the
   * {@code @typedef} annotation, is present on this JSDoc.
   */
  public boolean hasTypedefType() {
    int PROBE_START_LINE_1094 = 1094;
	int f_typefield_typedef_4304_line_1094 = TYPEFIELD_TYPEDEF;
	boolean jsdoc_info_1_expr31_line_1094 = hasType(f_typefield_typedef_4304_line_1094);
	int PROBE_END_LINE_1094 = 1094;
	return jsdoc_info_1_expr31_line_1094;
  }

  /**
   * Returns whether this {@link JSDocInfo} contains a type for {@code @return}
   * annotation.
   */
  public boolean hasReturnType() {
    int PROBE_START_LINE_1102 = 1102;
	int f_typefield_return_4305_line_1102 = TYPEFIELD_RETURN;
	boolean jsdoc_info_1_expr32_line_1102 = hasType(f_typefield_return_4305_line_1102);
	int PROBE_END_LINE_1102 = 1102;
	return jsdoc_info_1_expr32_line_1102;
  }

  private boolean hasType(int mask) {
    int PROBE_START_LINE_1106 = 1106;
	int f_bitset_4237_line_1106 = bitset;
	int f_mask_typefield_4307_line_1106 = MASK_TYPEFIELD;
	int jsdoc_info_1_expr35_line_1106 = f_bitset_4237_line_1106 & f_mask_typefield_4307_line_1106;
	int jsdoc_info_1_expr34_line_1106 = (jsdoc_info_1_expr35_line_1106);
	int p_mask_4306_line_1106 = mask;
	boolean jsdoc_info_1_expr33_line_1106 = jsdoc_info_1_expr34_line_1106 == p_mask_4306_line_1106;
	int PROBE_END_LINE_1106 = 1106;
	return jsdoc_info_1_expr33_line_1106;
  }

  /**
   * Gets the type specified by the {@code @type} annotation.
   */
  public JSTypeExpression getType() {
    return getType(TYPEFIELD_TYPE);
  }

  /**
   * Gets the return type specified by the {@code @return} annotation.
   */
  public JSTypeExpression getReturnType() {
    return getType(TYPEFIELD_RETURN);
  }

  /**
   * Gets the enum parameter type specified by the {@code @enum} annotation.
   */
  public JSTypeExpression getEnumParameterType() {
    return getType(TYPEFIELD_ENUM);
  }

  /**
   * Gets the typedef type specified by the {@code @type} annotation.
   */
  public JSTypeExpression getTypedefType() {
    return getType(TYPEFIELD_TYPEDEF);
  }

  private JSTypeExpression getType(int typefield) {
    if ((MASK_TYPEFIELD & bitset) == typefield) {
      return type;
    } else {
      return null;
    }
  }

  /**
   * Gets the type specified by the {@code @this} annotation.
   */
  public JSTypeExpression getThisType() {
    return thisType;
  }

  /**
   * Sets the type specified by the {@code @this} annotation.
   */
  void setThisType(JSTypeExpression type) {
    this.thisType = type;
  }

  /**
   * Returns whether this {@link JSDocInfo} contains a type for {@code @this}
   * annotation.
   */
  public boolean hasThisType() {
    int PROBE_START_LINE_1164 = 1164;
	com.google.javascript.rhino.JSTypeExpression f_this_type_4239_line_1164 = thisType;
	boolean jsdoc_info_1_expr36_line_1164 = f_this_type_4239_line_1164 != null;
	int PROBE_END_LINE_1164 = 1164;
	return jsdoc_info_1_expr36_line_1164;
  }

  void setBaseType(JSTypeExpression type) {
    lazyInitInfo();
    info.baseType = type;
  }

  /**
   * Gets the base type specified by the {@code @extends} annotation.
   */
  public JSTypeExpression getBaseType() {
    int PROBE_START_LINE_1176 = 1176;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1176 = info;
	boolean jsdoc_info_1_expr39_line_1176 = f_info_4233_line_1176 == null;
	boolean jsdoc_info_1_expr38_line_1176 = (jsdoc_info_1_expr39_line_1176);
	com.google.javascript.rhino.JSTypeExpression q_base_type_112_line_1176 = null;
	if (!jsdoc_info_1_expr38_line_1176) {
		com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1176_v1 = info;
		q_base_type_112_line_1176 = f_info_4233_line_1176_v1.baseType;
	}
	com.google.javascript.rhino.JSTypeExpression jsdoc_info_1_expr37_line_1176 = jsdoc_info_1_expr38_line_1176
			? null
			: q_base_type_112_line_1176;
	int PROBE_END_LINE_1176 = 1176;
	return jsdoc_info_1_expr37_line_1176;
  }

  /**
   * Gets the description specified by the {@code @desc} annotation.
   */
  public String getDescription() {
    return (info == null) ? null : info.description;
  }

  void setDescription(String desc) {
    lazyInitInfo();
    info.description = desc;
  }

  /**
   * Gets the meaning specified by the {@code @meaning} annotation.
   *
   * In localization systems, two messages with the same content but
   * different "meanings" may be translated differently. By default, we
   * use the name of the variable that the message is initialized to as
   * the "meaning" of the message.
   *
   * But some code generators (like Closure Templates) inject their own
   * meaning with the jsdoc {@code @meaning} annotation.
   */
  public String getMeaning() {
    return (info == null) ? null : info.meaning;
  }

  void setMeaning(String meaning) {
    lazyInitInfo();
    info.meaning = meaning;
  }

  /**
   * Gets the name we're lending to in a {@code @lends} annotation.
   *
   * In many reflection APIs, you pass an anonymous object to a function,
   * and that function mixes the anonymous object into another object.
   * The {@code @lends} annotation allows the type system to track
   * those property assignments.
   */
  public String getLendsName() {
    return (info == null) ? null : info.lendsName;
  }

  void setLendsName(String name) {
    lazyInitInfo();
    info.lendsName = name;
  }

  /**
   * Gets the description specified by the {@code @license} annotation.
   */
  public String getLicense() {
    return (info == null) ? null : info.license;
  }

  /** License directives can appear in multiple comments, and always
   * apply to the entire file.  Break protection and allow outsiders to
   * update the license string so that we can attach the license text even
   * when the JSDocInfo has been created and tagged with other information.
   * @param license String containing new license text.
   */

  public void setLicense(String license) {
    lazyInitInfo();
    info.license = license;
  }

  @Override
  public String toString() {
    return "JSDocInfo";
  }

  /**
   * Returns whether this {@link JSDocInfo} contains a type for {@code @extends}
   * annotation.
   */
  public boolean hasBaseType() {
    int PROBE_START_LINE_1257 = 1257;
	com.google.javascript.rhino.JSTypeExpression jsdoc_info_1_expr41_line_1257 = getBaseType();
	boolean jsdoc_info_1_expr40_line_1257 = jsdoc_info_1_expr41_line_1257 != null;
	int PROBE_END_LINE_1257 = 1257;
	return jsdoc_info_1_expr40_line_1257;
  }

  /**
   * Adds an implemented interface. Returns whether the interface was added. If
   * the interface was already present in the list, it won't get added again.
   */
  boolean addImplementedInterface(JSTypeExpression interfaceName) {
    lazyInitInfo();
    if (info.implementedInterfaces == null) {
      info.implementedInterfaces = Lists.newArrayListWithCapacity(2);
    }
    if (info.implementedInterfaces.contains(interfaceName)) {
      return false;
    }
    info.implementedInterfaces.add(interfaceName);
    return true;
  }

  /**
   * Returns the types specified by the {@code @implements} annotation.
   *
   * @return An immutable list of JSTypeExpression objects that can
   *    be resolved to types.
   */
  public List<JSTypeExpression> getImplementedInterfaces() {
    if (info == null || info.implementedInterfaces == null) {
      return ImmutableList.of();
    }
    return Collections.unmodifiableList(info.implementedInterfaces);
  }

  /**
   * Gets the number of interfaces specified by the {@code @implements}
   * annotation.
   */
  public int getImplementedInterfaceCount() {
    int PROBE_START_LINE_1294 = 1296;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1294 = info;
	boolean jsdoc_info_1_expr43_line_1294 = f_info_4233_line_1294 == null;
	boolean jsdoc_info_1_expr44_line_1294 = false;
	if (!jsdoc_info_1_expr43_line_1294) {
		com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1294_v1 = info;
		List<com.google.javascript.rhino.JSTypeExpression> q_implemented_interfaces_113_line_1294 = f_info_4233_line_1294_v1.implementedInterfaces;
		jsdoc_info_1_expr44_line_1294 = q_implemented_interfaces_113_line_1294 == null;
	}
	boolean jsdoc_info_1_expr42_line_1294 = jsdoc_info_1_expr43_line_1294 || jsdoc_info_1_expr44_line_1294;
	int PROBE_END_LINE_1294 = 1296;
	if (jsdoc_info_1_expr42_line_1294) {
      return 0;
    }
    return info.implementedInterfaces.size();
  }

  /**
   * Adds an extended interface (for interface only).
   * Returns whether the type was added.
   * if the type was already present in the list, it won't get added again.
   */
  boolean addExtendedInterface(JSTypeExpression type) {
    lazyInitInfo();
    int PROBE_START_LINE_1307 = 1309;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1307 = info;
	List<com.google.javascript.rhino.JSTypeExpression> q_extended_interfaces_114_line_1307 = f_info_4233_line_1307.extendedInterfaces;
	boolean jsdoc_info_1_expr46_line_1307 = q_extended_interfaces_114_line_1307 == null;
	int PROBE_END_LINE_1307 = 1309;
	if (jsdoc_info_1_expr46_line_1307) {
      int PROBE_START_LINE_1308 = 1308;
		ArrayList<com.google.javascript.rhino.JSTypeExpression> jsdoc_info_1_expr48_line_1308 = Lists
				.newArrayListWithCapacity(2);
		int PROBE_END_LINE_1308 = 1308;
	info.extendedInterfaces = jsdoc_info_1_expr48_line_1308;
    }
    int PROBE_START_LINE_1310 = 1312;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1310 = info;
	List<com.google.javascript.rhino.JSTypeExpression> q_extended_interfaces_115_line_1310 = f_info_4233_line_1310.extendedInterfaces;
	com.google.javascript.rhino.JSTypeExpression p_type_4316_line_1310 = type;
	boolean jsdoc_info_1_expr49_line_1310 = q_extended_interfaces_115_line_1310.contains(p_type_4316_line_1310);
	int PROBE_END_LINE_1310 = 1312;
	if (jsdoc_info_1_expr49_line_1310) {
      return false;
    }
    int PROBE_START_LINE_1313 = 1313;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1313 = info;
	List<com.google.javascript.rhino.JSTypeExpression> q_extended_interfaces_115_line_1313 = f_info_4233_line_1313.extendedInterfaces;
	com.google.javascript.rhino.JSTypeExpression p_type_4316_line_1313 = type;
	int PROBE_END_LINE_1313 = 1313;
	q_extended_interfaces_115_line_1313.add(p_type_4316_line_1313);
    return true;
  }

  /**
   * Returns the interfaces extended by an interface
   *
   * @return An immutable list of JSTypeExpression objects that can
   *    be resolved to types.
   */
  public List<JSTypeExpression> getExtendedInterfaces() {
    int PROBE_START_LINE_1324 = 1326;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1324 = info;
	boolean jsdoc_info_1_expr52_line_1324 = f_info_4233_line_1324 == null;
	boolean jsdoc_info_1_expr53_line_1324 = false;
	if (!jsdoc_info_1_expr52_line_1324) {
		com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1324_v1 = info;
		List<com.google.javascript.rhino.JSTypeExpression> q_extended_interfaces_115_line_1324 = f_info_4233_line_1324_v1.extendedInterfaces;
		jsdoc_info_1_expr53_line_1324 = q_extended_interfaces_115_line_1324 == null;
	}
	boolean jsdoc_info_1_expr51_line_1324 = jsdoc_info_1_expr52_line_1324 || jsdoc_info_1_expr53_line_1324;
	int PROBE_END_LINE_1324 = 1326;
	if (jsdoc_info_1_expr51_line_1324) {
      return ImmutableList.of();
    }
    int PROBE_START_LINE_1327 = 1327;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1327 = info;
	List<com.google.javascript.rhino.JSTypeExpression> q_extended_interfaces_115_line_1327 = f_info_4233_line_1327.extendedInterfaces;
	List<com.google.javascript.rhino.JSTypeExpression> jsdoc_info_1_expr54_line_1327 = Collections
			.unmodifiableList(q_extended_interfaces_115_line_1327);
	int PROBE_END_LINE_1327 = 1327;
	return jsdoc_info_1_expr54_line_1327;
  }

  /**
   * Gets the number of extended interfaces specified
   */
  public int getExtendedInterfacesCount() {
    if (info == null || info.extendedInterfaces == null) {
      return 0;
    }
    return info.extendedInterfaces.size();
  }

  /**
   * Returns the deprecation reason or null if none specified.
   */
  public String getDeprecationReason() {
    return info == null ? null : info.deprecated;
  }

  /**
   * Returns the set of suppressed warnings.
   */
  public Set<String> getSuppressions() {
    Set<String> suppressions = info == null ? null : info.suppressions;
    return suppressions == null ? Collections.<String>emptySet() : suppressions;
  }

  /**
   * Returns the set of sideeffect notations.
   */
  public Set<String> getModifies() {
    Set<String> modifies = info == null ? null : info.modifies;
    return modifies == null ? Collections.<String>emptySet() : modifies;
  }

  /**
   * Returns whether a description exists for the parameter with the specified
   * name.
   */
  public boolean hasDescriptionForParameter(String name) {
    if (documentation == null || documentation.parameters == null) {
      return false;
    }

    return documentation.parameters.containsKey(name);
  }

  /**
   * Returns the description for the parameter with the given name, if its
   * exists.
   */
  public String getDescriptionForParameter(String name) {
    if (documentation == null || documentation.parameters == null) {
      return null;
    }

    return documentation.parameters.get(name);
  }

  /**
   * Returns the list of authors or null if none.
   */
  public Collection<String> getAuthors() {
    return documentation == null ? null : documentation.authors;
  }

  /**
   * Returns the list of references or null if none.
   */
  public Collection<String> getReferences() {
    return documentation == null ? null : documentation.sees;
  }

  /**
   * Returns the version or null if none.
   */
  public String getVersion() {
    return documentation == null ? null : documentation.version;
  }

  /**
   * Returns the description of the returned object or null if none specified.
   */
  public String getReturnDescription() {
    return documentation == null ? null : documentation.returnDescription;
  }

  /**
   * Returns the block-level description or null if none specified.
   */
  public String getBlockDescription() {
    return documentation == null ? null : documentation.blockDescription;
  }

  /**
   * Returns whether this has a fileoverview flag.
   */
  public boolean hasFileOverview() {
    int PROBE_START_LINE_1426 = 1426;
	int f_mask_fileoverview_4319_line_1426 = MASK_FILEOVERVIEW;
	boolean jsdoc_info_1_expr55_line_1426 = getFlag(f_mask_fileoverview_4319_line_1426);
	int PROBE_END_LINE_1426 = 1426;
	return jsdoc_info_1_expr55_line_1426;
  }

  /**
   * Returns the file overview or null if none specified.
   */
  public String getFileOverview() {
    return documentation == null ? null : documentation.fileOverview;
  }

  public Node getAssociatedNode() {
    return this.associatedNode;
  }

  /**
   * Sets the node associated with this JSDoc.
   * Notice that many nodes may have pointer to the same JSDocInfo
   * object (because we propagate it across the type graph). But there
   * is only one canonical "owner" node of the JSDocInfo, which corresponds
   * to its original place in the syntax tree.
   */
  public void setAssociatedNode(Node node) {
    int PROBE_START_LINE_1448 = 1448;
	com.google.javascript.rhino.Node p_node_4320_line_1448 = node;
	int PROBE_END_LINE_1448 = 1448;
	this.associatedNode = p_node_4320_line_1448;
  }

  /** Gets the name of the source file that contains this JSDoc. */
  public String getSourceName() {
    return this.associatedNode != null
        ? this.associatedNode.getSourceFileName() : null;
  }

  /** Gets the list of all markers for the documentation in this JSDoc. */
  public Collection<Marker> getMarkers() {
    return (documentation == null || documentation.markers == null)
        ? ImmutableList.<Marker>of() : documentation.markers;
  }

  /** Gets the template type name. */
  public ImmutableList<String> getTemplateTypeNames() {
    int PROBE_START_LINE_1465 = 1467;
	com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1465 = info;
	boolean jsdoc_info_1_expr60_line_1465 = f_info_4233_line_1465 == null;
	boolean jsdoc_info_1_expr61_line_1465 = false;
	if (!jsdoc_info_1_expr60_line_1465) {
		com.google.javascript.rhino.JSDocInfo.LazilyInitializedInfo f_info_4233_line_1465_v1 = info;
		ImmutableList<String> q_template_type_names_115_line_1465 = f_info_4233_line_1465_v1.templateTypeNames;
		jsdoc_info_1_expr61_line_1465 = q_template_type_names_115_line_1465 == null;
	}
	boolean jsdoc_info_1_expr59_line_1465 = jsdoc_info_1_expr60_line_1465 || jsdoc_info_1_expr61_line_1465;
	int PROBE_END_LINE_1465 = 1467;
	if (jsdoc_info_1_expr59_line_1465) {
      int PROBE_START_LINE_1466 = 1466;
		ImmutableList<String> jsdoc_info_1_expr62_line_1466 = ImmutableList.of();
		int PROBE_END_LINE_1466 = 1466;
	return jsdoc_info_1_expr62_line_1466;
    }
    return info.templateTypeNames;
  }

  /**
   * Returns a collection of all type nodes that are a part of this JSDocInfo.
   * This includes @type, @this, @extends, @implements, @param, @throws,
   * and @return.  Any future type specific JSDoc should make sure to add the
   * appropriate nodes here.
   * @return collection of all type nodes
   */
  public Collection<Node> getTypeNodes() {
    List<Node> nodes = Lists.newArrayList();

    if (type != null) {
      nodes.add(type.getRoot());
    }

    if (thisType != null) {
      nodes.add(thisType.getRoot());
    }

    if (info != null) {
      if (info.baseType != null) {
        nodes.add(info.baseType.getRoot());
      }

      if (info.extendedInterfaces != null) {
        for (JSTypeExpression interfaceType : info.extendedInterfaces) {
          nodes.add(interfaceType.getRoot());
        }
      }

      if (info.implementedInterfaces != null) {
        for (JSTypeExpression interfaceType : info.implementedInterfaces) {
          nodes.add(interfaceType.getRoot());
        }
      }

      if (info.parameters != null) {
        for (JSTypeExpression parameterType : info.parameters.values()) {
          if (parameterType != null) {
            nodes.add(parameterType.getRoot());
          }
        }
      }

      if (info.thrownTypes != null) {
        for (JSTypeExpression thrownType : info.thrownTypes) {
          if (thrownType != null) {
            nodes.add(thrownType.getRoot());
          }
        }
      }
    }

    return nodes;
  }

  public boolean hasModifies() {
    return info != null && info.modifies != null;
  }

  /**
   * Returns the original JSDoc comment string. Returns null unless
   * parseJsDocDocumentation is enabled via the ParserConfig.
   */
  public String getOriginalCommentString() {
    return documentation == null ? null : documentation.sourceComment;
  }

  void setOriginalCommentString(String sourceComment) {
    if (!lazyInitDocumentation()) {
      return;
    }
    documentation.sourceComment = sourceComment;
  }
}
