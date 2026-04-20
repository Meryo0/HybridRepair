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


import com.google.common.base.Preconditions;
import com.google.javascript.rhino.Node;

/**
 * An object type that is an instance of some function constructor.
 */
class InstanceObjectType extends PrototypeObjectType {
  private static final long serialVersionUID = 1L;

  private final FunctionType constructor;

  InstanceObjectType(JSTypeRegistry registry, FunctionType constructor) {
    this(registry, constructor, false);
  }

  InstanceObjectType(JSTypeRegistry registry, FunctionType constructor,
                     boolean isNativeType) {
    super(registry, null, null, isNativeType, constructor.getTemplateTypeMap());
    int PROBE_START_LINE_61 = 61;
	com.google.javascript.rhino.jstype.FunctionType p_constructor_5514_line_61 = constructor;
	int PROBE_END_LINE_61 = 61;
	Preconditions.checkNotNull(p_constructor_5514_line_61);
    int PROBE_START_LINE_62 = 62;
	com.google.javascript.rhino.jstype.FunctionType p_constructor_5514_line_62 = constructor;
	int PROBE_END_LINE_62 = 62;
	this.constructor = p_constructor_5514_line_62;
  }

  @Override
  public String getReferenceName() {
    int PROBE_START_LINE_67 = 67;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr9_line_67 = getConstructor();
	String instance_object_type_1_expr8_line_67 = instance_object_type_1_expr9_line_67.getReferenceName();
	int PROBE_END_LINE_67 = 67;
	return instance_object_type_1_expr8_line_67;
  }

  @Override
  public boolean hasReferenceName() {
    int PROBE_START_LINE_72 = 72;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr11_line_72 = getConstructor();
	boolean instance_object_type_1_expr10_line_72 = instance_object_type_1_expr11_line_72.hasReferenceName();
	int PROBE_END_LINE_72 = 72;
	return instance_object_type_1_expr10_line_72;
  }

  @Override
  public ObjectType getImplicitPrototype() {
    int PROBE_START_LINE_77 = 77;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr13_line_77 = getConstructor();
	com.google.javascript.rhino.jstype.ObjectType instance_object_type_1_expr12_line_77 = instance_object_type_1_expr13_line_77
			.getPrototype();
	int PROBE_END_LINE_77 = 77;
	return instance_object_type_1_expr12_line_77;
  }

  @Override
  public FunctionType getConstructor() {
    int PROBE_START_LINE_82 = 82;
	com.google.javascript.rhino.jstype.FunctionType f_constructor_5516_line_82 = constructor;
	int PROBE_END_LINE_82 = 82;
	return f_constructor_5516_line_82;
  }

  @Override
  boolean defineProperty(String name, JSType type, boolean inferred,
      Node propertyNode) {
    int PROBE_START_LINE_88 = 88;
		ObjectType instance_object_type_1_expr14_line_88 = getImplicitPrototype();
		int PROBE_END_LINE_88 = 88;
	ObjectType proto = instance_object_type_1_expr14_line_88;
    int PROBE_START_LINE_89 = 91;
	com.google.javascript.rhino.jstype.ObjectType v_proto_5521_line_89 = proto;
	boolean instance_object_type_1_expr16_line_89 = v_proto_5521_line_89 != null;
	boolean instance_object_type_1_expr17_line_89 = true;
	if (instance_object_type_1_expr16_line_89) {
		com.google.javascript.rhino.jstype.ObjectType v_proto_5521_line_89_v1 = proto;
		String p_name_5517_line_89 = name;
		instance_object_type_1_expr17_line_89 = v_proto_5521_line_89_v1.hasOwnDeclaredProperty(p_name_5517_line_89);
	}
	boolean instance_object_type_1_expr15_line_89 = instance_object_type_1_expr16_line_89
			&& instance_object_type_1_expr17_line_89;
	int PROBE_END_LINE_89 = 91;
	if (instance_object_type_1_expr15_line_89) {
      return false;
    }
    int PROBE_START_LINE_92 = 92;
	String p_name_5517_line_92 = name;
	com.google.javascript.rhino.jstype.JSType p_type_5518_line_92 = type;
	boolean p_inferred_5519_line_92 = inferred;
	com.google.javascript.rhino.Node p_property_node_5520_line_92 = propertyNode;
	boolean instance_object_type_1_expr18_line_92 = super.defineProperty(p_name_5517_line_92, p_type_5518_line_92,
			p_inferred_5519_line_92, p_property_node_5520_line_92);
	int PROBE_END_LINE_92 = 92;
	return instance_object_type_1_expr18_line_92;
  }

  @Override
  String toStringHelper(boolean forAnnotations) {
    int PROBE_START_LINE_97 = 101;
	com.google.javascript.rhino.jstype.FunctionType f_constructor_5516_line_97 = constructor;
	boolean instance_object_type_1_expr19_line_97 = f_constructor_5516_line_97.hasReferenceName();
	int PROBE_END_LINE_97 = 101;
	if (instance_object_type_1_expr19_line_97) {
      int PROBE_START_LINE_98 = 98;
		com.google.javascript.rhino.jstype.FunctionType f_constructor_5516_line_98 = constructor;
		String instance_object_type_1_expr20_line_98 = f_constructor_5516_line_98.getReferenceName();
		int PROBE_END_LINE_98 = 98;
	return instance_object_type_1_expr20_line_98;
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
    int PROBE_START_LINE_153 = 153;
	boolean instance_object_type_1_expr21_line_153 = hasReferenceName();
	int PROBE_END_LINE_153 = 153;
	return instance_object_type_1_expr21_line_153;
  }

  /**
   * If this is equal to a NamedType object, its hashCode must be equal
   * to the hashCode of the NamedType object.
   */
  @Override
  public int hashCode() {
    int PROBE_START_LINE_162 = 166;
	boolean instance_object_type_1_expr22_line_162 = hasReferenceName();
	int PROBE_END_LINE_162 = 166;
	if (instance_object_type_1_expr22_line_162) {
      int PROBE_START_LINE_163 = 163;
		String instance_object_type_1_expr24_line_163 = getReferenceName();
		int instance_object_type_1_expr23_line_163 = instance_object_type_1_expr24_line_163.hashCode();
		int PROBE_END_LINE_163 = 163;
	return instance_object_type_1_expr23_line_163;
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
    int PROBE_START_LINE_176 = 176;
	com.google.javascript.rhino.jstype.FunctionType instance_object_type_1_expr26_line_176 = getConstructor();
	Iterable<com.google.javascript.rhino.jstype.ObjectType> instance_object_type_1_expr25_line_176 = instance_object_type_1_expr26_line_176
			.getExtendedInterfaces();
	int PROBE_END_LINE_176 = 176;
	return instance_object_type_1_expr25_line_176;
  }

  // The owner will always be a resolved type, so there's no need to set
  // the constructor in resolveInternal.
  // (it would lead to infinite loops if we did).
  // JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope);
}
