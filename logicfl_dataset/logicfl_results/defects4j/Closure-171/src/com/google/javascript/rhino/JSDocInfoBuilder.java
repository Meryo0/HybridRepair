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

import com.google.javascript.rhino.JSDocInfo.Visibility;
import com.google.javascript.rhino.jstype.StaticSourceFile;

import java.util.List;
import java.util.Set;

/**
 * A builder for {@link JSDocInfo} objects. This builder abstracts the
 * construction process of {@link JSDocInfo} objects whilst minimizing the
 * number of instances of {@link JSDocInfo} objects. It provides early
 * incompatibility detection among properties stored on the {@code JSDocInfo}
 * object being created.
 *
 */
final public class JSDocInfoBuilder {
  // the current JSDoc which is being populated
  private JSDocInfo currentInfo;

  // whether the current JSDocInfo has valuable information
  private boolean populated = false;

  // whether to include the documentation itself when parsing the JsDoc
  private boolean parseDocumentation = false;

  // the current marker, if any.
  private JSDocInfo.Marker currentMarker = null;

  public JSDocInfoBuilder(boolean parseDocumentation) {
    int PROBE_START_LINE_70 = 70;
	boolean p_parse_documentation_4947_line_70 = parseDocumentation;
	int PROBE_END_LINE_70 = 70;
	this.currentInfo = new JSDocInfo(p_parse_documentation_4947_line_70);
    int PROBE_START_LINE_71 = 71;
	boolean p_parse_documentation_4947_line_71 = parseDocumentation;
	int PROBE_END_LINE_71 = 71;
	this.parseDocumentation = p_parse_documentation_4947_line_71;
  }

  /**
   * Sets the original JSDoc comment string. This is a no-op if the builder
   * isn't configured to record documentation.
   */
  public void recordOriginalCommentString(String sourceComment) {
    int PROBE_START_LINE_79 = 81;
	boolean f_parse_documentation_4945_line_79 = parseDocumentation;
	int PROBE_END_LINE_79 = 81;
	if (f_parse_documentation_4945_line_79) {
      currentInfo.setOriginalCommentString(sourceComment);
    }
  }

  /**
   * Sets the position of original JSDoc comment.
   */
  public void recordOriginalCommentPosition(int position) {
    int PROBE_START_LINE_88 = 90;
	boolean f_parse_documentation_4945_line_88 = parseDocumentation;
	int PROBE_END_LINE_88 = 90;
	if (f_parse_documentation_4945_line_88) {
      currentInfo.setOriginalCommentPosition(position);
    }
  }

  public boolean shouldParseDocumentation() {
    int PROBE_START_LINE_94 = 94;
	boolean f_parse_documentation_4945_line_94 = parseDocumentation;
	int PROBE_END_LINE_94 = 94;
	return f_parse_documentation_4945_line_94;
  }

  /**
   * Returns whether this builder is populated with information that can be
   * used to {@link #build} a {@link JSDocInfo} object.
   */
  public boolean isPopulated() {
    int PROBE_START_LINE_102 = 102;
	boolean f_populated_4944_line_102 = populated;
	int PROBE_END_LINE_102 = 102;
	return f_populated_4944_line_102;
  }

  /**
   * Returns whether this builder is populated with information that can be
   * used to {@link #build} a {@link JSDocInfo} object that has a
   * fileoverview tag.
   */
  public boolean isPopulatedWithFileOverview() {
    int PROBE_START_LINE_111 = 113;
	boolean jsdoc_info_builder_1_expr9_line_111 = isPopulated();
	boolean jsdoc_info_builder_1_expr8_line_111 = jsdoc_info_builder_1_expr9_line_111
			&& (currentInfo.hasFileOverview() || currentInfo.isExterns() || currentInfo.isNoCompile());
	int PROBE_END_LINE_111 = 113;
	return jsdoc_info_builder_1_expr8_line_111;
  }

  /**
   * Returns whether this builder recorded a description.
   */
  public boolean isDescriptionRecorded() {
    return currentInfo.getDescription() != null;
  }

  /**
   * Builds a {@link JSDocInfo} object based on the populated information and
   * returns it. Once this method is called, the builder can be reused to build
   * another {@link JSDocInfo} object.
   *
   * @param associatedNode The source node containing the JSDoc.
   * @return a {@link JSDocInfo} object populated with the values given to this
   *     builder. If no value was populated, this method simply returns
   *     {@code null}
   */
  public JSDocInfo build(Node associatedNode) {
    int PROBE_START_LINE_134 = 143;
	boolean f_populated_4944_line_134 = populated;
	int PROBE_END_LINE_134 = 143;
	if (f_populated_4944_line_134) {
      int PROBE_START_LINE_135 = 135;
		JSDocInfo f_current_info_4948_line_135 = currentInfo;
		int PROBE_END_LINE_135 = 135;
	JSDocInfo built = f_current_info_4948_line_135;
      int PROBE_START_LINE_136 = 136;
	com.google.javascript.rhino.JSDocInfo v_built_4952_line_136 = built;
	com.google.javascript.rhino.Node p_associated_node_4951_line_136 = associatedNode;
	int PROBE_END_LINE_136 = 136;
	v_built_4952_line_136.setAssociatedNode(p_associated_node_4951_line_136);
      int PROBE_START_LINE_137 = 137;
	com.google.javascript.rhino.JSDocInfo v_built_4952_line_137 = built;
	int PROBE_END_LINE_137 = 137;
	populateDefaults(v_built_4952_line_137);
      populated = false;
      int PROBE_START_LINE_139 = 139;
	boolean f_parse_documentation_4945_line_139 = this.parseDocumentation;
	int PROBE_END_LINE_139 = 139;
	currentInfo = new JSDocInfo(f_parse_documentation_4945_line_139);
      int PROBE_START_LINE_140 = 140;
	com.google.javascript.rhino.JSDocInfo v_built_4952_line_140 = built;
	int PROBE_END_LINE_140 = 140;
	return v_built_4952_line_140;
    } else {
      return null;
    }
  }

  /** Generate defaults when certain parameters are not specified. */
  private static void populateDefaults(JSDocInfo info) {
    int PROBE_START_LINE_148 = 150;
	com.google.javascript.rhino.JSDocInfo p_info_4953_line_148 = info;
	com.google.javascript.rhino.JSDocInfo.Visibility jsdoc_info_builder_1_expr18_line_148 = p_info_4953_line_148
			.getVisibility();
	boolean jsdoc_info_builder_1_expr17_line_148 = jsdoc_info_builder_1_expr18_line_148 == null;
	int PROBE_END_LINE_148 = 150;
	if (jsdoc_info_builder_1_expr17_line_148) {
      int PROBE_START_LINE_149 = 149;
		com.google.javascript.rhino.JSDocInfo p_info_4953_line_149 = info;
		com.google.javascript.rhino.JSDocInfo.Visibility q_inherited_144_line_149 = Visibility.INHERITED;
		int PROBE_END_LINE_149 = 149;
	p_info_4953_line_149.setVisibility(q_inherited_144_line_149);
    }
  }

  /**
   * Adds a marker to the current JSDocInfo and populates the marker with the
   * annotation information.
   */
  public void markAnnotation(String annotation, int lineno, int charno) {
    int PROBE_START_LINE_158 = 158;
	com.google.javascript.rhino.JSDocInfo f_current_info_4948_line_158 = currentInfo;
	JSDocInfo.Marker jsdoc_info_builder_1_expr20_line_158 = f_current_info_4948_line_158.addMarker();
	int PROBE_END_LINE_158 = 158;
	JSDocInfo.Marker marker = jsdoc_info_builder_1_expr20_line_158;

    int PROBE_START_LINE_160 = 168;
	com.google.javascript.rhino.JSDocInfo.Marker v_marker_4957_line_160 = marker;
	boolean jsdoc_info_builder_1_expr21_line_160 = v_marker_4957_line_160 != null;
	int PROBE_END_LINE_160 = 168;
	if (jsdoc_info_builder_1_expr21_line_160) {
      JSDocInfo.TrimmedStringPosition position =
          new JSDocInfo.TrimmedStringPosition();
      position.setItem(annotation);
      position.setPositionInformation(lineno, charno, lineno,
          charno + annotation.length());
      marker.setAnnotation(position);
      populated = true;
    }

    int PROBE_START_LINE_170 = 170;
	com.google.javascript.rhino.JSDocInfo.Marker v_marker_4957_line_170 = marker;
	int PROBE_END_LINE_170 = 170;
	currentMarker = v_marker_4957_line_170;
  }

  /**
   * Adds a textual block to the current marker.
   */
  public void markText(String text, int startLineno, int startCharno,
      int endLineno, int endCharno) {
    if (currentMarker != null) {
      JSDocInfo.StringPosition position = new JSDocInfo.StringPosition();
      position.setItem(text);
      position.setPositionInformation(startLineno, startCharno,
          endLineno, endCharno);
      currentMarker.setDescription(position);
    }
  }

  /**
   * Adds a type declaration to the current marker.
   */
  public void markTypeNode(Node typeNode, int lineno, int startCharno,
      int endLineno, int endCharno, boolean hasLC) {
    int PROBE_START_LINE_192 = 199;
		com.google.javascript.rhino.JSDocInfo.Marker f_current_marker_4946_line_192 = currentMarker;
		boolean jsdoc_info_builder_1_expr23_line_192 = f_current_marker_4946_line_192 != null;
		int PROBE_END_LINE_192 = 199;
	if (jsdoc_info_builder_1_expr23_line_192) {
      JSDocInfo.TypePosition position = new JSDocInfo.TypePosition();
      position.setItem(typeNode);
      position.setHasBrackets(hasLC);
      position.setPositionInformation(lineno, startCharno,
          endLineno, endCharno);
      currentMarker.setType(position);
    }
  }

  /**
   * Adds a name declaration to the current marker.
   * @deprecated Use #markName(String, StaticSourceFile, int, int)
   */
  @Deprecated
  public void markName(String name,  int lineno, int charno) {
    markName(name, null, lineno, charno);
  }

  /**
   * Adds a name declaration to the current marker.
   */
  public void markName(String name, StaticSourceFile file,
      int lineno, int charno) {
    if (currentMarker != null) {
      // Record the name as both a SourcePosition<String> and a
      // SourcePosition<Node>. The <String> form is deprecated,
      // because <Node> is more consistent with how other name
      // references are handled (see #markTypeNode)
      //
      // TODO(nicksantos): Remove all uses of the Name position
      // and replace them with the NameNode position.
      JSDocInfo.TrimmedStringPosition position =
          new JSDocInfo.TrimmedStringPosition();
      position.setItem(name);
      position.setPositionInformation(lineno, charno,
          lineno, charno + name.length());
      currentMarker.setName(position);

      SourcePosition<Node> nodePos =
          new JSDocInfo.NamePosition();
      Node node = Node.newString(Token.NAME, name, lineno, charno);
      node.setLength(name.length());
      node.setStaticSourceFile(file);
      nodePos.setItem(node);
      nodePos.setPositionInformation(lineno, charno,
          lineno, charno + name.length());
      currentMarker.setNameNode(nodePos);
    }
  }

  /**
   * Records a block-level description.
   *
   * @return {@code true} if the description was recorded.
   */
  public boolean recordBlockDescription(String description) {
    populated = true;
    return currentInfo.documentBlock(description);
  }

  /**
   * Records a visibility.
   *
   * @return {@code true} if the visibility was recorded and {@code false}
   *     if it was already defined
   */
  public boolean recordVisibility(Visibility visibility) {
    if (currentInfo.getVisibility() == null) {
      populated = true;
      currentInfo.setVisibility(visibility);
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a typed parameter.
   *
   * @return {@code true} if the typed parameter was recorded and
   *     {@code false} if a parameter with the same name was already defined
   */
  public boolean recordParameter(String parameterName, JSTypeExpression type) {
    if (!hasAnySingletonTypeTags() &&
        currentInfo.declareParam(type, parameterName)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a parameter's description.
   *
   * @return {@code true} if the parameter's description was recorded and
   *     {@code false} if a parameter with the same name was already defined
   */
  public boolean recordParameterDescription(
      String parameterName, String description) {
    if (currentInfo.documentParam(parameterName, description)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a template type name.
   *
   * @return {@code true} if the template type name was recorded and
   *     {@code false} if a template type name was already defined.
   */
  public boolean recordTemplateTypeNames(List<String> names) {
    if (currentInfo.declareTemplateTypeNames(names)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a thrown type.
   */
  public boolean recordThrowType(JSTypeExpression type) {
    if (!hasAnySingletonTypeTags()) {
      currentInfo.declareThrows(type);
      populated = true;
      return true;
    }
    return false;
  }

  /**
   * Records a throw type's description.
   *
   * @return {@code true} if the type's description was recorded and
   *     {@code false} if a description with the same type was already defined
   */
  public boolean recordThrowDescription(
      JSTypeExpression type, String description) {
    if (currentInfo.documentThrows(type, description)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }


  /**
   * Adds an author to the current information.
   */
  public boolean addAuthor(String author) {
    if (currentInfo.documentAuthor(author)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }


  /**
   * Adds a reference ("@see") to the current information.
   */
  public boolean addReference(String reference) {
    if (currentInfo.documentReference(reference)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isConsistentIdGenerator()} flag set to
   * {@code true}.
   *
   * @return {@code true} if the consistentIdGenerator flag was recorded and
   *     {@code false} if it was already recorded
   */
  public boolean recordConsistentIdGenerator() {
    if (!currentInfo.isConsistentIdGenerator()) {
      currentInfo.setConsistentIdGenerator(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its {@link
   * JSDocInfo#isStableIdGenerator()} flag set to {@code true}.
   *
   * @return {@code true} if the stableIdGenerator flag was recorded and {@code false} if it was
   *     already recorded.
   */
  public boolean recordStableIdGenerator() {
    if (!currentInfo.isStableIdGenerator()) {
      currentInfo.setStableIdGenerator(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its {@link
   * JSDocInfo#isStableIdGenerator()} flag set to {@code true}.
   *
   * @return {@code true} if the stableIdGenerator flag was recorded and {@code false} if it was
   *     already recorded.
   */
  public boolean recordMappedIdGenerator() {
    if (!currentInfo.isMappedIdGenerator()) {
      currentInfo.setMappedIdGenerator(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records the version.
   */
  public boolean recordVersion(String version) {
    if (currentInfo.documentVersion(version)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records the deprecation reason.
   */
  public boolean recordDeprecationReason(String reason) {
    if (currentInfo.setDeprecationReason(reason)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records the list of suppressed warnings.
   */
  public boolean recordSuppressions(Set<String> suppressions) {
    if (currentInfo.setSuppressions(suppressions)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records the list of modifies warnings.
   */
  public boolean recordModifies(Set<String> modifies) {
    if (!hasAnySingletonSideEffectTags()
        && currentInfo.setModifies(modifies)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a type.
   *
   * @return {@code true} if the type was recorded and {@code false} if
   *     it is invalid or was already defined
   */
  public boolean recordType(JSTypeExpression type) {
    int PROBE_START_LINE_478 = 484;
	com.google.javascript.rhino.JSTypeExpression p_type_4992_line_478 = type;
	boolean jsdoc_info_builder_1_expr25_line_478 = p_type_4992_line_478 != null;
	boolean jsdoc_info_builder_1_expr26_line_478 = true;
	if (jsdoc_info_builder_1_expr25_line_478) {
		boolean jsdoc_info_builder_1_expr27_line_478 = hasAnyTypeRelatedTags();
		jsdoc_info_builder_1_expr26_line_478 = !jsdoc_info_builder_1_expr27_line_478;
	}
	boolean jsdoc_info_builder_1_expr24_line_478 = jsdoc_info_builder_1_expr25_line_478
			&& jsdoc_info_builder_1_expr26_line_478;
	int PROBE_END_LINE_478 = 484;
	if (jsdoc_info_builder_1_expr24_line_478) {
      int PROBE_START_LINE_479 = 479;
		com.google.javascript.rhino.JSDocInfo f_current_info_4948_line_479 = currentInfo;
		com.google.javascript.rhino.JSTypeExpression p_type_4992_line_479 = type;
		int PROBE_END_LINE_479 = 479;
	f_current_info_4948_line_479.setType(p_type_4992_line_479);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should be populated
   * with a {@code typedef}'d type.
   */
  public boolean recordTypedef(JSTypeExpression type) {
    if (type != null && !hasAnyTypeRelatedTags()) {
      currentInfo.setTypedefType(type);
      populated = true;
      return true;
    }
    return false;
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isIdGenerator()} flag set to
   * {@code true}.
   *
   * @return {@code true} if the idGenerator flag was recorded and {@code false}
   *     if it was already recorded
   */
  public boolean recordIdGenerator() {
    if (!currentInfo.isIdGenerator()) {
      currentInfo.setIdGenerator(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a return type.
   *
   * @return {@code true} if the return type was recorded and {@code false} if
   *     it is invalid or was already defined
   */
  public boolean recordReturnType(JSTypeExpression jsType) {
    if (jsType != null && currentInfo.getReturnType() == null &&
        !hasAnySingletonTypeTags()) {
      currentInfo.setReturnType(jsType);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a return description
   *
   * @return {@code true} if the return description was recorded and
   *     {@code false} if it is invalid or was already defined
   */
  public boolean recordReturnDescription(String description) {
    if (currentInfo.documentReturn(description)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records the type of a define.
   *
   * 'Define' values are special constants that may be manipulated by
   * the compiler. They are designed to mimic the #define command in
   * the C preprocessor.
   */
  public boolean recordDefineType(JSTypeExpression type) {
    if (type != null &&
        !currentInfo.isConstant() &&
        !currentInfo.isDefine() &&
        recordType(type)) {
      currentInfo.setDefine(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a parameter type to an enum.
   *
   * @return {@code true} if the enum's parameter type was recorded and
   *     {@code false} if it was invalid or already defined
   */
  public boolean recordEnumParameterType(JSTypeExpression type) {
    if (type != null && !hasAnyTypeRelatedTags()) {
      currentInfo.setEnumParameterType(type);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a type for {@code @this} annotation.
   *
   * @return {@code true} if the type was recorded and
   *     {@code false} if it is invalid or if it collided with {@code @enum} or
   *     {@code @type} annotations
   */
  public boolean recordThisType(JSTypeExpression type) {
    if (type != null && !hasAnySingletonTypeTags() &&
        !currentInfo.hasThisType()) {
      currentInfo.setThisType(type);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a base type.
   *
   * @return {@code true} if the base type was recorded and {@code false}
   *     if it was already defined
   */
  public boolean recordBaseType(JSTypeExpression jsType) {
    if (jsType != null && !hasAnySingletonTypeTags() &&
        !currentInfo.hasBaseType()) {
      currentInfo.setBaseType(jsType);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isConstant()} flag set to {@code true}.
   *
   * @return {@code true} if the constancy was recorded and {@code false}
   *     if it was already defined
   */
  public boolean recordConstancy() {
    if (!currentInfo.isConstant()) {
      currentInfo.setConstant(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a description giving context for translation (i18n).
   *
   * @return {@code true} if the description was recorded and {@code false}
   *     if the description was invalid or was already defined
   */
  public boolean recordDescription(String description) {
    if (description != null && currentInfo.getDescription() == null) {
      currentInfo.setDescription(description);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a meaning giving context for translation (i18n). Different
   * meanings will result in different translations.
   *
   * @return {@code true} If the meaning was successfully updated.
   */
  public boolean recordMeaning(String meaning) {
    if (meaning != null && currentInfo.getMeaning() == null) {
      currentInfo.setMeaning(meaning);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records a fileoverview description.
   *
   * @return {@code true} if the description was recorded and {@code false}
   *     if the description was invalid or was already defined.
   */
  public boolean recordFileOverview(String description) {
    if (currentInfo.documentFileOverview(description)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isHidden()} flag set to {@code true}.
   *
   * @return {@code true} if the hiddenness was recorded and {@code false}
   *     if it was already defined
   */
  public boolean recordHiddenness() {
    if (!currentInfo.isHidden()) {
      currentInfo.setHidden(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isNoCompile()} flag set to {@code true}.
   *
   * @return {@code true} if the no compile flag was recorded and {@code false}
   *     if it was already recorded
   */
  public boolean recordNoCompile() {
    if (!currentInfo.isNoCompile()) {
      currentInfo.setNoCompile(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isNoTypeCheck()} flag set to {@code true}.
   *
   * @return {@code true} if the no check flag was recorded and {@code false}
   *     if it was already recorded
   */
  public boolean recordNoTypeCheck() {
    if (!currentInfo.isNoTypeCheck()) {
      currentInfo.setNoCheck(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isConstructor()} flag set to {@code true}.
   *
   * @return {@code true} if the constructor was recorded and {@code false}
   *     if it was already defined or it was incompatible with the existing
   *     flags
   */
  public boolean recordConstructor() {
    if (!hasAnySingletonTypeTags() &&
        !currentInfo.isConstructor() && !currentInfo.isInterface()) {
      currentInfo.setConstructor(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Whether the {@link JSDocInfo} being built will have its
   * {@link JSDocInfo#isConstructor()} flag set to {@code true}.
   */
  public boolean isConstructorRecorded() {
    return currentInfo.isConstructor();
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#makesStructs()} flag set to {@code true}.
   *
   * @return {@code true} if the struct was recorded and {@code false}
   * if it was already defined or it was incompatible with the existing flags
   */
  public boolean recordStruct() {
    if (hasAnySingletonTypeTags() || currentInfo.isInterface() ||
        currentInfo.makesDicts() || currentInfo.makesStructs()) {
      return false;
    }
    currentInfo.setStruct();
    populated = true;
    return true;
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#makesDicts()} flag set to {@code true}.
   *
   * @return {@code true} if the dict was recorded and {@code false}
   * if it was already defined or it was incompatible with the existing flags
   */
  public boolean recordDict() {
    if (hasAnySingletonTypeTags() || currentInfo.isInterface() ||
        currentInfo.makesDicts() || currentInfo.makesStructs()) {
      return false;
    }
    currentInfo.setDict();
    populated = true;
    return true;
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isJavaDispatch()} flag set to {@code true}.
   *
   * @return {@code true} if the javadispatch was recorded and {@code false}
   *     if it was already defined or it was incompatible with the existing
   *     flags
   */
  public boolean recordJavaDispatch() {
    if (!currentInfo.isJavaDispatch()) {
      currentInfo.setJavaDispatch(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Whether the {@link JSDocInfo} being built will have its
   * {@link JSDocInfo#isJavaDispatch()} flag set to {@code true}.
   */
  public boolean isJavaDispatch() {
    return currentInfo.isJavaDispatch();
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#shouldPreserveTry()} flag set to {@code true}.
   */
  public boolean recordPreserveTry() {
    if (!currentInfo.shouldPreserveTry()) {
      currentInfo.setShouldPreserveTry(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isOverride()} flag set to {@code true}.
   */
  public boolean recordOverride() {
    if (!currentInfo.isOverride()) {
      currentInfo.setOverride(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isNoAlias()} flag set to {@code true}.
   */
  public boolean recordNoAlias() {
    if (!currentInfo.isNoAlias()) {
      currentInfo.setNoAlias(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isDeprecated()} flag set to {@code true}.
   */
  public boolean recordDeprecated() {
    if (!currentInfo.isDeprecated()) {
      currentInfo.setDeprecated(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isInterface()} flag set to {@code true}.
   *
   * @return {@code true} if the flag was recorded and {@code false}
   * if it was already defined or it was incompatible with the existing flags
   */
  public boolean recordInterface() {
    int PROBE_START_LINE_887 = 891;
	boolean jsdoc_info_builder_1_expr31_line_887 = hasAnySingletonTypeTags();
	boolean jsdoc_info_builder_1_expr30_line_887 = jsdoc_info_builder_1_expr31_line_887 || currentInfo.makesStructs()
			|| currentInfo.makesDicts() || currentInfo.isConstructor() || currentInfo.isInterface();
	int PROBE_END_LINE_887 = 891;
	if (jsdoc_info_builder_1_expr30_line_887) {
      return false;
    }
    int PROBE_START_LINE_892 = 892;
	com.google.javascript.rhino.JSDocInfo f_current_info_4948_line_892 = currentInfo;
	int PROBE_END_LINE_892 = 892;
	f_current_info_4948_line_892.setInterface(true);
    populated = true;
    return true;
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isExport()} flag set to {@code true}.
   */
  public boolean recordExport() {
    if (!currentInfo.isExport()) {
      currentInfo.setExport(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isExpose()} flag set to {@code true}.
   */
  public boolean recordExpose() {
    if (!currentInfo.isExpose()) {
      currentInfo.setExpose(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isNoShadow()} flag set to {@code true}.
   */
  public boolean recordNoShadow() {
    if (!currentInfo.isNoShadow()) {
      currentInfo.setNoShadow(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isImplicitCast()} flag set to {@code true}.
   */
  public boolean recordImplicitCast() {
    if (!currentInfo.isImplicitCast()) {
      currentInfo.setImplicitCast(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isNoSideEffects()} flag set to {@code true}.
   */
  public boolean recordNoSideEffects() {
    if (!hasAnySingletonSideEffectTags()
        && !currentInfo.isNoSideEffects()) {
      currentInfo.setNoSideEffects(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that the {@link JSDocInfo} being built should have its
   * {@link JSDocInfo#isExterns()} flag set to {@code true}.
   */
  public boolean recordExterns() {
    if (!currentInfo.isExterns()) {
      currentInfo.setExterns(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Whether the {@link JSDocInfo} being built will have its
   * {@link JSDocInfo#isInterface()} flag set to {@code true}.
   */
  public boolean isInterfaceRecorded() {
    return currentInfo.isInterface();
  }

  /**
   * @return Whether a parameter of the given name has already been recorded.
   */
  public boolean hasParameter(String name) {
    return currentInfo.hasParameter(name);
  }

  /**
   * Records an implemented interface.
   */
  public boolean recordImplementedInterface(JSTypeExpression interfaceName) {
    if (currentInfo.addImplementedInterface(interfaceName)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records an extended interface type.
   */
  public boolean recordExtendedInterface(JSTypeExpression interfaceType) {
    if (currentInfo.addExtendedInterface(interfaceType)) {
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Records that we're lending to another name.
   */
  public boolean recordLends(String name) {
    if (!hasAnyTypeRelatedTags()) {
      currentInfo.setLendsName(name);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Returns whether current JSDoc is annotated with {@code @ngInject}.
   */
  public boolean isNgInjectRecorded() {
    return currentInfo.isNgInject();
  }

  /**
   * Records that we'd like to add {@code $inject} property inferred from
   * parameters.
   */
  public boolean recordNgInject(boolean ngInject) {
    if (!isNgInjectRecorded()) {
      currentInfo.setNgInject(ngInject);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Returns whether current JSDoc is annotated with {@code @wizaction}.
   */
  public boolean isWizactionRecorded() {
    return currentInfo.isWizaction();
  }

  /**
   * Records that this method is to be exposed as a wizaction.
   */
  public boolean recordWizaction() {
    if (!isWizactionRecorded()) {
      currentInfo.setWizaction(true);
      populated = true;
      return true;
    } else {
      return false;
    }
  }

  /**
   * Whether the current doc info has other type tags, like
   * {@code @param} or {@code @return} or {@code @type} or etc.
   */
  private boolean hasAnyTypeRelatedTags() {
    int PROBE_START_LINE_1080 = 1088;
	com.google.javascript.rhino.JSDocInfo f_current_info_4948_line_1080 = currentInfo;
	boolean jsdoc_info_builder_1_expr41_line_1080 = f_current_info_4948_line_1080.isConstructor();
	boolean jsdoc_info_builder_1_expr40_line_1080 = jsdoc_info_builder_1_expr41_line_1080 || currentInfo.isInterface()
			|| currentInfo.getParameterCount() > 0;
	boolean jsdoc_info_builder_1_expr39_line_1080 = jsdoc_info_builder_1_expr40_line_1080
			|| currentInfo.hasReturnType();
	boolean jsdoc_info_builder_1_expr38_line_1080 = jsdoc_info_builder_1_expr39_line_1080 || currentInfo.hasBaseType();
	boolean jsdoc_info_builder_1_expr37_line_1080 = jsdoc_info_builder_1_expr38_line_1080
			|| currentInfo.getExtendedInterfacesCount() > 0;
	boolean jsdoc_info_builder_1_expr36_line_1080 = jsdoc_info_builder_1_expr37_line_1080
			|| currentInfo.getLendsName() != null;
	boolean jsdoc_info_builder_1_expr35_line_1080 = jsdoc_info_builder_1_expr36_line_1080 || currentInfo.hasThisType();
	boolean jsdoc_info_builder_1_expr34_line_1080 = jsdoc_info_builder_1_expr35_line_1080 || hasAnySingletonTypeTags();
	int PROBE_END_LINE_1080 = 1088;
	return jsdoc_info_builder_1_expr34_line_1080;
  }

  /**
   * Whether the current doc info has any of the singleton type
   * tags that may not appear with other type tags, like
   * {@code @type} or {@code @typedef}.
   */
  private boolean hasAnySingletonTypeTags() {
    int PROBE_START_LINE_1097 = 1099;
	com.google.javascript.rhino.JSDocInfo f_current_info_4948_line_1097 = currentInfo;
	boolean jsdoc_info_builder_1_expr43_line_1097 = f_current_info_4948_line_1097.hasType();
	boolean jsdoc_info_builder_1_expr42_line_1097 = jsdoc_info_builder_1_expr43_line_1097
			|| currentInfo.hasTypedefType() || currentInfo.hasEnumParameterType();
	int PROBE_END_LINE_1097 = 1099;
	return jsdoc_info_builder_1_expr42_line_1097;
  }

  /**
   * Whether the current doc info has any of the singleton type
   * tags that may not appear with other type tags, like
   * {@code @type} or {@code @typedef}.
   */
  private boolean hasAnySingletonSideEffectTags() {
    return currentInfo.isNoSideEffects() ||
        currentInfo.hasModifies();
  }
}
