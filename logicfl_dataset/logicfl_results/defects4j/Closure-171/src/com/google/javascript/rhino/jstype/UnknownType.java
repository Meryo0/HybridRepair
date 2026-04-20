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

import static com.google.javascript.rhino.jstype.TernaryValue.UNKNOWN;

import com.google.javascript.rhino.ErrorReporter;
import com.google.javascript.rhino.Node;

/**
 * The {@code Unknown} type.
 */
public class UnknownType extends ObjectType {
  private static final long serialVersionUID = 1L;

  // See the explanation of checked unknown types in JSTypeNative.
  private final boolean isChecked;

  UnknownType(JSTypeRegistry registry, boolean isChecked) {
    super(registry);
    int PROBE_START_LINE_58 = 58;
	boolean p_is_checked_6194_line_58 = isChecked;
	int PROBE_END_LINE_58 = 58;
	this.isChecked = p_is_checked_6194_line_58;
  }

  @Override
  public boolean isUnknownType() {
    return true;
  }

  @Override
  public boolean isCheckedUnknownType() {
    return isChecked;
  }

  @Override
  public boolean canBeCalled() {
    return true;
  }

  @Override
  public boolean matchesNumberContext() {
    return true;
  }

  @Override
  public boolean matchesObjectContext() {
    return true;
  }

  @Override
  public boolean matchesStringContext() {
    return true;
  }

  @Override
  public TernaryValue testForEquality(JSType that) {
    return UNKNOWN;
  }

  @Override
  public boolean isNullable() {
    return true;
  }

  @Override
  public boolean isSubtype(JSType that) {
    return true;
  }

  @Override
  public <T> T visit(Visitor<T> visitor) {
    int PROBE_START_LINE_108 = 108;
	Visitor<T> p_visitor_6198_line_108 = visitor;
	T unknown_type_1_expr5_line_108 = p_visitor_6198_line_108.caseUnknownType();
	int PROBE_END_LINE_108 = 108;
	return unknown_type_1_expr5_line_108;
  }

  @Override <T> T visit(RelationshipVisitor<T> visitor, JSType that) {
    return visitor.caseUnknownType(this, that);
  }

  @Override
  String toStringHelper(boolean forAnnotations) {
    int PROBE_START_LINE_117 = 117;
	String unknown_type_1_expr6_line_117 = getReferenceName();
	int PROBE_END_LINE_117 = 117;
	return unknown_type_1_expr6_line_117;
  }

  @Override
  boolean defineProperty(String propertyName, JSType type,
      boolean inferred, Node propertyNode) {
    // nothing to define
    return true;
  }

  @Override
  public ObjectType getImplicitPrototype() {
    return null;
  }

  @Override
  public FunctionType getConstructor() {
    return null;
  }

  @Override
  public String getReferenceName() {
    int PROBE_START_LINE_139 = 139;
	boolean f_is_checked_6195_line_139 = isChecked;
	String unknown_type_1_expr7_line_139 = f_is_checked_6195_line_139 ? "??" : "?";
	int PROBE_END_LINE_139 = 139;
	return unknown_type_1_expr7_line_139;
  }

  @Override
  public String getDisplayName() {
    return "Unknown";
  }

  @Override
  public boolean hasDisplayName() {
    return true;
  }

  @Override
  public BooleanLiteralSet getPossibleToBooleanOutcomes() {
    return BooleanLiteralSet.BOTH;
  }

  @Override
  JSType resolveInternal(ErrorReporter t, StaticScope<JSType> scope) {
    return this;
  }
}
