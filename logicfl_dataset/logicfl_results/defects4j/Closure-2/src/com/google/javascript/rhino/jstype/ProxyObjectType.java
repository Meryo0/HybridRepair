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

import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;

import java.util.Collections;
import java.util.List;

/**
 * An object type which uses composition to delegate all calls.
 *
 * @see NamedType
 * @see ParameterizedType
 *
 */
class ProxyObjectType extends ObjectType {
  private static final long serialVersionUID = 1L;

  private JSType referencedType;
  private ObjectType referencedObjType;

  ProxyObjectType(JSTypeRegistry registry, JSType referencedType) {
    super(registry);
    int PROBE_START_LINE_63 = 63;
	com.google.javascript.rhino.jstype.JSType p_referenced_type_5411_line_63 = referencedType;
	int PROBE_END_LINE_63 = 63;
	setReferencedType(p_referenced_type_5411_line_63);
  }

  @Override
  PropertyMap getPropertyMap() {
    return referencedObjType == null
        ? PropertyMap.immutableEmptyMap() : referencedObjType.getPropertyMap();
  }

  JSType getReferencedTypeInternal() {
    int PROBE_START_LINE_73 = 73;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_73 = referencedType;
	int PROBE_END_LINE_73 = 73;
	return f_referenced_type_5412_line_73;
  }

  ObjectType getReferencedObjTypeInternal() {
    int PROBE_START_LINE_77 = 77;
	com.google.javascript.rhino.jstype.ObjectType f_referenced_obj_type_5413_line_77 = referencedObjType;
	int PROBE_END_LINE_77 = 77;
	return f_referenced_obj_type_5413_line_77;
  }

  void setReferencedType(JSType referencedType) {
    int PROBE_START_LINE_81 = 81;
	com.google.javascript.rhino.jstype.JSType p_referenced_type_5414_line_81 = referencedType;
	int PROBE_END_LINE_81 = 81;
	this.referencedType = p_referenced_type_5414_line_81;
    int PROBE_START_LINE_82 = 86;
	com.google.javascript.rhino.jstype.JSType p_referenced_type_5414_line_82 = referencedType;
	boolean proxy_object_type_1_expr6_line_82 = p_referenced_type_5414_line_82 instanceof ObjectType;
	int PROBE_END_LINE_82 = 86;
	if (proxy_object_type_1_expr6_line_82) {
      int PROBE_START_LINE_83 = 83;
		com.google.javascript.rhino.jstype.JSType p_referenced_type_5414_line_83 = referencedType;
		int PROBE_END_LINE_83 = 83;
	this.referencedObjType = (ObjectType) p_referenced_type_5414_line_83;
    } else {
      this.referencedObjType = null;
    }
  }

  @Override
  public String getReferenceName() {
    return referencedObjType == null ?
        "" : referencedObjType.getReferenceName();
  }

  @Override
  public boolean hasReferenceName() {
    return referencedObjType == null ?
        null : referencedObjType.hasReferenceName();
  }

  @Override
  public boolean matchesNumberContext() {
    return referencedType.matchesNumberContext();
  }

  @Override
  public boolean matchesStringContext() {
    return referencedType.matchesStringContext();
  }

  @Override
  public boolean matchesObjectContext() {
    return referencedType.matchesObjectContext();
  }

  @Override
  public boolean canBeCalled() {
    return referencedType.canBeCalled();
  }

  @Override
  public boolean isNoType() {
    int PROBE_START_LINE_123 = 123;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_123 = referencedType;
	boolean proxy_object_type_1_expr11_line_123 = f_referenced_type_5412_line_123.isNoType();
	int PROBE_END_LINE_123 = 123;
	return proxy_object_type_1_expr11_line_123;
  }

  @Override
  public boolean isNoObjectType() {
    return referencedType.isNoObjectType();
  }

  @Override
  public boolean isNoResolvedType() {
    return referencedType.isNoResolvedType();
  }

  @Override
  public boolean isUnknownType() {
    int PROBE_START_LINE_138 = 138;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_138 = referencedType;
	boolean proxy_object_type_1_expr12_line_138 = f_referenced_type_5412_line_138.isUnknownType();
	int PROBE_END_LINE_138 = 138;
	return proxy_object_type_1_expr12_line_138;
  }

  @Override
  public boolean isCheckedUnknownType() {
    return referencedType.isCheckedUnknownType();
  }

  @Override
  public boolean isNullable() {
    return referencedType.isNullable();
  }

  @Override
  public EnumType toMaybeEnumType() {
    return referencedType.toMaybeEnumType();
  }

  @Override
  public boolean isConstructor() {
    return referencedType.isConstructor();
  }

  @Override
  public boolean isNominalType() {
    return referencedType.isNominalType();
  }

  @Override
  public boolean isInstanceType() {
    return referencedType.isInstanceType();
  }

  @Override
  public boolean isInterface() {
    return referencedType.isInterface();
  }

  @Override
  public boolean isOrdinaryFunction() {
    return referencedType.isOrdinaryFunction();
  }

  @Override
  public boolean isAllType() {
    int PROBE_START_LINE_183 = 183;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_183 = referencedType;
	boolean proxy_object_type_1_expr13_line_183 = f_referenced_type_5412_line_183.isAllType();
	int PROBE_END_LINE_183 = 183;
	return proxy_object_type_1_expr13_line_183;
  }

  @Override
  public boolean isStruct() {
    return referencedType.isStruct();
  }

  @Override
  public boolean isDict() {
    return referencedType.isDict();
  }

  @Override
  public boolean isNativeObjectType() {
    return referencedObjType == null
        ? false : referencedObjType.isNativeObjectType();
  }

  @Override
  RecordType toMaybeRecordType() {
    return referencedType.toMaybeRecordType();
  }

  @Override
  public UnionType toMaybeUnionType() {
    int PROBE_START_LINE_209 = 209;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_209 = referencedType;
	com.google.javascript.rhino.jstype.UnionType proxy_object_type_1_expr14_line_209 = f_referenced_type_5412_line_209
			.toMaybeUnionType();
	int PROBE_END_LINE_209 = 209;
	return proxy_object_type_1_expr14_line_209;
  }

  @Override
  public FunctionType toMaybeFunctionType() {
    int PROBE_START_LINE_214 = 214;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_214 = referencedType;
	com.google.javascript.rhino.jstype.FunctionType proxy_object_type_1_expr15_line_214 = f_referenced_type_5412_line_214
			.toMaybeFunctionType();
	int PROBE_END_LINE_214 = 214;
	return proxy_object_type_1_expr15_line_214;
  }

  @Override
  public EnumElementType toMaybeEnumElementType() {
    return referencedType.toMaybeEnumElementType();
  }

  @Override
  public TernaryValue testForEquality(JSType that) {
    return referencedType.testForEquality(that);
  }

  @Override
  public boolean isSubtype(JSType that) {
    return referencedType.isSubtype(that);
  }

  @Override
  public FunctionType getOwnerFunction() {
    return referencedObjType == null
        ? null : referencedObjType.getOwnerFunction();
  }

  @Override
  public Iterable<ObjectType> getCtorImplementedInterfaces() {
    int PROBE_START_LINE_240 = 241;
	com.google.javascript.rhino.jstype.ObjectType f_referenced_obj_type_5413_line_240 = referencedObjType;
	boolean proxy_object_type_1_expr17_line_240 = f_referenced_obj_type_5413_line_240 == null;
	List<com.google.javascript.rhino.jstype.ObjectType> proxy_object_type_1_expr18_line_240 = null;
	if (proxy_object_type_1_expr17_line_240) {
		proxy_object_type_1_expr18_line_240 = Collections.<ObjectType>emptyList();
	}
	Iterable<com.google.javascript.rhino.jstype.ObjectType> proxy_object_type_1_expr16_line_240 = proxy_object_type_1_expr17_line_240
			? proxy_object_type_1_expr18_line_240
			: referencedObjType.getCtorImplementedInterfaces();
	int PROBE_END_LINE_240 = 241;
	return proxy_object_type_1_expr16_line_240;
  }

  @Override
  public int hashCode() {
    return referencedType.hashCode();
  }

  @Override
  String toStringHelper(boolean forAnnotations) {
    return referencedType.toStringHelper(forAnnotations);
  }

  @Override
  public ObjectType getImplicitPrototype() {
    int PROBE_START_LINE_256 = 257;
	com.google.javascript.rhino.jstype.ObjectType f_referenced_obj_type_5413_line_256 = referencedObjType;
	boolean proxy_object_type_1_expr21_line_256 = f_referenced_obj_type_5413_line_256 == null;
	com.google.javascript.rhino.jstype.ObjectType proxy_object_type_1_expr20_line_256 = proxy_object_type_1_expr21_line_256
			? null
			: referencedObjType.getImplicitPrototype();
	int PROBE_END_LINE_256 = 257;
	return proxy_object_type_1_expr20_line_256;
  }

  @Override
  boolean defineProperty(String propertyName, JSType type,
      boolean inferred, Node propertyNode) {
    return referencedObjType == null ? true :
        referencedObjType.defineProperty(
            propertyName, type, inferred, propertyNode);
  }

  @Override
  public boolean removeProperty(String name) {
    return referencedObjType == null ? false :
        referencedObjType.removeProperty(name);
  }

  @Override
  public JSType findPropertyType(String propertyName) {
    return referencedType.findPropertyType(propertyName);
  }

  @Override
  public JSDocInfo getJSDocInfo() {
    return referencedType.getJSDocInfo();
  }

  @Override
  public void setJSDocInfo(JSDocInfo info) {
    if (referencedObjType != null) {
      referencedObjType.setJSDocInfo(info);
    }
  }

  @Override
  public void setPropertyJSDocInfo(String propertyName, JSDocInfo info) {
    if (referencedObjType != null) {
      referencedObjType.setPropertyJSDocInfo(propertyName, info);
    }
  }

  @Override
  public FunctionType getConstructor() {
    int PROBE_START_LINE_300 = 301;
	com.google.javascript.rhino.jstype.ObjectType f_referenced_obj_type_5413_line_300 = referencedObjType;
	boolean proxy_object_type_1_expr24_line_300 = f_referenced_obj_type_5413_line_300 == null;
	com.google.javascript.rhino.jstype.FunctionType proxy_object_type_1_expr23_line_300 = proxy_object_type_1_expr24_line_300
			? null
			: referencedObjType.getConstructor();
	int PROBE_END_LINE_300 = 301;
	return proxy_object_type_1_expr23_line_300;
  }

  @Override
  public JSType getParameterType() {
    return referencedObjType == null ? null :
        referencedObjType.getParameterType();
  }

  @Override
  public JSType getIndexType() {
    return referencedObjType == null ? null :
        referencedObjType.getIndexType();
  }

  @Override
  public <T> T visit(Visitor<T> visitor) {
    return referencedType.visit(visitor);
  }

  @Override <T> T visit(RelationshipVisitor<T> visitor, JSType that) {
    return referencedType.visit(visitor, that);
  }

  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope) {
    int PROBE_START_LINE_327 = 327;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_327 = referencedType;
	com.google.javascript.rhino.ErrorReporter p_t_5430_line_327 = t;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_5431_line_327 = scope;
	com.google.javascript.rhino.jstype.JSType proxy_object_type_1_expr27_line_327 = f_referenced_type_5412_line_327
			.resolve(p_t_5430_line_327, p_scope_5431_line_327);
	int PROBE_END_LINE_327 = 327;
	setReferencedType(proxy_object_type_1_expr27_line_327);
    return this;
  }

  @Override
  public String toDebugHashCodeString() {
    return "{proxy:" + referencedType.toDebugHashCodeString() + "}";
  }

  @Override
  public JSType getTypeOfThis() {
    if (referencedObjType != null) {
      return referencedObjType.getTypeOfThis();
    }
    return super.getTypeOfThis();
  }

  @Override
  public JSType collapseUnion() {
    if (referencedType.isUnionType()) {
      return referencedType.collapseUnion();
    }
    return this;
  }

  @Override
  public void matchConstraint(JSType constraint) {
    referencedType.matchConstraint(constraint);
  }

  @Override
  public ParameterizedType toMaybeParameterizedType() {
    int PROBE_START_LINE_359 = 359;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_359 = referencedType;
	com.google.javascript.rhino.jstype.ParameterizedType proxy_object_type_1_expr29_line_359 = f_referenced_type_5412_line_359
			.toMaybeParameterizedType();
	int PROBE_END_LINE_359 = 359;
	return proxy_object_type_1_expr29_line_359;
  }

  @Override
  public TemplateType toMaybeTemplateType() {
    int PROBE_START_LINE_364 = 364;
	com.google.javascript.rhino.jstype.JSType f_referenced_type_5412_line_364 = referencedType;
	com.google.javascript.rhino.jstype.TemplateType proxy_object_type_1_expr30_line_364 = f_referenced_type_5412_line_364
			.toMaybeTemplateType();
	int PROBE_END_LINE_364 = 364;
	return proxy_object_type_1_expr30_line_364;
  }

  @Override
  public boolean hasAnyTemplateTypesInternal() {
    return referencedType.hasAnyTemplateTypes();
  }
}
