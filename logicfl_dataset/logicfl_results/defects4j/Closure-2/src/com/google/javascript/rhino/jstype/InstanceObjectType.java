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

package com.google.javascript.rhino.jstype;


import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.javascript.rhino.Node;

/**
 * An object type that is an instance of some function constructor.
 */
class InstanceObjectType extends PrototypeObjectType {
  private static final long serialVersionUID = 1L;

  private final FunctionType constructor;

  InstanceObjectType(JSTypeRegistry registry, FunctionType constructor) {
    this(registry, constructor, false, null);
  }

  InstanceObjectType(JSTypeRegistry registry, FunctionType constructor,
                     boolean isNativeType,
                     ImmutableList<JSType> templatizedTypes) {
    super(registry, null, null, isNativeType, constructor.getTemplateKeys(),
        templatizedTypes);
    int PROBE_START_LINE_65 = 65;
	com.google.javascript.rhino.jstype.FunctionType p_constructor_4848_line_65 = constructor;
	int PROBE_END_LINE_65 = 65;
	Preconditions.checkNotNull(p_constructor_4848_line_65);
    int PROBE_START_LINE_66 = 66;
	com.google.javascript.rhino.jstype.FunctionType p_constructor_4848_line_66 = constructor;
	int PROBE_END_LINE_66 = 66;
	this.constructor = p_constructor_4848_line_66;
  }

  @Override
  public String getReferenceName() {
    int PROBE_START_LINE_71 = 71;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr9_line_71 = getConstructor();
	String instance_object_type_1_expr8_line_71 = instance_object_type_1_expr9_line_71.getReferenceName();
	int PROBE_END_LINE_71 = 71;
	return instance_object_type_1_expr8_line_71;
  }

  @Override
  public boolean hasReferenceName() {
    int PROBE_START_LINE_76 = 76;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr11_line_76 = getConstructor();
	boolean instance_object_type_1_expr10_line_76 = instance_object_type_1_expr11_line_76.hasReferenceName();
	int PROBE_END_LINE_76 = 76;
	return instance_object_type_1_expr10_line_76;
  }

  @Override
  public ObjectType getImplicitPrototype() {
    int PROBE_START_LINE_81 = 81;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr13_line_81 = getConstructor();
	com.google.javascript.rhino.jstype.ObjectType instance_object_type_1_expr12_line_81 = instance_object_type_1_expr13_line_81
			.getPrototype();
	int PROBE_END_LINE_81 = 81;
	return instance_object_type_1_expr12_line_81;
  }

  @Override
  public FunctionType getConstructor() {
    int PROBE_START_LINE_86 = 86;
	com.google.javascript.rhino.jstype.FunctionType f_constructor_4851_line_86 = constructor;
	int PROBE_END_LINE_86 = 86;
	return f_constructor_4851_line_86;
  }

  @Override
  boolean defineProperty(String name, JSType type, boolean inferred,
      Node propertyNode) {
    int PROBE_START_LINE_92 = 92;
		ObjectType instance_object_type_1_expr14_line_92 = getImplicitPrototype();
		int PROBE_END_LINE_92 = 92;
	ObjectType proto = instance_object_type_1_expr14_line_92;
    int PROBE_START_LINE_93 = 95;
	com.google.javascript.rhino.jstype.ObjectType v_proto_4856_line_93 = proto;
	boolean instance_object_type_1_expr16_line_93 = v_proto_4856_line_93 != null;
	boolean instance_object_type_1_expr17_line_93 = true;
	if (instance_object_type_1_expr16_line_93) {
		com.google.javascript.rhino.jstype.ObjectType v_proto_4856_line_93_v1 = proto;
		String p_name_4852_line_93 = name;
		instance_object_type_1_expr17_line_93 = v_proto_4856_line_93_v1.hasOwnDeclaredProperty(p_name_4852_line_93);
	}
	boolean instance_object_type_1_expr15_line_93 = instance_object_type_1_expr16_line_93
			&& instance_object_type_1_expr17_line_93;
	int PROBE_END_LINE_93 = 95;
	if (instance_object_type_1_expr15_line_93) {
      return false;
    }
    int PROBE_START_LINE_96 = 96;
	String p_name_4852_line_96 = name;
	com.google.javascript.rhino.jstype.JSType p_type_4853_line_96 = type;
	boolean p_inferred_4854_line_96 = inferred;
	com.google.javascript.rhino.Node p_property_node_4855_line_96 = propertyNode;
	boolean instance_object_type_1_expr18_line_96 = super.defineProperty(p_name_4852_line_96, p_type_4853_line_96,
			p_inferred_4854_line_96, p_property_node_4855_line_96);
	int PROBE_END_LINE_96 = 96;
	return instance_object_type_1_expr18_line_96;
  }

  @Override
  String toStringHelper(boolean forAnnotations) {
    int PROBE_START_LINE_101 = 112;
	com.google.javascript.rhino.jstype.FunctionType f_constructor_4851_line_101 = constructor;
	boolean instance_object_type_1_expr19_line_101 = f_constructor_4851_line_101.hasReferenceName();
	int PROBE_END_LINE_101 = 112;
	if (instance_object_type_1_expr19_line_101) {
      int PROBE_START_LINE_102 = 102;
		com.google.javascript.rhino.jstype.FunctionType f_constructor_4851_line_102 = constructor;
		String instance_object_type_1_expr20_line_102 = f_constructor_4851_line_102.getReferenceName();
		int PROBE_END_LINE_102 = 102;
	String typeString = instance_object_type_1_expr20_line_102;

      int PROBE_START_LINE_104 = 104;
	ImmutableList<JSType> instance_object_type_1_expr21_line_104 = getTemplatizedTypes();
	int PROBE_END_LINE_104 = 104;
	ImmutableList<JSType> templatizedTypes = instance_object_type_1_expr21_line_104;
      int PROBE_START_LINE_105 = 107;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> v_templatized_types_4859_line_105 = templatizedTypes;
	boolean instance_object_type_1_expr23_line_105 = v_templatized_types_4859_line_105.isEmpty();
	boolean instance_object_type_1_expr22_line_105 = !instance_object_type_1_expr23_line_105;
	int PROBE_END_LINE_105 = 107;
	if (instance_object_type_1_expr22_line_105) {
        typeString += ".<" + Joiner.on(",").join(templatizedTypes) + ">";
      }

      int PROBE_START_LINE_109 = 109;
	String v_type_string_4858_line_109 = typeString;
	int PROBE_END_LINE_109 = 109;
	return v_type_string_4858_line_109;
    } else {
      return super.toStringHelper(forAnnotations);
    }
  }

  @Override
  boolean isTheObjectType() {
    return getConstructor().isNativeObjectType()
        && "Object".equals(getReferenceName());
  }

  @Override
  public boolean isInstanceType() {
    return true;
  }

  @Override
  public boolean isArrayType() {
    return getConstructor().isNativeObjectType()
        && "Array".equals(getReferenceName());
  }

  @Override
  public boolean isStringObjectType() {
    return getConstructor().isNativeObjectType()
        && "String".equals(getReferenceName());
  }

  @Override
  public boolean isBooleanObjectType() {
    return getConstructor().isNativeObjectType()
        && "Boolean".equals(getReferenceName());
  }

  @Override
  public boolean isNumberObjectType() {
    return getConstructor().isNativeObjectType()
        && "Number".equals(getReferenceName());
  }

  @Override
  public boolean isDateType() {
    return getConstructor().isNativeObjectType()
        && "Date".equals(getReferenceName());
  }

  @Override
  public boolean isRegexpType() {
    return getConstructor().isNativeObjectType()
        && "RegExp".equals(getReferenceName());
  }

  @Override
  public boolean isNominalType() {
    int PROBE_START_LINE_164 = 164;
	boolean instance_object_type_1_expr24_line_164 = hasReferenceName();
	int PROBE_END_LINE_164 = 164;
	return instance_object_type_1_expr24_line_164;
  }

  /**
   * If this is equal to a NamedType object, its hashCode must be equal
   * to the hashCode of the NamedType object.
   */
  @Override
  public int hashCode() {
    int PROBE_START_LINE_173 = 177;
	boolean instance_object_type_1_expr25_line_173 = hasReferenceName();
	int PROBE_END_LINE_173 = 177;
	if (instance_object_type_1_expr25_line_173) {
      int PROBE_START_LINE_174 = 174;
		String instance_object_type_1_expr27_line_174 = getReferenceName();
		int instance_object_type_1_expr26_line_174 = instance_object_type_1_expr27_line_174.hashCode();
		int PROBE_END_LINE_174 = 174;
	return instance_object_type_1_expr26_line_174;
    } else {
      return super.hashCode();
    }
  }

  @Override
  public Iterable<ObjectType> getCtorImplementedInterfaces() {
    return getConstructor().getImplementedInterfaces();
  }

  @Override
  public Iterable<ObjectType> getCtorExtendedInterfaces() {
    int PROBE_START_LINE_187 = 187;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr29_line_187 = getConstructor();
	Iterable<com.google.javascript.rhino.jstype.ObjectType> instance_object_type_1_expr28_line_187 = instance_object_type_1_expr29_line_187
			.getExtendedInterfaces();
	int PROBE_END_LINE_187 = 187;
	return instance_object_type_1_expr28_line_187;
  }

  // The owner will always be a resolved type, so there's no need to set
  // the constructor in resolveInternal.
  // (it would lead to infinite loops if we did).
  // JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope);
}
