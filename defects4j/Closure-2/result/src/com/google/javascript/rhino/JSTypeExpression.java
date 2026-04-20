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

import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.JSTypeRegistry;
import com.google.javascript.rhino.jstype.StaticScope;

import java.io.Serializable;


/**
 * Represents a type expression as a miniature Rhino AST, so that the
 * type expression can be evaluated later.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
public final class JSTypeExpression implements Serializable {
  private static final long serialVersionUID = 1L;

  /** The root of the AST. */
  private final Node root;

  /** The source name where the type expression appears. */
  private final String sourceName;

  public JSTypeExpression(Node root, String sourceName) {
    int PROBE_START_LINE_65 = 65;
	com.google.javascript.rhino.Node p_root_4384_line_65 = root;
	int PROBE_END_LINE_65 = 65;
	this.root = p_root_4384_line_65;
    int PROBE_START_LINE_66 = 66;
	String p_source_name_4385_line_66 = sourceName;
	int PROBE_END_LINE_66 = 66;
	this.sourceName = p_source_name_4385_line_66;
  }

  /**
   * Make the given type expression into an optional type expression,
   * if possible.
   */
  public static JSTypeExpression makeOptionalArg(JSTypeExpression expr) {
    if (expr.isOptionalArg() || expr.isVarArgs()) {
      return expr;
    } else {
      return new JSTypeExpression(
          new Node(Token.EQUALS, expr.root), expr.sourceName);
    }
  }

  /**
   * @return Whether this expression denotes an optional {@code @param}.
   */
  public boolean isOptionalArg() {
    return root.getType() == Token.EQUALS;
  }

  /**
   * @return Whether this expression denotes a rest args {@code @param}.
   */
  public boolean isVarArgs() {
    return root.getType() == Token.ELLIPSIS;
  }

  /**
   * Evaluates the type expression into a {@code JSType} object.
   */
  public JSType evaluate(StaticScope<JSType> scope, JSTypeRegistry registry) {
    int PROBE_START_LINE_100 = 100;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_4390_line_100 = registry;
	com.google.javascript.rhino.Node f_root_4386_line_100 = root;
	String f_source_name_4387_line_100 = sourceName;
	StaticScope<com.google.javascript.rhino.jstype.JSType> p_scope_4389_line_100 = scope;
	JSType jstype_expression_1_expr7_line_100 = p_registry_4390_line_100.createFromTypeNodes(f_root_4386_line_100,
			f_source_name_4387_line_100, p_scope_4389_line_100);
	int PROBE_END_LINE_100 = 100;
	JSType type = jstype_expression_1_expr7_line_100;
    int PROBE_START_LINE_101 = 101;
	com.google.javascript.rhino.Node f_root_4386_line_101 = root;
	com.google.javascript.rhino.jstype.JSType v_type_4391_line_101 = type;
	int PROBE_END_LINE_101 = 101;
	f_root_4386_line_101.setJSType(v_type_4391_line_101);
    int PROBE_START_LINE_102 = 102;
	com.google.javascript.rhino.jstype.JSType v_type_4391_line_102 = type;
	int PROBE_END_LINE_102 = 102;
	return v_type_4391_line_102;
  }

  @Override
  public boolean equals(Object other) {
    int PROBE_START_LINE_107 = 108;
	Object p_other_4392_line_107 = other;
	boolean jstype_expression_1_expr10_line_107 = p_other_4392_line_107 instanceof JSTypeExpression;
	boolean jstype_expression_1_expr9_line_107 = jstype_expression_1_expr10_line_107
			&& ((JSTypeExpression) other).root.isEquivalentTo(root);
	int PROBE_END_LINE_107 = 108;
	return jstype_expression_1_expr9_line_107;
  }

  @Override
  public int hashCode() {
    return root.toStringTree().hashCode();
  }

  /**
   * @return The source for this type expression.  Note that it will not
   * contain an expression if there's an @override tag.
   */
  public Node getRoot() {
    return root;
  }
}
