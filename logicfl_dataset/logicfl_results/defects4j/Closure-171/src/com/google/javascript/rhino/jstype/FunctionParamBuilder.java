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

import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

/**
 * A builder for the Rhino Node representing Function parameters.
 * @author nicksantos@google.com (Nick Santos)
 */
public class FunctionParamBuilder {

  private final JSTypeRegistry registry;
  int PROBE_START_LINE_52 = 52;

private final int q_param_list_191_line_52 = Token.PARAM_LIST;

int PROBE_END_LINE_52 = 52;

private final Node root = new Node(q_param_list_191_line_52);

  public FunctionParamBuilder(JSTypeRegistry registry) {
    int PROBE_START_LINE_55 = 55;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5392_line_55 = registry;
	int PROBE_END_LINE_55 = 55;
	this.registry = p_registry_5392_line_55;
  }

  /**
   * Add parameters of the given type to the end of the param list.
   * @return False if this is called after optional params are added.
   */
  public boolean addRequiredParams(JSType ...types) {
    int PROBE_START_LINE_63 = 65;
	boolean function_param_builder_1_expr5_line_63 = hasOptionalOrVarArgs();
	int PROBE_END_LINE_63 = 65;
	if (function_param_builder_1_expr5_line_63) {
      return false;
    }

    int PROBE_START_LINE_67 = 69;
	com.google.javascript.rhino.jstype.JSType[] p_types_5394_line_67 = types;
	int PROBE_END_LINE_67 = 69;
	for (JSType type : p_types_5394_line_67) {
      int PROBE_START_LINE_68 = 68;
		com.google.javascript.rhino.jstype.JSType v_type_5395_line_68 = type;
		int PROBE_END_LINE_68 = 68;
	newParameter(v_type_5395_line_68);
    }
    return true;
  }

  /**
   * Add optional parameters of the given type to the end of the param list.
   * @param types Types for each optional parameter. The builder will make them
   *     undefine-able.
   * @return False if this is called after var args are added.
   */
  public boolean addOptionalParams(JSType ...types) {
    int PROBE_START_LINE_80 = 82;
	boolean function_param_builder_1_expr7_line_80 = hasVarArgs();
	int PROBE_END_LINE_80 = 82;
	if (function_param_builder_1_expr7_line_80) {
      return false;
    }

    int PROBE_START_LINE_84 = 86;
	com.google.javascript.rhino.jstype.JSType[] p_types_5396_line_84 = types;
	int PROBE_END_LINE_84 = 86;
	for (JSType type : p_types_5396_line_84) {
      int PROBE_START_LINE_85 = 85;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5393_line_85 = registry;
		com.google.javascript.rhino.jstype.JSType v_type_5397_line_85 = type;
		com.google.javascript.rhino.jstype.JSType function_param_builder_1_expr10_line_85 = f_registry_5393_line_85
				.createOptionalType(v_type_5397_line_85);
		com.google.javascript.rhino.Node function_param_builder_1_expr9_line_85 = newParameter(
				function_param_builder_1_expr10_line_85);
		int PROBE_END_LINE_85 = 85;
	function_param_builder_1_expr9_line_85.setOptionalArg(true);
    }
    return true;
  }

  /**
   * Add variable arguments to the end of the parameter list.
   * @return False if this is called after var args are added.
   */
  public boolean addVarArgs(JSType type) {
    int PROBE_START_LINE_95 = 97;
	boolean function_param_builder_1_expr11_line_95 = hasVarArgs();
	int PROBE_END_LINE_95 = 97;
	if (function_param_builder_1_expr11_line_95) {
      return false;
    }

    int PROBE_START_LINE_104 = 106;
	com.google.javascript.rhino.jstype.JSType p_type_5398_line_104 = type;
	boolean function_param_builder_1_expr13_line_104 = p_type_5398_line_104.isEmptyType();
	boolean function_param_builder_1_expr12_line_104 = !function_param_builder_1_expr13_line_104;
	int PROBE_END_LINE_104 = 106;
	// There are two types of variable argument functions:
    // 1) Programmer-defined var args
    // 2) Native bottom types that can accept any argument.
    // For the first one, "undefined" is a valid value for all arguments.
    // For the second, we do not want to cast it up to undefined.
    if (function_param_builder_1_expr12_line_104) {
      int PROBE_START_LINE_105 = 105;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5393_line_105 = registry;
		com.google.javascript.rhino.jstype.JSType p_type_5398_line_105 = type;
		com.google.javascript.rhino.jstype.JSType function_param_builder_1_expr15_line_105 = f_registry_5393_line_105
				.createOptionalType(p_type_5398_line_105);
		int PROBE_END_LINE_105 = 105;
	type = function_param_builder_1_expr15_line_105;
    }
    int PROBE_START_LINE_107 = 107;
	com.google.javascript.rhino.jstype.JSType p_type_5398_line_107 = type;
	com.google.javascript.rhino.Node function_param_builder_1_expr17_line_107 = newParameter(p_type_5398_line_107);
	int PROBE_END_LINE_107 = 107;
	function_param_builder_1_expr17_line_107.setVarArgs(true);
    return true;
  }

  /**
   * Copies the parameter specification from the given node.
   */
  public Node newParameterFromNode(Node n) {
    Node newParam = newParameter(n.getJSType());
    newParam.setVarArgs(n.isVarArgs());
    newParam.setOptionalArg(n.isOptionalArg());
    return newParam;
  }

  /**
   * Copies the parameter specification from the given node,
   * but makes sure it's optional.
   */
  public Node newOptionalParameterFromNode(Node n) {
    Node newParam = newParameterFromNode(n);
    if (!newParam.isVarArgs() && !newParam.isOptionalArg()) {
      newParam.setOptionalArg(true);
    }
    return newParam;
  }

  // Add a parameter to the list with the given type.
  private Node newParameter(JSType type) {
    int PROBE_START_LINE_135 = 135;
	int q_name_191_line_135 = Token.NAME;
	Node function_param_builder_1_expr18_line_135 = Node.newString(q_name_191_line_135, "");
	int PROBE_END_LINE_135 = 135;
	Node paramNode = function_param_builder_1_expr18_line_135;
    int PROBE_START_LINE_136 = 136;
	com.google.javascript.rhino.Node v_param_node_5402_line_136 = paramNode;
	com.google.javascript.rhino.jstype.JSType p_type_5401_line_136 = type;
	int PROBE_END_LINE_136 = 136;
	v_param_node_5402_line_136.setJSType(p_type_5401_line_136);
    int PROBE_START_LINE_137 = 137;
	com.google.javascript.rhino.Node f_root_5391_line_137 = root;
	com.google.javascript.rhino.Node v_param_node_5402_line_137 = paramNode;
	int PROBE_END_LINE_137 = 137;
	f_root_5391_line_137.addChildToBack(v_param_node_5402_line_137);
    int PROBE_START_LINE_138 = 138;
	com.google.javascript.rhino.Node v_param_node_5402_line_138 = paramNode;
	int PROBE_END_LINE_138 = 138;
	return v_param_node_5402_line_138;
  }

  public Node build() {
    int PROBE_START_LINE_142 = 142;
	com.google.javascript.rhino.Node f_root_5391_line_142 = root;
	int PROBE_END_LINE_142 = 142;
	return f_root_5391_line_142;
  }

  private boolean hasOptionalOrVarArgs() {
    int PROBE_START_LINE_146 = 146;
	com.google.javascript.rhino.Node f_root_5391_line_146 = root;
	Node function_param_builder_1_expr21_line_146 = f_root_5391_line_146.getLastChild();
	int PROBE_END_LINE_146 = 146;
	Node lastChild = function_param_builder_1_expr21_line_146;
    int PROBE_START_LINE_147 = 148;
	com.google.javascript.rhino.Node v_last_child_5403_line_147 = lastChild;
	boolean function_param_builder_1_expr23_line_147 = v_last_child_5403_line_147 != null;
	boolean function_param_builder_1_expr22_line_147 = function_param_builder_1_expr23_line_147
			&& (lastChild.isOptionalArg() || lastChild.isVarArgs());
	int PROBE_END_LINE_147 = 148;
	return function_param_builder_1_expr22_line_147;
  }

  public boolean hasVarArgs() {
    int PROBE_START_LINE_152 = 152;
	com.google.javascript.rhino.Node f_root_5391_line_152 = root;
	Node function_param_builder_1_expr24_line_152 = f_root_5391_line_152.getLastChild();
	int PROBE_END_LINE_152 = 152;
	Node lastChild = function_param_builder_1_expr24_line_152;
    int PROBE_START_LINE_153 = 153;
	com.google.javascript.rhino.Node v_last_child_5404_line_153 = lastChild;
	boolean function_param_builder_1_expr26_line_153 = v_last_child_5404_line_153 != null;
	boolean function_param_builder_1_expr27_line_153 = true;
	if (function_param_builder_1_expr26_line_153) {
		com.google.javascript.rhino.Node v_last_child_5404_line_153_v1 = lastChild;
		function_param_builder_1_expr27_line_153 = v_last_child_5404_line_153_v1.isVarArgs();
	}
	boolean function_param_builder_1_expr25_line_153 = function_param_builder_1_expr26_line_153
			&& function_param_builder_1_expr27_line_153;
	int PROBE_END_LINE_153 = 153;
	return function_param_builder_1_expr25_line_153;
  }
}
