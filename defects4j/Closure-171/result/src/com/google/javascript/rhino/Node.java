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
 *   Norris Boyd
 *   Roger Lawrence
 *   Mike McCabe
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

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.SimpleSourceFile;
import com.google.javascript.rhino.jstype.StaticSourceFile;

import java.io.IOException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/**
 * This class implements the root of the intermediate representation.
 *
 */

public class Node implements Cloneable, Serializable {

  private static final long serialVersionUID = 1L;

  public static final int
      JSDOC_INFO_PROP   = 29,     // contains a TokenStream.JSDocInfo object
      VAR_ARGS_NAME     = 30,     // the name node is a variable length
                                  // argument placeholder.
      INCRDECR_PROP      = 32,    // pre or post type of increment/decrement
      QUOTED_PROP        = 36,    // set to indicate a quoted object lit key
      OPT_ARG_NAME       = 37,    // The name node is an optional argument.
      SYNTHETIC_BLOCK_PROP = 38,  // A synthetic block. Used to make
                                  // processing simpler, and does not
                                  // represent a real block in the source.
      EMPTY_BLOCK        = 39,    // Used to indicate BLOCK that replaced
                                  // EMPTY nodes.
      ORIGINALNAME_PROP  = 40,    // The original name of the node, before
                                  // renaming.
      SIDE_EFFECT_FLAGS  = 42,    // Function or constructor call side effect
                                  // flags
      // Coding convention props
      IS_CONSTANT_NAME   = 43,    // The variable or property is constant.
      IS_NAMESPACE       = 46,    // The variable creates a namespace.
      IS_DISPATCHER      = 47,    // The function is a dispatcher function,
                                  // probably generated from Java code, and
                                  // should be resolved to the proper
                                  // overload if possible.
      DIRECTIVES         = 48,    // The ES5 directives on this node.
      DIRECT_EVAL        = 49,    // ES5 distinguishes between direct and
                                  // indirect calls to eval.
      FREE_CALL          = 50,    // A CALL without an explicit "this" value.
      STATIC_SOURCE_FILE = 51,    // A StaticSourceFile indicating the file
                                  // where this node lives.
      LENGTH             = 52,    // The length of the code represented by
                                  // this node.
      INPUT_ID           = 53,    // The id of the input associated with this
                                  // node.
      SLASH_V            = 54,    // Whether a STRING node contains a \v
                                  // vertical tab escape. This is a total hack.
                                  // See comments in IRFactory about this.
      INFERRED_FUNCTION  = 55,    // Marks a function whose parameter types
                                  // have been inferred.
      CHANGE_TIME        = 56,    // For passes that work only on changed funs.
      REFLECTED_OBJECT   = 57,    // An object that's used for goog.object.reflect-style reflection.
      LAST_PROP          = 57;    // Unused in the compiler, but keep for Rhino.

  public static final int   // flags for INCRDECR_PROP
      DECR_FLAG = 0x1,
      POST_FLAG = 0x2;

  private static final String propToString(int propType) {
      switch (propType) {
        case VAR_ARGS_NAME:      return "var_args_name";

        case JSDOC_INFO_PROP:    return "jsdoc_info";

        case INCRDECR_PROP:      return "incrdecr";
        case QUOTED_PROP:        return "quoted";
        case OPT_ARG_NAME:       return "opt_arg";

        case SYNTHETIC_BLOCK_PROP: return "synthetic";
        case EMPTY_BLOCK:        return "empty_block";
        case ORIGINALNAME_PROP:  return "originalname";
        case SIDE_EFFECT_FLAGS:  return "side_effect_flags";

        case IS_CONSTANT_NAME:   return "is_constant_name";
        case IS_NAMESPACE:       return "is_namespace";
        case IS_DISPATCHER:      return "is_dispatcher";
        case DIRECTIVES:         return "directives";
        case DIRECT_EVAL:        return "direct_eval";
        case FREE_CALL:          return "free_call";
        case STATIC_SOURCE_FILE:    return "source_file";
        case INPUT_ID:  return "input_id";
        case LENGTH:    return "length";
        case SLASH_V:   return "slash_v";
        case INFERRED_FUNCTION:   return "inferred";
        case CHANGE_TIME: return "change_time";
        case REFLECTED_OBJECT: return "reflected_object";
        default:
          throw new IllegalStateException("unexpected prop id " + propType);
      }
  }

  private static class NumberNode extends Node {

    private static final long serialVersionUID = 1L;

    NumberNode(double number) {
      super(Token.NUMBER);
      this.number = number;
    }

    public NumberNode(double number, int lineno, int charno) {
      super(Token.NUMBER, lineno, charno);
      this.number = number;
    }

    @Override
    public double getDouble() {
      return this.number;
    }

    @Override
    public void setDouble(double d) {
      this.number = d;
    }

    @Override
    boolean isEquivalentTo(
        Node node, boolean compareJsType, boolean recur, boolean shallow) {
      boolean equiv = super.isEquivalentTo(node, compareJsType, recur, shallow);
      if (equiv) {
        double thisValue = getDouble();
        double thatValue = ((NumberNode) node).getDouble();
        if (thisValue == thatValue) {
          // detect the difference between 0.0 and -0.0.
          return (thisValue != 0.0) || (1 / thisValue == 1 / thatValue);
        }
      }
      return false;
    }

    private double number;
  }

  private static class StringNode extends Node {

    private static final long serialVersionUID = 1L;

    StringNode(int type, String str) {
      super(type);
      int PROBE_START_LINE_194 = 196;
	String p_str_5028_line_194 = str;
	boolean node_1_expr2_line_194 = null == p_str_5028_line_194;
	int PROBE_END_LINE_194 = 196;
	if (node_1_expr2_line_194) {
        throw new IllegalArgumentException("StringNode: str is null");
      }
      int PROBE_START_LINE_197 = 197;
	String p_str_5028_line_197 = str;
	int PROBE_END_LINE_197 = 197;
	this.str = p_str_5028_line_197;
    }

    StringNode(int type, String str, int lineno, int charno) {
      super(type, lineno, charno);
      int PROBE_START_LINE_202 = 204;
	String p_str_5031_line_202 = str;
	boolean node_1_expr7_line_202 = null == p_str_5031_line_202;
	int PROBE_END_LINE_202 = 204;
	if (node_1_expr7_line_202) {
        throw new IllegalArgumentException("StringNode: str is null");
      }
      int PROBE_START_LINE_205 = 205;
	String p_str_5031_line_205 = str;
	int PROBE_END_LINE_205 = 205;
	this.str = p_str_5031_line_205;
    }

    /**
     * returns the string content.
     * @return non null.
     */
    @Override
    public String getString() {
      int PROBE_START_LINE_214 = 214;
		String f_str_5029_line_214 = this.str;
		int PROBE_END_LINE_214 = 214;
	return f_str_5029_line_214;
    }

    /**
     * sets the string content.
     * @param str the new value.  Non null.
     */
    @Override
    public void setString(String str) {
      if (null == str) {
        throw new IllegalArgumentException("StringNode: str is null");
      }
      this.str = str;
    }

    @Override
    boolean isEquivalentTo(
        Node node, boolean compareJsType, boolean recur, boolean shallow) {
      int PROBE_START_LINE_232 = 233;
			com.google.javascript.rhino.Node p_node_5035_line_232 = node;
			boolean p_compare_js_type_5036_line_232 = compareJsType;
			boolean p_recur_5037_line_232 = recur;
			boolean p_shallow_5038_line_232 = shallow;
			boolean node_1_expr15_line_232 = super.isEquivalentTo(p_node_5035_line_232, p_compare_js_type_5036_line_232,
					p_recur_5037_line_232, p_shallow_5038_line_232);
			boolean node_1_expr14_line_232 = node_1_expr15_line_232 && this.str.equals(((StringNode) node).str);
			boolean node_1_expr13_line_232 = (node_1_expr14_line_232);
			int PROBE_END_LINE_232 = 233;
	return node_1_expr13_line_232;
    }

    /**
     * If the property is not defined, this was not a quoted key.  The
     * QUOTED_PROP int property is only assigned to STRING tokens used as
     * object lit keys.
     * @return true if this was a quoted string key in an object literal.
     */
    @Override
    public boolean isQuotedString() {
      int PROBE_START_LINE_244 = 244;
		int f_quoted_prop_5039_line_244 = QUOTED_PROP;
		boolean node_1_expr16_line_244 = getBooleanProp(f_quoted_prop_5039_line_244);
		int PROBE_END_LINE_244 = 244;
	return node_1_expr16_line_244;
    }

    /**
     * This should only be called for STRING nodes created in object lits.
     */
    @Override
    public void setQuotedString() {
      putBooleanProp(QUOTED_PROP, true);
    }

    private String str;
  }

  // PropListItems must be immutable so that they can be shared.
  private interface PropListItem {
    int getType();
    PropListItem getNext();
    PropListItem chain(PropListItem next);
    Object getObjectValue();
    int getIntValue();
  }

  private abstract static class AbstractPropListItem
      implements PropListItem, Serializable {
    private static final long serialVersionUID = 1L;

    private final PropListItem next;
    private final int propType;

    AbstractPropListItem(int propType, PropListItem next) {
      int PROBE_START_LINE_275 = 275;
		int p_prop_type_5041_line_275 = propType;
		int PROBE_END_LINE_275 = 275;
	this.propType = p_prop_type_5041_line_275;
      int PROBE_START_LINE_276 = 276;
	com.google.javascript.rhino.Node.PropListItem p_next_5042_line_276 = next;
	int PROBE_END_LINE_276 = 276;
	this.next = p_next_5042_line_276;
    }

    @Override
    public int getType() {
      int PROBE_START_LINE_281 = 281;
		int f_prop_type_5043_line_281 = propType;
		int PROBE_END_LINE_281 = 281;
	return f_prop_type_5043_line_281;
    }

    @Override
    public PropListItem getNext() {
      int PROBE_START_LINE_286 = 286;
		com.google.javascript.rhino.Node.PropListItem f_next_5044_line_286 = next;
		int PROBE_END_LINE_286 = 286;
	return f_next_5044_line_286;
    }

    @Override
    public abstract PropListItem chain(PropListItem next);
  }

  // A base class for Object storing props
  private static class ObjectPropListItem
      extends AbstractPropListItem {
    private static final long serialVersionUID = 1L;

    private final Object objectValue;

    ObjectPropListItem(int propType, Object objectValue, PropListItem next) {
      super(propType, next);
      int PROBE_START_LINE_302 = 302;
	Object p_object_value_5047_line_302 = objectValue;
	int PROBE_END_LINE_302 = 302;
	this.objectValue = p_object_value_5047_line_302;
    }

    @Override
    public int getIntValue() {
      throw new UnsupportedOperationException();
    }

    @Override
    public Object getObjectValue() {
      int PROBE_START_LINE_312 = 312;
		Object f_object_value_5049_line_312 = objectValue;
		int PROBE_END_LINE_312 = 312;
	return f_object_value_5049_line_312;
    }

    @Override
    public String toString() {
      return objectValue == null ? "null" : objectValue.toString();
    }

    @Override
    public PropListItem chain(PropListItem next) {
      return new ObjectPropListItem(getType(), objectValue, next);
    }
  }

  // A base class for int storing props
  private static class IntPropListItem extends AbstractPropListItem {
    private static final long serialVersionUID = 1L;

    final int intValue;

    IntPropListItem(int propType, int intValue, PropListItem next) {
      super(propType, next);
      int PROBE_START_LINE_334 = 334;
	int p_int_value_5052_line_334 = intValue;
	int PROBE_END_LINE_334 = 334;
	this.intValue = p_int_value_5052_line_334;
    }

    @Override
    public int getIntValue() {
      int PROBE_START_LINE_339 = 339;
		int f_int_value_5054_line_339 = intValue;
		int PROBE_END_LINE_339 = 339;
	return f_int_value_5054_line_339;
    }

    @Override
    public Object getObjectValue() {
      throw new UnsupportedOperationException();
    }

    @Override
    public String toString() {
      return String.valueOf(intValue);
    }

    @Override
    public PropListItem chain(PropListItem next) {
      int PROBE_START_LINE_354 = 354;
		int node_1_expr32_line_354 = getType();
		int f_int_value_5054_line_354 = intValue;
		com.google.javascript.rhino.Node.PropListItem p_next_5055_line_354 = next;
		int PROBE_END_LINE_354 = 354;
	return new IntPropListItem(node_1_expr32_line_354, f_int_value_5054_line_354, p_next_5055_line_354);
    }
  }

  public Node(int nodeType) {
    int PROBE_START_LINE_359 = 359;
	int p_node_type_5056_line_359 = nodeType;
	int PROBE_END_LINE_359 = 359;
	type = p_node_type_5056_line_359;
    parent = null;
    int PROBE_START_LINE_361 = 361;
	int node_1_expr36_line_361 = -1;
	int PROBE_END_LINE_361 = 361;
	sourcePosition = node_1_expr36_line_361;
  }

  public Node(int nodeType, Node child) {
    Preconditions.checkArgument(child.parent == null,
        "new child has existing parent");
    Preconditions.checkArgument(child.next == null,
        "new child has existing sibling");

    type = nodeType;
    parent = null;
    first = last = child;
    child.next = null;
    child.parent = this;
    sourcePosition = -1;
  }

  public Node(int nodeType, Node left, Node right) {
    int PROBE_START_LINE_379 = 380;
	com.google.javascript.rhino.Node p_left_5063_line_379 = left;
	com.google.javascript.rhino.Node q_parent_145_line_379 = p_left_5063_line_379.parent;
	boolean node_1_expr38_line_379 = q_parent_145_line_379 == null;
	int PROBE_END_LINE_379 = 380;
	Preconditions.checkArgument(node_1_expr38_line_379,
        "first new child has existing parent");
    int PROBE_START_LINE_381 = 382;
	com.google.javascript.rhino.Node p_left_5063_line_381 = left;
	com.google.javascript.rhino.Node q_next_146_line_381 = p_left_5063_line_381.next;
	boolean node_1_expr40_line_381 = q_next_146_line_381 == null;
	int PROBE_END_LINE_381 = 382;
	Preconditions.checkArgument(node_1_expr40_line_381,
        "first new child has existing sibling");
    int PROBE_START_LINE_383 = 384;
	com.google.javascript.rhino.Node p_right_5064_line_383 = right;
	com.google.javascript.rhino.Node q_parent_147_line_383 = p_right_5064_line_383.parent;
	boolean node_1_expr42_line_383 = q_parent_147_line_383 == null;
	int PROBE_END_LINE_383 = 384;
	Preconditions.checkArgument(node_1_expr42_line_383,
        "second new child has existing parent");
    int PROBE_START_LINE_385 = 386;
	com.google.javascript.rhino.Node p_right_5064_line_385 = right;
	com.google.javascript.rhino.Node q_next_148_line_385 = p_right_5064_line_385.next;
	boolean node_1_expr44_line_385 = q_next_148_line_385 == null;
	int PROBE_END_LINE_385 = 386;
	Preconditions.checkArgument(node_1_expr44_line_385,
        "second new child has existing sibling");
    int PROBE_START_LINE_387 = 387;
	int p_node_type_5062_line_387 = nodeType;
	int PROBE_END_LINE_387 = 387;
	type = p_node_type_5062_line_387;
    parent = null;
    int PROBE_START_LINE_389 = 389;
	com.google.javascript.rhino.Node p_left_5063_line_389 = left;
	int PROBE_END_LINE_389 = 389;
	first = p_left_5063_line_389;
    int PROBE_START_LINE_390 = 390;
	com.google.javascript.rhino.Node p_right_5064_line_390 = right;
	int PROBE_END_LINE_390 = 390;
	last = p_right_5064_line_390;
    int PROBE_START_LINE_391 = 391;
	com.google.javascript.rhino.Node p_right_5064_line_391 = right;
	int PROBE_END_LINE_391 = 391;
	left.next = p_right_5064_line_391;
    left.parent = this;
    right.next = null;
    right.parent = this;
    int PROBE_START_LINE_395 = 395;
	int node_1_expr56_line_395 = -1;
	int PROBE_END_LINE_395 = 395;
	sourcePosition = node_1_expr56_line_395;
  }

  public Node(int nodeType, Node left, Node mid, Node right) {
    Preconditions.checkArgument(left.parent == null);
    Preconditions.checkArgument(left.next == null);
    Preconditions.checkArgument(mid.parent == null);
    Preconditions.checkArgument(mid.next == null);
    Preconditions.checkArgument(right.parent == null);
    Preconditions.checkArgument(right.next == null);
    type = nodeType;
    parent = null;
    first = left;
    last = right;
    left.next = mid;
    left.parent = this;
    mid.next = right;
    mid.parent = this;
    right.next = null;
    right.parent = this;
    sourcePosition = -1;
  }

  public Node(int nodeType, Node left, Node mid, Node mid2, Node right) {
    Preconditions.checkArgument(left.parent == null);
    Preconditions.checkArgument(left.next == null);
    Preconditions.checkArgument(mid.parent == null);
    Preconditions.checkArgument(mid.next == null);
    Preconditions.checkArgument(mid2.parent == null);
    Preconditions.checkArgument(mid2.next == null);
    Preconditions.checkArgument(right.parent == null);
    Preconditions.checkArgument(right.next == null);
    type = nodeType;
    parent = null;
    first = left;
    last = right;
    left.next = mid;
    left.parent = this;
    mid.next = mid2;
    mid.parent = this;
    mid2.next = right;
    mid2.parent = this;
    right.next = null;
    right.parent = this;
    sourcePosition = -1;
  }

  public Node(int nodeType, int lineno, int charno) {
    int PROBE_START_LINE_443 = 443;
	int p_node_type_5076_line_443 = nodeType;
	int PROBE_END_LINE_443 = 443;
	type = p_node_type_5076_line_443;
    parent = null;
    int PROBE_START_LINE_445 = 445;
	int p_lineno_5077_line_445 = lineno;
	int p_charno_5078_line_445 = charno;
	int node_1_expr60_line_445 = mergeLineCharNo(p_lineno_5077_line_445, p_charno_5078_line_445);
	int PROBE_END_LINE_445 = 445;
	sourcePosition = node_1_expr60_line_445;
  }

  public Node(int nodeType, Node child, int lineno, int charno) {
    this(nodeType, child);
    sourcePosition = mergeLineCharNo(lineno, charno);
  }

  public Node(int nodeType, Node left, Node right, int lineno, int charno) {
    this(nodeType, left, right);
    sourcePosition = mergeLineCharNo(lineno, charno);
  }

  public Node(int nodeType, Node left, Node mid, Node right,
      int lineno, int charno) {
    this(nodeType, left, mid, right);
    sourcePosition = mergeLineCharNo(lineno, charno);
  }

  public Node(int nodeType, Node left, Node mid, Node mid2, Node right,
      int lineno, int charno) {
    this(nodeType, left, mid, mid2, right);
    sourcePosition = mergeLineCharNo(lineno, charno);
  }

  public Node(int nodeType, Node[] children, int lineno, int charno) {
    this(nodeType, children);
    sourcePosition = mergeLineCharNo(lineno, charno);
  }

  public Node(int nodeType, Node[] children) {
    this.type = nodeType;
    parent = null;
    if (children.length != 0) {
      this.first = children[0];
      this.last = children[children.length - 1];

      for (int i = 1; i < children.length; i++) {
        if (null != children[i - 1].next) {
          // fail early on loops. implies same node in array twice
          throw new IllegalArgumentException("duplicate child");
        }
        children[i - 1].next = children[i];
        Preconditions.checkArgument(children[i - 1].parent == null);
        children[i - 1].parent = this;
      }
      Preconditions.checkArgument(children[children.length - 1].parent == null);
      children[children.length - 1].parent = this;

      if (null != this.last.next) {
        // fail early on loops. implies same node in array twice
        throw new IllegalArgumentException("duplicate child");
      }
    }
  }

  public static Node newNumber(double number) {
    return new NumberNode(number);
  }

  public static Node newNumber(double number, int lineno, int charno) {
    return new NumberNode(number, lineno, charno);
  }

  public static Node newString(String str) {
    return new StringNode(Token.STRING, str);
  }

  public static Node newString(int type, String str) {
    int PROBE_START_LINE_514 = 514;
	int p_type_5112_line_514 = type;
	String p_str_5113_line_514 = str;
	int PROBE_END_LINE_514 = 514;
	return new StringNode(p_type_5112_line_514, p_str_5113_line_514);
  }

  public static Node newString(String str, int lineno, int charno) {
    int PROBE_START_LINE_518 = 518;
	int q_string_149_line_518 = Token.STRING;
	String p_str_5114_line_518 = str;
	int p_lineno_5115_line_518 = lineno;
	int p_charno_5116_line_518 = charno;
	int PROBE_END_LINE_518 = 518;
	return new StringNode(q_string_149_line_518, p_str_5114_line_518, p_lineno_5115_line_518, p_charno_5116_line_518);
  }

  public static Node newString(int type, String str, int lineno, int charno) {
    return new StringNode(type, str, lineno, charno);
  }

  public int getType() {
    int PROBE_START_LINE_526 = 526;
	int f_type_5057_line_526 = type;
	int PROBE_END_LINE_526 = 526;
	return f_type_5057_line_526;
  }

  public void setType(int type) {
    int PROBE_START_LINE_530 = 530;
	int p_type_5121_line_530 = type;
	int PROBE_END_LINE_530 = 530;
	this.type = p_type_5121_line_530;
  }

  public boolean hasChildren() {
    int PROBE_START_LINE_534 = 534;
	com.google.javascript.rhino.Node f_first_5065_line_534 = first;
	boolean node_1_expr66_line_534 = f_first_5065_line_534 != null;
	int PROBE_END_LINE_534 = 534;
	return node_1_expr66_line_534;
  }

  public Node getFirstChild() {
    int PROBE_START_LINE_538 = 538;
	com.google.javascript.rhino.Node f_first_5065_line_538 = first;
	int PROBE_END_LINE_538 = 538;
	return f_first_5065_line_538;
  }

  public Node getLastChild() {
    int PROBE_START_LINE_542 = 542;
	com.google.javascript.rhino.Node f_last_5066_line_542 = last;
	int PROBE_END_LINE_542 = 542;
	return f_last_5066_line_542;
  }

  public Node getNext() {
    int PROBE_START_LINE_546 = 546;
	com.google.javascript.rhino.Node f_next_5122_line_546 = next;
	int PROBE_END_LINE_546 = 546;
	return f_next_5122_line_546;
  }

  public Node getChildBefore(Node child) {
    int PROBE_START_LINE_550 = 552;
	com.google.javascript.rhino.Node p_child_5123_line_550 = child;
	com.google.javascript.rhino.Node f_first_5065_line_550 = first;
	boolean node_1_expr67_line_550 = p_child_5123_line_550 == f_first_5065_line_550;
	int PROBE_END_LINE_550 = 552;
	if (node_1_expr67_line_550) {
      return null;
    }
    int PROBE_START_LINE_553 = 553;
	Node f_first_5065_line_553 = first;
	int PROBE_END_LINE_553 = 553;
	Node n = f_first_5065_line_553;
    while (true) {
      int PROBE_START_LINE_554 = 554;
		com.google.javascript.rhino.Node v_n_5124_line_554 = n;
		com.google.javascript.rhino.Node q_next_149_line_554 = v_n_5124_line_554.next;
		com.google.javascript.rhino.Node p_child_5123_line_554 = child;
		boolean node_1_expr68_line_554 = q_next_149_line_554 != p_child_5123_line_554;
		if (!(node_1_expr68_line_554)) {
			break;
		}
		int PROBE_END_LINE_554 = 554;
	n = n.next;
      if (n == null) {
        throw new RuntimeException("node is not a child");
      }
    }
    int PROBE_START_LINE_560 = 560;
	com.google.javascript.rhino.Node v_n_5124_line_560 = n;
	int PROBE_END_LINE_560 = 560;
	return v_n_5124_line_560;
  }

  public Node getChildAtIndex(int i) {
    int PROBE_START_LINE_564 = 564;
	Node f_first_5065_line_564 = first;
	int PROBE_END_LINE_564 = 564;
	Node n = f_first_5065_line_564;
    while (true) {
      int PROBE_START_LINE_565 = 565;
		int p_i_5125_line_565 = i;
		boolean node_1_expr69_line_565 = p_i_5125_line_565 > 0;
		if (!(node_1_expr69_line_565)) {
			break;
		}
		int PROBE_END_LINE_565 = 565;
		int PROBE_START_LINE_566 = 566;
		com.google.javascript.rhino.Node v_n_5126_line_566 = n;
		com.google.javascript.rhino.Node q_next_150_line_566 = v_n_5126_line_566.next;
		int PROBE_END_LINE_566 = 566;
	n = q_next_150_line_566;
      i--;
    }
    int PROBE_START_LINE_569 = 569;
	com.google.javascript.rhino.Node v_n_5126_line_569 = n;
	int PROBE_END_LINE_569 = 569;
	return v_n_5126_line_569;
  }

  public int getIndexOfChild(Node child) {
    Node n = first;
    int i = 0;
    while (n != null) {
      if (child == n) {
        return i;
      }

      n = n.next;
      i++;
    }
    return -1;
  }

  public Node getLastSibling() {
    Node n = this;
    while (n.next != null) {
      n = n.next;
    }
    return n;
  }

  public void addChildToFront(Node child) {
    int PROBE_START_LINE_595 = 595;
	com.google.javascript.rhino.Node p_child_5128_line_595 = child;
	com.google.javascript.rhino.Node q_parent_151_line_595 = p_child_5128_line_595.parent;
	boolean node_1_expr73_line_595 = q_parent_151_line_595 == null;
	int PROBE_END_LINE_595 = 595;
	Preconditions.checkArgument(node_1_expr73_line_595);
    int PROBE_START_LINE_596 = 596;
	com.google.javascript.rhino.Node p_child_5128_line_596 = child;
	com.google.javascript.rhino.Node q_next_152_line_596 = p_child_5128_line_596.next;
	boolean node_1_expr75_line_596 = q_next_152_line_596 == null;
	int PROBE_END_LINE_596 = 596;
	Preconditions.checkArgument(node_1_expr75_line_596);
    child.parent = this;
    int PROBE_START_LINE_598 = 598;
	com.google.javascript.rhino.Node f_first_5065_line_598 = first;
	int PROBE_END_LINE_598 = 598;
	child.next = f_first_5065_line_598;
    int PROBE_START_LINE_599 = 599;
	com.google.javascript.rhino.Node p_child_5128_line_599 = child;
	int PROBE_END_LINE_599 = 599;
	first = p_child_5128_line_599;
    int PROBE_START_LINE_600 = 602;
	com.google.javascript.rhino.Node f_last_5066_line_600 = last;
	boolean node_1_expr80_line_600 = f_last_5066_line_600 == null;
	int PROBE_END_LINE_600 = 602;
	if (node_1_expr80_line_600) {
      int PROBE_START_LINE_601 = 601;
		com.google.javascript.rhino.Node p_child_5128_line_601 = child;
		int PROBE_END_LINE_601 = 601;
	last = p_child_5128_line_601;
    }
  }

  public void addChildToBack(Node child) {
    int PROBE_START_LINE_606 = 606;
	com.google.javascript.rhino.Node p_child_5129_line_606 = child;
	com.google.javascript.rhino.Node q_parent_153_line_606 = p_child_5129_line_606.parent;
	boolean node_1_expr83_line_606 = q_parent_153_line_606 == null;
	int PROBE_END_LINE_606 = 606;
	Preconditions.checkArgument(node_1_expr83_line_606);
    int PROBE_START_LINE_607 = 607;
	com.google.javascript.rhino.Node p_child_5129_line_607 = child;
	com.google.javascript.rhino.Node q_next_154_line_607 = p_child_5129_line_607.next;
	boolean node_1_expr85_line_607 = q_next_154_line_607 == null;
	int PROBE_END_LINE_607 = 607;
	Preconditions.checkArgument(node_1_expr85_line_607);
    child.parent = this;
    child.next = null;
    int PROBE_START_LINE_610 = 613;
	com.google.javascript.rhino.Node f_last_5066_line_610 = last;
	boolean node_1_expr89_line_610 = f_last_5066_line_610 == null;
	int PROBE_END_LINE_610 = 613;
	if (node_1_expr89_line_610) {
      int PROBE_START_LINE_611 = 611;
		com.google.javascript.rhino.Node p_child_5129_line_611 = child;
		int PROBE_END_LINE_611 = 611;
	first = last = p_child_5129_line_611;
      return;
    }
    int PROBE_START_LINE_614 = 614;
	com.google.javascript.rhino.Node p_child_5129_line_614 = child;
	int PROBE_END_LINE_614 = 614;
	last.next = p_child_5129_line_614;
    int PROBE_START_LINE_615 = 615;
	com.google.javascript.rhino.Node p_child_5129_line_615 = child;
	int PROBE_END_LINE_615 = 615;
	last = p_child_5129_line_615;
  }

  public void addChildrenToFront(Node children) {
    for (Node child = children; child != null; child = child.next) {
      Preconditions.checkArgument(child.parent == null);
      child.parent = this;
    }
    Node lastSib = children.getLastSibling();
    lastSib.next = first;
    first = children;
    if (last == null) {
      last = lastSib;
    }
  }

  public void addChildrenToBack(Node children) {
    addChildrenAfter(children, getLastChild());
  }

  /**
   * Add 'child' before 'node'.
   */
  public void addChildBefore(Node newChild, Node node) {
    Preconditions.checkArgument(node != null && node.parent == this,
        "The existing child node of the parent should not be null.");
    Preconditions.checkArgument(newChild.next == null,
        "The new child node has siblings.");
    Preconditions.checkArgument(newChild.parent == null,
        "The new child node already has a parent.");
    if (first == node) {
      newChild.parent = this;
      newChild.next = first;
      first = newChild;
      return;
    }
    Node prev = getChildBefore(node);
    addChildAfter(newChild, prev);
  }

  /**
   * Add 'child' after 'node'.
   */
  public void addChildAfter(Node newChild, Node node) {
    Preconditions.checkArgument(newChild.next == null,
        "The new child node has siblings.");
    addChildrenAfter(newChild, node);
  }

  /**
   * Add all children after 'node'.
   */
  public void addChildrenAfter(Node children, Node node) {
    Preconditions.checkArgument(node == null || node.parent == this);
    for (Node child = children; child != null; child = child.next) {
      Preconditions.checkArgument(child.parent == null);
      child.parent = this;
    }

    Node lastSibling = children.getLastSibling();
    if (node != null) {
      Node oldNext = node.next;
      node.next = children;
      lastSibling.next = oldNext;
      if (node == last) {
        last = lastSibling;
      }
    } else {
      // Append to the beginning.
      if (first != null) {
        lastSibling.next = first;
      } else {
        last = lastSibling;
      }
      first = children;
    }
  }

  /**
   * Detach a child from its parent and siblings.
   */
  public void removeChild(Node child) {
    int PROBE_START_LINE_697 = 697;
	com.google.javascript.rhino.Node p_child_5138_line_697 = child;
	Node node_1_expr94_line_697 = getChildBefore(p_child_5138_line_697);
	int PROBE_END_LINE_697 = 697;
	Node prev = node_1_expr94_line_697;
    int PROBE_START_LINE_698 = 702;
	com.google.javascript.rhino.Node v_prev_5139_line_698 = prev;
	boolean node_1_expr95_line_698 = v_prev_5139_line_698 == null;
	int PROBE_END_LINE_698 = 702;
	if (node_1_expr95_line_698) {
      first = first.next;
    } else {
      int PROBE_START_LINE_701 = 701;
		com.google.javascript.rhino.Node p_child_5138_line_701 = child;
		com.google.javascript.rhino.Node q_next_157_line_701 = p_child_5138_line_701.next;
		int PROBE_END_LINE_701 = 701;
	prev.next = q_next_157_line_701;
    }
    int PROBE_START_LINE_703 = 705;
	com.google.javascript.rhino.Node p_child_5138_line_703 = child;
	com.google.javascript.rhino.Node f_last_5066_line_703 = last;
	boolean node_1_expr97_line_703 = p_child_5138_line_703 == f_last_5066_line_703;
	int PROBE_END_LINE_703 = 705;
	if (node_1_expr97_line_703) {
      int PROBE_START_LINE_704 = 704;
		com.google.javascript.rhino.Node v_prev_5139_line_704 = prev;
		int PROBE_END_LINE_704 = 704;
	last = v_prev_5139_line_704;
    }
    child.next = null;
    child.parent = null;
  }

  /**
   * Detaches child from Node and replaces it with newChild.
   */
  public void replaceChild(Node child, Node newChild) {
    Preconditions.checkArgument(newChild.next == null,
        "The new child node has siblings.");
    Preconditions.checkArgument(newChild.parent == null,
        "The new child node already has a parent.");

    // Copy over important information.
    newChild.copyInformationFrom(child);

    newChild.next = child.next;
    newChild.parent = this;
    if (child == first) {
      first = newChild;
    } else {
      Node prev = getChildBefore(child);
      prev.next = newChild;
    }
    if (child == last) {
      last = newChild;
    }
    child.next = null;
    child.parent = null;
  }

  public void replaceChildAfter(Node prevChild, Node newChild) {
    Preconditions.checkArgument(prevChild.parent == this,
      "prev is not a child of this node.");

    Preconditions.checkArgument(newChild.next == null,
        "The new child node has siblings.");
    Preconditions.checkArgument(newChild.parent == null,
        "The new child node already has a parent.");

    // Copy over important information.
    newChild.copyInformationFrom(prevChild);

    Node child = prevChild.next;
    newChild.next = child.next;
    newChild.parent = this;
    prevChild.next = newChild;
    if (child == last) {
      last = newChild;
    }
    child.next = null;
    child.parent = null;
  }

  @VisibleForTesting
  PropListItem lookupProperty(int propType) {
    int PROBE_START_LINE_762 = 762;
	PropListItem f_prop_list_head_5146_line_762 = propListHead;
	int PROBE_END_LINE_762 = 762;
	PropListItem x = f_prop_list_head_5146_line_762;
    while (true) {
      int PROBE_START_LINE_763 = 763;
		com.google.javascript.rhino.Node.PropListItem v_x_5145_line_763 = x;
		boolean node_1_expr102_line_763 = v_x_5145_line_763 != null;
		boolean node_1_expr103_line_763 = true;
		if (node_1_expr102_line_763) {
			int p_prop_type_5144_line_763 = propType;
			com.google.javascript.rhino.Node.PropListItem v_x_5145_line_763_v1 = x;
			int node_1_expr104_line_763 = v_x_5145_line_763_v1.getType();
			node_1_expr103_line_763 = p_prop_type_5144_line_763 != node_1_expr104_line_763;
		}
		boolean node_1_expr101_line_763 = node_1_expr102_line_763 && node_1_expr103_line_763;
		if (!(node_1_expr101_line_763)) {
			break;
		}
		int PROBE_END_LINE_763 = 763;
		int PROBE_START_LINE_764 = 764;
		com.google.javascript.rhino.Node.PropListItem v_x_5145_line_764 = x;
		com.google.javascript.rhino.Node.PropListItem node_1_expr106_line_764 = v_x_5145_line_764.getNext();
		int PROBE_END_LINE_764 = 764;
	x = node_1_expr106_line_764;
    }
    int PROBE_START_LINE_766 = 766;
	com.google.javascript.rhino.Node.PropListItem v_x_5145_line_766 = x;
	int PROBE_END_LINE_766 = 766;
	return v_x_5145_line_766;
  }

  /**
   * Clone the properties from the provided node without copying
   * the property object.  The receiving node may not have any
   * existing properties.
   * @param other The node to clone properties from.
   * @return this node.
   */
  public Node clonePropsFrom(Node other) {
    int PROBE_START_LINE_777 = 778;
	com.google.javascript.rhino.Node.PropListItem f_prop_list_head_5146_line_777 = this.propListHead;
	boolean node_1_expr108_line_777 = f_prop_list_head_5146_line_777 == null;
	int PROBE_END_LINE_777 = 778;
	Preconditions.checkState(node_1_expr108_line_777,
        "Node has existing properties.");
    int PROBE_START_LINE_779 = 779;
	com.google.javascript.rhino.Node p_other_5147_line_779 = other;
	com.google.javascript.rhino.Node.PropListItem q_prop_list_head_159_line_779 = p_other_5147_line_779.propListHead;
	int PROBE_END_LINE_779 = 779;
	this.propListHead = q_prop_list_head_159_line_779;
    return this;
  }

  public void removeProp(int propType) {
    int PROBE_START_LINE_784 = 784;
	com.google.javascript.rhino.Node.PropListItem f_prop_list_head_5146_line_784 = propListHead;
	int p_prop_type_5148_line_784 = propType;
	PropListItem node_1_expr115_line_784 = removeProp(f_prop_list_head_5146_line_784, p_prop_type_5148_line_784);
	int PROBE_END_LINE_784 = 784;
	PropListItem result = node_1_expr115_line_784;
    int PROBE_START_LINE_785 = 787;
	com.google.javascript.rhino.Node.PropListItem v_result_5149_line_785 = result;
	com.google.javascript.rhino.Node.PropListItem f_prop_list_head_5146_line_785 = propListHead;
	boolean node_1_expr116_line_785 = v_result_5149_line_785 != f_prop_list_head_5146_line_785;
	int PROBE_END_LINE_785 = 787;
	if (node_1_expr116_line_785) {
      int PROBE_START_LINE_786 = 786;
		com.google.javascript.rhino.Node.PropListItem v_result_5149_line_786 = result;
		int PROBE_END_LINE_786 = 786;
	propListHead = v_result_5149_line_786;
    }
  }

  /**
   * @param item The item to inspect
   * @param propType The property to look for
   * @return The replacement list if the property was removed, or
   *   'item' otherwise.
   */
  private PropListItem removeProp(PropListItem item, int propType) {
    int PROBE_START_LINE_797 = 808;
	com.google.javascript.rhino.Node.PropListItem p_item_5150_line_797 = item;
	boolean node_1_expr118_line_797 = p_item_5150_line_797 == null;
	int PROBE_END_LINE_797 = 808;
	if (node_1_expr118_line_797) {
      return null;
    } else {
		int PROBE_START_LINE_799 = 808;
		com.google.javascript.rhino.Node.PropListItem p_item_5150_line_799 = item;
		int node_1_expr120_line_799 = p_item_5150_line_799.getType();
		int p_prop_type_5151_line_799 = propType;
		boolean node_1_expr119_line_799 = node_1_expr120_line_799 == p_prop_type_5151_line_799;
		int PROBE_END_LINE_799 = 808;
		if (node_1_expr119_line_799) {
			int PROBE_START_LINE_800 = 800;
			com.google.javascript.rhino.Node.PropListItem p_item_5150_line_800 = item;
			com.google.javascript.rhino.Node.PropListItem node_1_expr121_line_800 = p_item_5150_line_800.getNext();
			int PROBE_END_LINE_800 = 800;
			return node_1_expr121_line_800;
		} else {
			int PROBE_START_LINE_802 = 802;
			com.google.javascript.rhino.Node.PropListItem p_item_5150_line_802 = item;
			com.google.javascript.rhino.Node.PropListItem node_1_expr123_line_802 = p_item_5150_line_802.getNext();
			int p_prop_type_5151_line_802 = propType;
			PropListItem node_1_expr122_line_802 = removeProp(node_1_expr123_line_802, p_prop_type_5151_line_802);
			int PROBE_END_LINE_802 = 802;
			PropListItem result = node_1_expr122_line_802;
			int PROBE_START_LINE_803 = 807;
			com.google.javascript.rhino.Node.PropListItem v_result_5152_line_803 = result;
			com.google.javascript.rhino.Node.PropListItem p_item_5150_line_803 = item;
			com.google.javascript.rhino.Node.PropListItem node_1_expr125_line_803 = p_item_5150_line_803.getNext();
			boolean node_1_expr124_line_803 = v_result_5152_line_803 != node_1_expr125_line_803;
			int PROBE_END_LINE_803 = 807;
			if (node_1_expr124_line_803) {
				int PROBE_START_LINE_804 = 804;
				com.google.javascript.rhino.Node.PropListItem p_item_5150_line_804 = item;
				com.google.javascript.rhino.Node.PropListItem v_result_5152_line_804 = result;
				com.google.javascript.rhino.Node.PropListItem node_1_expr126_line_804 = p_item_5150_line_804
						.chain(v_result_5152_line_804);
				int PROBE_END_LINE_804 = 804;
				return node_1_expr126_line_804;
			} else {
				int PROBE_START_LINE_806 = 806;
				com.google.javascript.rhino.Node.PropListItem p_item_5150_line_806 = item;
				int PROBE_END_LINE_806 = 806;
				return p_item_5150_line_806;
			}
		}
	}
  }

  public Object getProp(int propType) {
    int PROBE_START_LINE_812 = 812;
	int p_prop_type_5153_line_812 = propType;
	PropListItem node_1_expr127_line_812 = lookupProperty(p_prop_type_5153_line_812);
	int PROBE_END_LINE_812 = 812;
	PropListItem item = node_1_expr127_line_812;
    int PROBE_START_LINE_813 = 815;
	com.google.javascript.rhino.Node.PropListItem v_item_5154_line_813 = item;
	boolean node_1_expr128_line_813 = v_item_5154_line_813 == null;
	int PROBE_END_LINE_813 = 815;
	if (node_1_expr128_line_813) {
      return null;
    }
    int PROBE_START_LINE_816 = 816;
	com.google.javascript.rhino.Node.PropListItem v_item_5154_line_816 = item;
	Object node_1_expr129_line_816 = v_item_5154_line_816.getObjectValue();
	int PROBE_END_LINE_816 = 816;
	return node_1_expr129_line_816;
  }

  public boolean getBooleanProp(int propType) {
    int PROBE_START_LINE_820 = 820;
	int p_prop_type_5155_line_820 = propType;
	int node_1_expr131_line_820 = getIntProp(p_prop_type_5155_line_820);
	boolean node_1_expr130_line_820 = node_1_expr131_line_820 != 0;
	int PROBE_END_LINE_820 = 820;
	return node_1_expr130_line_820;
  }

  /**
   * Returns the integer value for the property, or 0 if the property
   * is not defined.
   */
  public int getIntProp(int propType) {
    int PROBE_START_LINE_828 = 828;
	int p_prop_type_5156_line_828 = propType;
	PropListItem node_1_expr132_line_828 = lookupProperty(p_prop_type_5156_line_828);
	int PROBE_END_LINE_828 = 828;
	PropListItem item = node_1_expr132_line_828;
    int PROBE_START_LINE_829 = 831;
	com.google.javascript.rhino.Node.PropListItem v_item_5157_line_829 = item;
	boolean node_1_expr133_line_829 = v_item_5157_line_829 == null;
	int PROBE_END_LINE_829 = 831;
	if (node_1_expr133_line_829) {
      return 0;
    }
    int PROBE_START_LINE_832 = 832;
	com.google.javascript.rhino.Node.PropListItem v_item_5157_line_832 = item;
	int node_1_expr134_line_832 = v_item_5157_line_832.getIntValue();
	int PROBE_END_LINE_832 = 832;
	return node_1_expr134_line_832;
  }

  public int getExistingIntProp(int propType) {
    PropListItem item = lookupProperty(propType);
    if (item == null) {
      throw new IllegalStateException("missing prop: " + propType);
    }
    return item.getIntValue();
  }

  public void putProp(int propType, Object value) {
    int PROBE_START_LINE_844 = 844;
	int p_prop_type_5159_line_844 = propType;
	int PROBE_END_LINE_844 = 844;
	removeProp(p_prop_type_5159_line_844);
    int PROBE_START_LINE_845 = 847;
	Object p_value_5160_line_845 = value;
	boolean node_1_expr136_line_845 = p_value_5160_line_845 != null;
	int PROBE_END_LINE_845 = 847;
	if (node_1_expr136_line_845) {
      int PROBE_START_LINE_846 = 846;
		int p_prop_type_5159_line_846 = propType;
		Object p_value_5160_line_846 = value;
		com.google.javascript.rhino.Node.PropListItem f_prop_list_head_5146_line_846 = propListHead;
		com.google.javascript.rhino.Node.PropListItem node_1_expr138_line_846 = createProp(p_prop_type_5159_line_846,
				p_value_5160_line_846, f_prop_list_head_5146_line_846);
		int PROBE_END_LINE_846 = 846;
	propListHead = node_1_expr138_line_846;
    }
  }

  public void putBooleanProp(int propType, boolean value) {
    int PROBE_START_LINE_851 = 851;
	int p_prop_type_5161_line_851 = propType;
	boolean p_value_5162_line_851 = value;
	int node_1_expr140_line_851 = p_value_5162_line_851 ? 1 : 0;
	int PROBE_END_LINE_851 = 851;
	putIntProp(p_prop_type_5161_line_851, node_1_expr140_line_851);
  }

  public void putIntProp(int propType, int value) {
    int PROBE_START_LINE_855 = 855;
	int p_prop_type_5163_line_855 = propType;
	int PROBE_END_LINE_855 = 855;
	removeProp(p_prop_type_5163_line_855);
    int PROBE_START_LINE_856 = 858;
	int p_value_5164_line_856 = value;
	boolean node_1_expr142_line_856 = p_value_5164_line_856 != 0;
	int PROBE_END_LINE_856 = 858;
	if (node_1_expr142_line_856) {
      int PROBE_START_LINE_857 = 857;
		int p_prop_type_5163_line_857 = propType;
		int p_value_5164_line_857 = value;
		com.google.javascript.rhino.Node.PropListItem f_prop_list_head_5146_line_857 = propListHead;
		com.google.javascript.rhino.Node.PropListItem node_1_expr144_line_857 = createProp(p_prop_type_5163_line_857,
				p_value_5164_line_857, f_prop_list_head_5146_line_857);
		int PROBE_END_LINE_857 = 857;
	propListHead = node_1_expr144_line_857;
    }
  }

  PropListItem createProp(int propType, Object value, PropListItem next) {
    int PROBE_START_LINE_862 = 862;
	int p_prop_type_5165_line_862 = propType;
	Object p_value_5166_line_862 = value;
	com.google.javascript.rhino.Node.PropListItem p_next_5167_line_862 = next;
	int PROBE_END_LINE_862 = 862;
	return new ObjectPropListItem(p_prop_type_5165_line_862, p_value_5166_line_862, p_next_5167_line_862);
  }

  PropListItem createProp(int propType, int value, PropListItem next) {
    int PROBE_START_LINE_866 = 866;
	int p_prop_type_5168_line_866 = propType;
	int p_value_5169_line_866 = value;
	com.google.javascript.rhino.Node.PropListItem p_next_5170_line_866 = next;
	int PROBE_END_LINE_866 = 866;
	return new IntPropListItem(p_prop_type_5168_line_866, p_value_5169_line_866, p_next_5170_line_866);
  }

  // Gets all the property types, in sorted order.
  private int[] getSortedPropTypes() {
    int count = 0;
    for (PropListItem x = propListHead; x != null; x = x.getNext()) {
      count++;
    }

    int[] keys = new int[count];
    for (PropListItem x = propListHead; x != null; x = x.getNext()) {
      count--;
      keys[count] = x.getType();
    }

    Arrays.sort(keys);
    return keys;
  }

  /** Can only be called when <tt>getType() == TokenStream.NUMBER</tt> */
  public double getDouble() throws UnsupportedOperationException {
    if (this.getType() == Token.NUMBER) {
      throw new IllegalStateException(
          "Number node not created with Node.newNumber");
    } else {
      throw new UnsupportedOperationException(this + " is not a number node");
    }
  }

  /**
   * Can only be called when <tt>getType() == Token.NUMBER</tt>
   * @param value value to set.
   */
  public void setDouble(double value) throws UnsupportedOperationException {
    if (this.getType() == Token.NUMBER) {
      throw new IllegalStateException(
          "Number node not created with Node.newNumber");
    } else {
      throw new UnsupportedOperationException(this + " is not a string node");
    }
  }

  /** Can only be called when node has String context. */
  public String getString() throws UnsupportedOperationException {
    if (this.getType() == Token.STRING) {
      throw new IllegalStateException(
          "String node not created with Node.newString");
    } else {
      throw new UnsupportedOperationException(this + " is not a string node");
    }
  }

  /**
   * Can only be called for a Token.STRING or Token.NAME.
   * @param value the value to set.
   */
  public void setString(String value) throws UnsupportedOperationException {
    if (this.getType() == Token.STRING || this.getType() == Token.NAME) {
      throw new IllegalStateException(
          "String node not created with Node.newString");
    } else {
      throw new UnsupportedOperationException(this + " is not a string node");
    }
  }

  @Override
  public String toString() {
    return toString(true, true, true);
  }

  public String toString(
      boolean printSource,
      boolean printAnnotations,
      boolean printType) {
    StringBuilder sb = new StringBuilder();
    toString(sb, printSource, printAnnotations, printType);
    return sb.toString();
  }

  private void toString(
      StringBuilder sb,
      boolean printSource,
      boolean printAnnotations,
      boolean printType) {
    sb.append(Token.name(type));
    if (this instanceof StringNode) {
      sb.append(' ');
      sb.append(getString());
    } else if (type == Token.FUNCTION) {
      sb.append(' ');
      // In the case of JsDoc trees, the first child is often not a string
      // which causes exceptions to be thrown when calling toString or
      // toStringTree.
      if (first == null || first.getType() != Token.NAME) {
        sb.append("<invalid>");
      } else {
        sb.append(first.getString());
      }
    } else if (type == Token.NUMBER) {
      sb.append(' ');
      sb.append(getDouble());
    }
    if (printSource) {
      int lineno = getLineno();
      if (lineno != -1) {
        sb.append(' ');
        sb.append(lineno);
      }
    }

    if (printAnnotations) {
      int[] keys = getSortedPropTypes();
      for (int i = 0; i < keys.length; i++) {
        int type = keys[i];
        PropListItem x = lookupProperty(type);
        sb.append(" [");
        sb.append(propToString(type));
        sb.append(": ");
        String value;
        switch (type) {
          default:
            value = x.toString();
            break;
        }
        sb.append(value);
        sb.append(']');
      }
    }

    if (printType) {
      if (jsType != null) {
        String jsTypeString = jsType.toString();
        if (jsTypeString != null) {
          sb.append(" : ");
          sb.append(jsTypeString);
        }
      }
    }
  }


  public String toStringTree() {
    return toStringTreeImpl();
  }

  private String toStringTreeImpl() {
    try {
      StringBuilder s = new StringBuilder();
      appendStringTree(s);
      return s.toString();
    } catch (IOException e) {
      throw new RuntimeException("Should not happen\n" + e);
    }
  }

  public void appendStringTree(Appendable appendable) throws IOException {
    toStringTreeHelper(this, 0, appendable);
  }

  private static void toStringTreeHelper(Node n, int level, Appendable sb)
      throws IOException {
    for (int i = 0; i != level; ++i) {
      sb.append("    ");
    }
    sb.append(n.toString());
    sb.append('\n');
    for (Node cursor = n.getFirstChild();
         cursor != null;
         cursor = cursor.getNext()) {
      toStringTreeHelper(cursor, level + 1, sb);
    }
  }

  int type;              // type of the node; Token.NAME for example
  Node next;             // next sibling
  private Node first;    // first element of a linked list of children
  private Node last;     // last element of a linked list of children

  /**
   * Linked list of properties. Since vast majority of nodes would have
   * no more then 2 properties, linked list saves memory and provides
   * fast lookup. If this does not holds, propListHead can be replaced
   * by UintMap.
   */
  private PropListItem propListHead;

  /**
   * COLUMN_BITS represents how many of the lower-order bits of
   * sourcePosition are reserved for storing the column number.
   * Bits above these store the line number.
   * This gives us decent position information for everything except
   * files already passed through a minimizer, where lines might
   * be longer than 4096 characters.
   */
  public static final int COLUMN_BITS = 12;

  /**
   * MAX_COLUMN_NUMBER represents the maximum column number that can
   * be represented.  JSCompiler's modifications to Rhino cause all
   * tokens located beyond the maximum column to MAX_COLUMN_NUMBER.
   */
  public static final int MAX_COLUMN_NUMBER = (1 << COLUMN_BITS) - 1;

  /**
   * COLUMN_MASK stores a value where bits storing the column number
   * are set, and bits storing the line are not set.  It's handy for
   * separating column number from line number.
   */
  public static final int COLUMN_MASK = MAX_COLUMN_NUMBER;

  /**
   * Source position of this node. The position is encoded with the
   * column number in the low 12 bits of the integer, and the line
   * number in the rest.  Create some handy constants so we can change this
   * size if we want.
   */
  private int sourcePosition;

  private JSType jsType;

  private Node parent;

  //==========================================================================
  // Source position management

  public void setStaticSourceFile(StaticSourceFile file) {
    int PROBE_START_LINE_1093 = 1093;
	int f_static_source_file_5185_line_1093 = STATIC_SOURCE_FILE;
	com.google.javascript.rhino.jstype.StaticSourceFile p_file_5184_line_1093 = file;
	int PROBE_END_LINE_1093 = 1093;
	this.putProp(f_static_source_file_5185_line_1093, p_file_5184_line_1093);
  }

  /** Sets the source file to a non-extern file of the given name. */
  public void setSourceFileForTesting(String name) {
    this.putProp(STATIC_SOURCE_FILE, new SimpleSourceFile(name, false));
  }

  public String getSourceFileName() {
    int PROBE_START_LINE_1102 = 1102;
	StaticSourceFile node_1_expr149_line_1102 = getStaticSourceFile();
	int PROBE_END_LINE_1102 = 1102;
	StaticSourceFile file = node_1_expr149_line_1102;
    int PROBE_START_LINE_1103 = 1103;
	com.google.javascript.rhino.jstype.StaticSourceFile v_file_5187_line_1103 = file;
	boolean node_1_expr151_line_1103 = v_file_5187_line_1103 == null;
	String node_1_expr152_line_1103 = null;
	if (!node_1_expr151_line_1103) {
		com.google.javascript.rhino.jstype.StaticSourceFile v_file_5187_line_1103_v1 = file;
		node_1_expr152_line_1103 = v_file_5187_line_1103_v1.getName();
	}
	String node_1_expr150_line_1103 = node_1_expr151_line_1103 ? null : node_1_expr152_line_1103;
	int PROBE_END_LINE_1103 = 1103;
	return node_1_expr150_line_1103;
  }

  /** Returns the source file associated with this input. May be null */
  public StaticSourceFile getStaticSourceFile() {
    int PROBE_START_LINE_1108 = 1108;
	int f_static_source_file_5185_line_1108 = STATIC_SOURCE_FILE;
	Object node_1_expr155_line_1108 = this.getProp(f_static_source_file_5185_line_1108);
	com.google.javascript.rhino.jstype.StaticSourceFile node_1_expr153_line_1108 = ((StaticSourceFile) node_1_expr155_line_1108);
	int PROBE_END_LINE_1108 = 1108;
	return node_1_expr153_line_1108;
  }

  /**
   * @param inputId
   */
  public void setInputId(InputId inputId) {
    int PROBE_START_LINE_1115 = 1115;
	int f_input_id_5189_line_1115 = INPUT_ID;
	com.google.javascript.rhino.InputId p_input_id_5188_line_1115 = inputId;
	int PROBE_END_LINE_1115 = 1115;
	this.putProp(f_input_id_5189_line_1115, p_input_id_5188_line_1115);
  }

  /**
   * @return The Id of the CompilerInput associated with this Node.
   */
  public InputId getInputId() {
    int PROBE_START_LINE_1122 = 1122;
	int f_input_id_5189_line_1122 = INPUT_ID;
	Object node_1_expr161_line_1122 = this.getProp(f_input_id_5189_line_1122);
	com.google.javascript.rhino.InputId node_1_expr159_line_1122 = ((InputId) node_1_expr161_line_1122);
	int PROBE_END_LINE_1122 = 1122;
	return node_1_expr159_line_1122;
  }

  public boolean isFromExterns() {
    int PROBE_START_LINE_1126 = 1126;
	StaticSourceFile node_1_expr163_line_1126 = getStaticSourceFile();
	int PROBE_END_LINE_1126 = 1126;
	StaticSourceFile file = node_1_expr163_line_1126;
    int PROBE_START_LINE_1127 = 1127;
	com.google.javascript.rhino.jstype.StaticSourceFile v_file_5190_line_1127 = file;
	boolean node_1_expr165_line_1127 = v_file_5190_line_1127 == null;
	boolean node_1_expr166_line_1127 = false;
	if (!node_1_expr165_line_1127) {
		com.google.javascript.rhino.jstype.StaticSourceFile v_file_5190_line_1127_v1 = file;
		node_1_expr166_line_1127 = v_file_5190_line_1127_v1.isExtern();
	}
	boolean node_1_expr164_line_1127 = node_1_expr165_line_1127 ? false : node_1_expr166_line_1127;
	int PROBE_END_LINE_1127 = 1127;
	return node_1_expr164_line_1127;
  }

  public int getLength() {
    return getIntProp(LENGTH);
  }

  public void setLength(int length) {
    int PROBE_START_LINE_1135 = 1135;
	int f_length_5192_line_1135 = LENGTH;
	int p_length_5191_line_1135 = length;
	int PROBE_END_LINE_1135 = 1135;
	putIntProp(f_length_5192_line_1135, p_length_5191_line_1135);
  }

  public int getLineno() {
    int PROBE_START_LINE_1139 = 1139;
	int f_source_position_5059_line_1139 = sourcePosition;
	int node_1_expr168_line_1139 = extractLineno(f_source_position_5059_line_1139);
	int PROBE_END_LINE_1139 = 1139;
	return node_1_expr168_line_1139;
  }

  public int getCharno() {
    int PROBE_START_LINE_1143 = 1143;
	int f_source_position_5059_line_1143 = sourcePosition;
	int node_1_expr169_line_1143 = extractCharno(f_source_position_5059_line_1143);
	int PROBE_END_LINE_1143 = 1143;
	return node_1_expr169_line_1143;
  }

  public int getSourceOffset() {
    StaticSourceFile file = getStaticSourceFile();
    if (file == null) {
      return -1;
    }
    int lineno = getLineno();
    if (lineno == -1) {
      return -1;
    }
    return file.getLineOffset(lineno) + getCharno();
  }

  public int getSourcePosition() {
    return sourcePosition;
  }

  public void setLineno(int lineno) {
      int PROBE_START_LINE_1163 = 1163;
	int node_1_expr170_line_1163 = getCharno();
	int PROBE_END_LINE_1163 = 1163;
	int charno = node_1_expr170_line_1163;
      int PROBE_START_LINE_1164 = 1166;
	int v_charno_5194_line_1164 = charno;
	int node_1_expr172_line_1164 = -1;
	boolean node_1_expr171_line_1164 = v_charno_5194_line_1164 == node_1_expr172_line_1164;
	int PROBE_END_LINE_1164 = 1166;
	if (node_1_expr171_line_1164) {
        charno = 0;
      }
      int PROBE_START_LINE_1167 = 1167;
	int p_lineno_5193_line_1167 = lineno;
	int v_charno_5194_line_1167 = charno;
	int node_1_expr175_line_1167 = mergeLineCharNo(p_lineno_5193_line_1167, v_charno_5194_line_1167);
	int PROBE_END_LINE_1167 = 1167;
	sourcePosition = node_1_expr175_line_1167;
  }

  public void setCharno(int charno) {
      int PROBE_START_LINE_1171 = 1171;
	int node_1_expr178_line_1171 = getLineno();
	int p_charno_5195_line_1171 = charno;
	int node_1_expr177_line_1171 = mergeLineCharNo(node_1_expr178_line_1171, p_charno_5195_line_1171);
	int PROBE_END_LINE_1171 = 1171;
	sourcePosition = node_1_expr177_line_1171;
  }

  public void setSourceEncodedPosition(int sourcePosition) {
    this.sourcePosition = sourcePosition;
  }

  public void setSourceEncodedPositionForTree(int sourcePosition) {
    this.sourcePosition = sourcePosition;

    for (Node child = getFirstChild();
         child != null; child = child.getNext()) {
      child.setSourceEncodedPositionForTree(sourcePosition);
    }
  }

  /**
   * Merges the line number and character number in one integer. The Character
   * number takes the first 12 bits and the line number takes the rest. If
   * the character number is greater than <code>2<sup>12</sup>-1</code> it is
   * adjusted to <code>2<sup>12</sup>-1</code>.
   */
  protected static int mergeLineCharNo(int lineno, int charno) {
    int PROBE_START_LINE_1194 = 1200;
	int p_lineno_5198_line_1194 = lineno;
	boolean node_1_expr180_line_1194 = p_lineno_5198_line_1194 < 0;
	boolean node_1_expr181_line_1194 = false;
	if (!node_1_expr180_line_1194) {
		int p_charno_5199_line_1194 = charno;
		node_1_expr181_line_1194 = p_charno_5199_line_1194 < 0;
	}
	boolean node_1_expr179_line_1194 = node_1_expr180_line_1194 || node_1_expr181_line_1194;
	int PROBE_END_LINE_1194 = 1200;
	if (node_1_expr179_line_1194) {
      int PROBE_START_LINE_1195 = 1195;
		int node_1_expr182_line_1195 = -1;
		int PROBE_END_LINE_1195 = 1195;
	return node_1_expr182_line_1195;
    } else {
		int PROBE_START_LINE_1196 = 1200;
		int p_charno_5199_line_1196 = charno;
		int f_column_mask_5200_line_1196 = COLUMN_MASK;
		int node_1_expr186_line_1196 = ~f_column_mask_5200_line_1196;
		int node_1_expr185_line_1196 = p_charno_5199_line_1196 & node_1_expr186_line_1196;
		int node_1_expr184_line_1196 = (node_1_expr185_line_1196);
		boolean node_1_expr183_line_1196 = node_1_expr184_line_1196 != 0;
		int PROBE_END_LINE_1196 = 1200;
		if (node_1_expr183_line_1196) {
			return lineno << COLUMN_BITS | COLUMN_MASK;
		} else {
			int PROBE_START_LINE_1199 = 1199;
			int p_lineno_5198_line_1199 = lineno;
			int f_column_bits_5201_line_1199 = COLUMN_BITS;
			int node_1_expr188_line_1199 = p_lineno_5198_line_1199 << f_column_bits_5201_line_1199;
			int p_charno_5199_line_1199 = charno;
			int f_column_mask_5200_line_1199 = COLUMN_MASK;
			int node_1_expr190_line_1199 = p_charno_5199_line_1199 & f_column_mask_5200_line_1199;
			int node_1_expr189_line_1199 = (node_1_expr190_line_1199);
			int node_1_expr187_line_1199 = node_1_expr188_line_1199 | node_1_expr189_line_1199;
			int PROBE_END_LINE_1199 = 1199;
			return node_1_expr187_line_1199;
		}
	}
  }

  /**
   * Extracts the line number and character number from a merged line char
   * number (see {@link #mergeLineCharNo(int, int)}).
   */
  protected static int extractLineno(int lineCharNo) {
    int PROBE_START_LINE_1208 = 1212;
	int p_line_char_no_5202_line_1208 = lineCharNo;
	int node_1_expr192_line_1208 = -1;
	boolean node_1_expr191_line_1208 = p_line_char_no_5202_line_1208 == node_1_expr192_line_1208;
	int PROBE_END_LINE_1208 = 1212;
	if (node_1_expr191_line_1208) {
      int PROBE_START_LINE_1209 = 1209;
		int node_1_expr193_line_1209 = -1;
		int PROBE_END_LINE_1209 = 1209;
	return node_1_expr193_line_1209;
    } else {
      int PROBE_START_LINE_1211 = 1211;
		int p_line_char_no_5202_line_1211 = lineCharNo;
		int f_column_bits_5201_line_1211 = COLUMN_BITS;
		int node_1_expr194_line_1211 = p_line_char_no_5202_line_1211 >>> f_column_bits_5201_line_1211;
		int PROBE_END_LINE_1211 = 1211;
	return node_1_expr194_line_1211;
    }
  }

  /**
   * Extracts the character number and character number from a merged line
   * char number (see {@link #mergeLineCharNo(int, int)}).
   */
  protected static int extractCharno(int lineCharNo) {
    int PROBE_START_LINE_1220 = 1224;
	int p_line_char_no_5203_line_1220 = lineCharNo;
	int node_1_expr196_line_1220 = -1;
	boolean node_1_expr195_line_1220 = p_line_char_no_5203_line_1220 == node_1_expr196_line_1220;
	int PROBE_END_LINE_1220 = 1224;
	if (node_1_expr195_line_1220) {
      int PROBE_START_LINE_1221 = 1221;
		int node_1_expr197_line_1221 = -1;
		int PROBE_END_LINE_1221 = 1221;
	return node_1_expr197_line_1221;
    } else {
      int PROBE_START_LINE_1223 = 1223;
		int p_line_char_no_5203_line_1223 = lineCharNo;
		int f_column_mask_5200_line_1223 = COLUMN_MASK;
		int node_1_expr198_line_1223 = p_line_char_no_5203_line_1223 & f_column_mask_5200_line_1223;
		int PROBE_END_LINE_1223 = 1223;
	return node_1_expr198_line_1223;
    }
  }

  //==========================================================================
  // Iteration

  /**
   * <p>Return an iterable object that iterates over this node's children.
   * The iterator does not support the optional operation
   * {@link Iterator#remove()}.</p>
   *
   * <p>To iterate over a node's siblings, one can write</p>
   * <pre>Node n = ...;
   * for (Node child : n.children()) { ...</pre>
   */
  public Iterable<Node> children() {
    int PROBE_START_LINE_1240 = 1244;
	com.google.javascript.rhino.Node f_first_5065_line_1240 = first;
	boolean node_1_expr199_line_1240 = f_first_5065_line_1240 == null;
	int PROBE_END_LINE_1240 = 1244;
	if (node_1_expr199_line_1240) {
      int PROBE_START_LINE_1241 = 1241;
		Set<com.google.javascript.rhino.Node> node_1_expr200_line_1241 = Collections.emptySet();
		int PROBE_END_LINE_1241 = 1241;
	return node_1_expr200_line_1241;
    } else {
      return new SiblingNodeIterable(first);
    }
  }

  /**
   * <p>Return an iterable object that iterates over this node's siblings.
   * The iterator does not support the optional operation
   * {@link Iterator#remove()}.</p>
   *
   * <p>To iterate over a node's siblings, one can write</p>
   * <pre>Node n = ...;
   * for (Node sibling : n.siblings()) { ...</pre>
   */
  public Iterable<Node> siblings() {
    return new SiblingNodeIterable(this);
  }

  /**
   * @see Node#siblings()
   */
  private static final class SiblingNodeIterable
      implements Iterable<Node>, Iterator<Node> {
    private final Node start;
    private Node current;
    private boolean used;

    SiblingNodeIterable(Node start) {
      this.start = start;
      this.current = start;
      this.used = false;
    }

    @Override
    public Iterator<Node> iterator() {
      if (!used) {
        used = true;
        return this;
      } else {
        // We have already used the current object as an iterator;
        // we must create a new SiblingNodeIterable based on this
        // iterable's start node.
        //
        // Since the primary use case for Node.children is in for
        // loops, this branch is extremely unlikely.
        return (new SiblingNodeIterable(start)).iterator();
      }
    }

    @Override
    public boolean hasNext() {
      return current != null;
    }

    @Override
    public Node next() {
      if (current == null) {
        throw new NoSuchElementException();
      }
      try {
        return current;
      } finally {
        current = current.getNext();
      }
    }

    @Override
    public void remove() {
      throw new UnsupportedOperationException();
    }
  }

  // ==========================================================================
  // Accessors

  PropListItem getPropListHeadForTesting() {
    return propListHead;
  }

  public Node getParent() {
    int PROBE_START_LINE_1322 = 1322;
	com.google.javascript.rhino.Node f_parent_5058_line_1322 = parent;
	int PROBE_END_LINE_1322 = 1322;
	return f_parent_5058_line_1322;
  }

  /**
   * Gets the ancestor node relative to this.
   *
   * @param level 0 = this, 1 = the parent, etc.
   */
  public Node getAncestor(int level) {
    Preconditions.checkArgument(level >= 0);
    Node node = this;
    while (node != null && level-- > 0) {
      node = node.getParent();
    }
    return node;
  }

  /**
   * Iterates all of the node's ancestors excluding itself.
   */
  public AncestorIterable getAncestors() {
    return new AncestorIterable(this.getParent());
  }

  /**
   * Iterator to go up the ancestor tree.
   */
  public static class AncestorIterable implements Iterable<Node> {
    private Node cur;

    /**
     * @param cur The node to start.
     */
    AncestorIterable(Node cur) {
      this.cur = cur;
    }

    @Override
    public Iterator<Node> iterator() {
      return new Iterator<Node>() {
        @Override
        public boolean hasNext() {
          return cur != null;
        }

        @Override
        public Node next() {
          if (!hasNext()) {
            throw new NoSuchElementException();
          }
          Node n = cur;
          cur = cur.getParent();
          return n;
        }

        @Override
        public void remove() {
          throw new UnsupportedOperationException();
        }
      };
    }
  }

  /**
   * Check for one child more efficiently than by iterating over all the
   * children as is done with Node.getChildCount().
   *
   * @return Whether the node has exactly one child.
   */
  public boolean hasOneChild() {
    int PROBE_START_LINE_1392 = 1392;
	com.google.javascript.rhino.Node f_first_5065_line_1392 = first;
	boolean node_1_expr202_line_1392 = f_first_5065_line_1392 != null;
	boolean node_1_expr203_line_1392 = true;
	if (node_1_expr202_line_1392) {
		com.google.javascript.rhino.Node f_first_5065_line_1392_v1 = first;
		com.google.javascript.rhino.Node f_last_5066_line_1392 = last;
		node_1_expr203_line_1392 = f_first_5065_line_1392_v1 == f_last_5066_line_1392;
	}
	boolean node_1_expr201_line_1392 = node_1_expr202_line_1392 && node_1_expr203_line_1392;
	int PROBE_END_LINE_1392 = 1392;
	return node_1_expr201_line_1392;
  }

  /**
   * Check for more than one child more efficiently than by iterating over all
   * the children as is done with Node.getChildCount().
   *
   * @return Whether the node more than one child.
   */
  public boolean hasMoreThanOneChild() {
    int PROBE_START_LINE_1402 = 1402;
	com.google.javascript.rhino.Node f_first_5065_line_1402 = first;
	boolean node_1_expr205_line_1402 = f_first_5065_line_1402 != null;
	boolean node_1_expr206_line_1402 = true;
	if (node_1_expr205_line_1402) {
		com.google.javascript.rhino.Node f_first_5065_line_1402_v1 = first;
		com.google.javascript.rhino.Node f_last_5066_line_1402 = last;
		node_1_expr206_line_1402 = f_first_5065_line_1402_v1 != f_last_5066_line_1402;
	}
	boolean node_1_expr204_line_1402 = node_1_expr205_line_1402 && node_1_expr206_line_1402;
	int PROBE_END_LINE_1402 = 1402;
	return node_1_expr204_line_1402;
  }

  public int getChildCount() {
    int c = 0;
    int PROBE_START_LINE_1406 = 1406;
	boolean FOR_STMT_TOGGLE_LINE_1407 = false;
	int PROBE_END_LINE_1406 = 1406;
	for (Node n = null; true;) {
      int PROBE_START_LINE_1408 = 1408;
		if (!FOR_STMT_TOGGLE_LINE_1407) {
			FOR_STMT_TOGGLE_LINE_1407 = true;
			Node f_first_5065_line_1407 = first;
			n = f_first_5065_line_1407;
		} else {
			if (FOR_STMT_TOGGLE_LINE_1407) {
				com.google.javascript.rhino.Node v_n_5208_line_1407_v1 = n;
				com.google.javascript.rhino.Node q_next_160_line_1407 = v_n_5208_line_1407_v1.next;
				n = q_next_160_line_1407;
			} else {
				FOR_STMT_TOGGLE_LINE_1407 = true;
			}
		}
		com.google.javascript.rhino.Node v_n_5208_line_1407 = n;
		boolean node_1_expr208_line_1407 = v_n_5208_line_1407 != null;
		if (!(node_1_expr208_line_1407)) {
			break;
		}
		int PROBE_END_LINE_1408 = 1408;
	c++;
    }
    int PROBE_START_LINE_1410 = 1410;
	int v_c_5207_line_1410 = c;
	int PROBE_END_LINE_1410 = 1410;
	return v_c_5207_line_1410;
  }

  // Intended for testing and verification only.
  public boolean hasChild(Node child) {
    int PROBE_START_LINE_1414 = 1414;
	boolean FOR_STMT_TOGGLE_LINE_1415 = false;
	int PROBE_END_LINE_1414 = 1414;
	for (Node n = null; true;) {
      int PROBE_START_LINE_1416 = 1418;
		if (!FOR_STMT_TOGGLE_LINE_1415) {
			FOR_STMT_TOGGLE_LINE_1415 = true;
			Node f_first_5065_line_1415 = first;
			n = f_first_5065_line_1415;
		} else {
			if (FOR_STMT_TOGGLE_LINE_1415) {
				com.google.javascript.rhino.Node v_n_5210_line_1415_v1 = n;
				com.google.javascript.rhino.Node node_1_expr214_line_1415 = v_n_5210_line_1415_v1.getNext();
				n = node_1_expr214_line_1415;
			} else {
				FOR_STMT_TOGGLE_LINE_1415 = true;
			}
		}
		com.google.javascript.rhino.Node v_n_5210_line_1415 = n;
		boolean node_1_expr212_line_1415 = v_n_5210_line_1415 != null;
		if (!(node_1_expr212_line_1415)) {
			break;
		}
		com.google.javascript.rhino.Node p_child_5209_line_1416 = child;
		com.google.javascript.rhino.Node v_n_5210_line_1416 = n;
		boolean node_1_expr215_line_1416 = p_child_5209_line_1416 == v_n_5210_line_1416;
		int PROBE_END_LINE_1416 = 1418;
	if (node_1_expr215_line_1416) {
        return true;
      }
    }
    return false;
  }

  /**
   * Checks if the subtree under this node is the same as another subtree.
   * Returns null if it's equal, or a message describing the differences.
   */
  public String checkTreeEquals(Node node2) {
      int PROBE_START_LINE_1428 = 1428;
	com.google.javascript.rhino.Node p_node_2_5211_line_1428 = node2;
	NodeMismatch node_1_expr216_line_1428 = checkTreeEqualsImpl(p_node_2_5211_line_1428);
	int PROBE_END_LINE_1428 = 1428;
	NodeMismatch diff = node_1_expr216_line_1428;
      int PROBE_START_LINE_1429 = 1435;
	com.google.javascript.rhino.Node.NodeMismatch v_diff_5212_line_1429 = diff;
	boolean node_1_expr217_line_1429 = v_diff_5212_line_1429 != null;
	int PROBE_END_LINE_1429 = 1435;
	if (node_1_expr217_line_1429) {
        return "Node tree inequality:" +
            "\nTree1:\n" + toStringTree() +
            "\n\nTree2:\n" + node2.toStringTree() +
            "\n\nSubtree1: " + diff.nodeA.toStringTree() +
            "\n\nSubtree2: " + diff.nodeB.toStringTree();
      }
      return null;
  }

  /**
   * Compare this node to node2 recursively and return the first pair of nodes
   * that differs doing a preorder depth-first traversal. Package private for
   * testing. Returns null if the nodes are equivalent.
   */
  NodeMismatch checkTreeEqualsImpl(Node node2) {
    int PROBE_START_LINE_1445 = 1447;
	com.google.javascript.rhino.Node p_node_2_5213_line_1445 = node2;
	boolean node_1_expr219_line_1445 = isEquivalentTo(p_node_2_5213_line_1445, false, false, false);
	boolean node_1_expr218_line_1445 = !node_1_expr219_line_1445;
	int PROBE_END_LINE_1445 = 1447;
	if (node_1_expr218_line_1445) {
      return new NodeMismatch(this, node2);
    }

    NodeMismatch res = null;
    Node n = null, n2 = null;
    int PROBE_START_LINE_1450 = 1450;
	boolean FOR_STMT_TOGGLE_LINE_1451 = false;
	com.google.javascript.rhino.Node f_first_5065_line_1451 = first;
	n = f_first_5065_line_1451;
	com.google.javascript.rhino.Node p_node_2_5213_line_1451 = node2;
	com.google.javascript.rhino.Node q_first_161_line_1451 = p_node_2_5213_line_1451.first;
	n2 = q_first_161_line_1451;
	int PROBE_END_LINE_1450 = 1450;
	for (;
         true;) {
      int PROBE_START_LINE_1454 = 1456;
			if (!FOR_STMT_TOGGLE_LINE_1451) {
				FOR_STMT_TOGGLE_LINE_1451 = true;
			} else {
				if (FOR_STMT_TOGGLE_LINE_1451) {
					com.google.javascript.rhino.Node v_n_5215_line_1453 = n;
					com.google.javascript.rhino.Node q_next_162_line_1453 = v_n_5215_line_1453.next;
					n = q_next_162_line_1453;
					com.google.javascript.rhino.Node v_n_2_5216_line_1453 = n2;
					com.google.javascript.rhino.Node q_next_163_line_1453 = v_n_2_5216_line_1453.next;
					n2 = q_next_163_line_1453;
				} else {
					FOR_STMT_TOGGLE_LINE_1451 = true;
				}
			}
			com.google.javascript.rhino.Node.NodeMismatch v_res_5214_line_1452 = res;
			boolean node_1_expr223_line_1452 = v_res_5214_line_1452 == null;
			boolean node_1_expr224_line_1452 = true;
			if (node_1_expr223_line_1452) {
				com.google.javascript.rhino.Node v_n_5215_line_1452 = n;
				node_1_expr224_line_1452 = v_n_5215_line_1452 != null;
			}
			boolean node_1_expr222_line_1452 = node_1_expr223_line_1452 && node_1_expr224_line_1452;
			if (!(node_1_expr222_line_1452)) {
				break;
			}
			com.google.javascript.rhino.Node p_node_2_5213_line_1454 = node2;
			boolean node_1_expr227_line_1454 = p_node_2_5213_line_1454 == null;
			int PROBE_END_LINE_1454 = 1456;
	if (node_1_expr227_line_1454) {
        throw new IllegalStateException();
      }
      int PROBE_START_LINE_1457 = 1457;
	com.google.javascript.rhino.Node v_n_5215_line_1457 = n;
	com.google.javascript.rhino.Node v_n_2_5216_line_1457 = n2;
	com.google.javascript.rhino.Node.NodeMismatch node_1_expr229_line_1457 = v_n_5215_line_1457
			.checkTreeEqualsImpl(v_n_2_5216_line_1457);
	int PROBE_END_LINE_1457 = 1457;
	res = node_1_expr229_line_1457;
      int PROBE_START_LINE_1458 = 1460;
	com.google.javascript.rhino.Node.NodeMismatch v_res_5214_line_1458 = res;
	boolean node_1_expr230_line_1458 = v_res_5214_line_1458 != null;
	int PROBE_END_LINE_1458 = 1460;
	if (node_1_expr230_line_1458) {
        return res;
      }
    }
    int PROBE_START_LINE_1462 = 1462;
	com.google.javascript.rhino.Node.NodeMismatch v_res_5214_line_1462 = res;
	int PROBE_END_LINE_1462 = 1462;
	return v_res_5214_line_1462;
  }

  /**
   * Compare this node to node2 recursively and return the first pair of nodes
   * that differs doing a preorder depth-first traversal. Package private for
   * testing. Returns null if the nodes are equivalent.
   */
  NodeMismatch checkTreeTypeAwareEqualsImpl(Node node2) {
    // Do a non-recursive equivalents check.
    if (!isEquivalentTo(node2, true, false, false)) {
      return new NodeMismatch(this, node2);
    }

    NodeMismatch res = null;
    Node n, n2;
    for (n = first, n2 = node2.first;
         res == null && n != null;
         n = n.next, n2 = n2.next) {
      res = n.checkTreeTypeAwareEqualsImpl(n2);
      if (res != null) {
        return res;
      }
    }
    return res;
  }

  /** Returns true if this node is equivalent semantically to another */
  public boolean isEquivalentTo(Node node) {
    int PROBE_START_LINE_1491 = 1491;
	com.google.javascript.rhino.Node p_node_5218_line_1491 = node;
	boolean node_1_expr231_line_1491 = isEquivalentTo(p_node_5218_line_1491, false, true, false);
	int PROBE_END_LINE_1491 = 1491;
	return node_1_expr231_line_1491;
  }

  /** Checks equivalence without going into inner functions */
  public boolean isEquivalentToShallow(Node node) {
    return isEquivalentTo(node, false, true, true);
  }

  /**
   * Returns true if this node is equivalent semantically to another and
   * the types are equivalent.
   */
  public boolean isEquivalentToTyped(Node node) {
    return isEquivalentTo(node, true, true, false);
  }

  /**
   * @param compareJsType Whether to compare the JSTypes of the nodes.
   * @param recur Whether to compare the children of the current node, if
   *    not only the the count of the children are compared.
   * @param shallow If true, the method doesn't recur into inner functions.
   * @return Whether this node is equivalent semantically to the provided node.
   */
  boolean isEquivalentTo(
      Node node, boolean compareJsType, boolean recur, boolean shallow) {
    int PROBE_START_LINE_1516 = 1520;
		int f_type_5057_line_1516 = type;
		com.google.javascript.rhino.Node p_node_5221_line_1516 = node;
		int node_1_expr235_line_1516 = p_node_5221_line_1516.getType();
		boolean node_1_expr234_line_1516 = f_type_5057_line_1516 != node_1_expr235_line_1516;
		boolean node_1_expr233_line_1516 = node_1_expr234_line_1516 || getChildCount() != node.getChildCount();
		boolean node_1_expr232_line_1516 = node_1_expr233_line_1516 || this.getClass() != node.getClass();
		int PROBE_END_LINE_1516 = 1520;
	if (node_1_expr232_line_1516) {
      return false;
    }

    int PROBE_START_LINE_1522 = 1524;
	boolean p_compare_js_type_5222_line_1522 = compareJsType;
	boolean node_1_expr237_line_1522 = true;
	if (p_compare_js_type_5222_line_1522) {
		com.google.javascript.rhino.jstype.JSType f_js_type_5225_line_1522 = jsType;
		com.google.javascript.rhino.Node p_node_5221_line_1522 = node;
		com.google.javascript.rhino.jstype.JSType node_1_expr239_line_1522 = p_node_5221_line_1522.getJSType();
		boolean node_1_expr238_line_1522 = JSType.isEquivalent(f_js_type_5225_line_1522, node_1_expr239_line_1522);
		node_1_expr237_line_1522 = !node_1_expr238_line_1522;
	}
	boolean node_1_expr236_line_1522 = p_compare_js_type_5222_line_1522 && node_1_expr237_line_1522;
	int PROBE_END_LINE_1522 = 1524;
	if (node_1_expr236_line_1522) {
      return false;
    }

    int PROBE_START_LINE_1526 = 1550;
	int f_type_5057_line_1526 = type;
	int q_inc_164_line_1526 = Token.INC;
	boolean node_1_expr241_line_1526 = f_type_5057_line_1526 == q_inc_164_line_1526;
	boolean node_1_expr242_line_1526 = false;
	if (!node_1_expr241_line_1526) {
		int f_type_5057_line_1526_v1 = type;
		int q_dec_165_line_1526 = Token.DEC;
		node_1_expr242_line_1526 = f_type_5057_line_1526_v1 == q_dec_165_line_1526;
	}
	boolean node_1_expr240_line_1526 = node_1_expr241_line_1526 || node_1_expr242_line_1526;
	int PROBE_END_LINE_1526 = 1550;
	if (node_1_expr240_line_1526) {
      int post1 = this.getIntProp(INCRDECR_PROP);
      int post2 = node.getIntProp(INCRDECR_PROP);
      if (post1 != post2) {
        return false;
      }
    } else {
		int PROBE_START_LINE_1532 = 1550;
		int f_type_5057_line_1532 = type;
		int q_string_166_line_1532 = Token.STRING;
		boolean node_1_expr244_line_1532 = f_type_5057_line_1532 == q_string_166_line_1532;
		boolean node_1_expr245_line_1532 = false;
		if (!node_1_expr244_line_1532) {
			int f_type_5057_line_1532_v1 = type;
			int q_string_key_166_line_1532 = Token.STRING_KEY;
			node_1_expr245_line_1532 = f_type_5057_line_1532_v1 == q_string_key_166_line_1532;
		}
		boolean node_1_expr243_line_1532 = node_1_expr244_line_1532 || node_1_expr245_line_1532;
		int PROBE_END_LINE_1532 = 1550;
		if (node_1_expr243_line_1532) {
			int PROBE_START_LINE_1533 = 1539;
			int f_type_5057_line_1533 = type;
			int q_string_key_166_line_1533 = Token.STRING_KEY;
			boolean node_1_expr246_line_1533 = f_type_5057_line_1533 == q_string_key_166_line_1533;
			int PROBE_END_LINE_1533 = 1539;
			if (node_1_expr246_line_1533) {
				int PROBE_START_LINE_1534 = 1534;
				int f_quoted_prop_5039_line_1534 = QUOTED_PROP;
				int node_1_expr247_line_1534 = this.getIntProp(f_quoted_prop_5039_line_1534);
				int PROBE_END_LINE_1534 = 1534;
				int quoted1 = node_1_expr247_line_1534;
				int PROBE_START_LINE_1535 = 1535;
				com.google.javascript.rhino.Node p_node_5221_line_1535 = node;
				int f_quoted_prop_5039_line_1535 = QUOTED_PROP;
				int node_1_expr249_line_1535 = p_node_5221_line_1535.getIntProp(f_quoted_prop_5039_line_1535);
				int PROBE_END_LINE_1535 = 1535;
				int quoted2 = node_1_expr249_line_1535;
				int PROBE_START_LINE_1536 = 1538;
				int v_quoted_1_5226_line_1536 = quoted1;
				int v_quoted_2_5227_line_1536 = quoted2;
				boolean node_1_expr250_line_1536 = v_quoted_1_5226_line_1536 != v_quoted_2_5227_line_1536;
				int PROBE_END_LINE_1536 = 1538;
				if (node_1_expr250_line_1536) {
					return false;
				}
			}
			int PROBE_START_LINE_1541 = 1541;
			int f_slash_v_5229_line_1541 = SLASH_V;
			int node_1_expr251_line_1541 = this.getIntProp(f_slash_v_5229_line_1541);
			int PROBE_END_LINE_1541 = 1541;
			int slashV1 = node_1_expr251_line_1541;
			int PROBE_START_LINE_1542 = 1542;
			com.google.javascript.rhino.Node p_node_5221_line_1542 = node;
			int f_slash_v_5229_line_1542 = SLASH_V;
			int node_1_expr253_line_1542 = p_node_5221_line_1542.getIntProp(f_slash_v_5229_line_1542);
			int PROBE_END_LINE_1542 = 1542;
			int slashV2 = node_1_expr253_line_1542;
			int PROBE_START_LINE_1543 = 1545;
			int v_slash_v1_5228_line_1543 = slashV1;
			int v_slash_v2_5230_line_1543 = slashV2;
			boolean node_1_expr254_line_1543 = v_slash_v1_5228_line_1543 != v_slash_v2_5230_line_1543;
			int PROBE_END_LINE_1543 = 1545;
			if (node_1_expr254_line_1543) {
				return false;
			}
		} else {
			int PROBE_START_LINE_1546 = 1550;
			int f_type_5057_line_1546 = type;
			int q_call_166_line_1546 = Token.CALL;
			boolean node_1_expr255_line_1546 = f_type_5057_line_1546 == q_call_166_line_1546;
			int PROBE_END_LINE_1546 = 1550;
			if (node_1_expr255_line_1546) {
				if (this.getBooleanProp(FREE_CALL) != node.getBooleanProp(FREE_CALL)) {
					return false;
				}
			}
		}
	}

    int PROBE_START_LINE_1552 = 1562;
	boolean p_recur_5223_line_1552 = recur;
	int PROBE_END_LINE_1552 = 1562;
	if (p_recur_5223_line_1552) {
      Node n = null, n2 = null;
      int PROBE_START_LINE_1553 = 1553;
	boolean FOR_STMT_TOGGLE_LINE_1554 = false;
	com.google.javascript.rhino.Node f_first_5065_line_1554 = first;
	n = f_first_5065_line_1554;
	com.google.javascript.rhino.Node p_node_5221_line_1554 = node;
	com.google.javascript.rhino.Node q_first_167_line_1554 = p_node_5221_line_1554.first;
	n2 = q_first_167_line_1554;
	int PROBE_END_LINE_1553 = 1553;
	for (;
           true;) {
        int PROBE_START_LINE_1557 = 1560;
			if (!FOR_STMT_TOGGLE_LINE_1554) {
				FOR_STMT_TOGGLE_LINE_1554 = true;
			} else {
				if (FOR_STMT_TOGGLE_LINE_1554) {
					com.google.javascript.rhino.Node v_n_5231_line_1556 = n;
					com.google.javascript.rhino.Node q_next_168_line_1556 = v_n_5231_line_1556.next;
					n = q_next_168_line_1556;
					com.google.javascript.rhino.Node v_n_2_5232_line_1556 = n2;
					com.google.javascript.rhino.Node q_next_169_line_1556 = v_n_2_5232_line_1556.next;
					n2 = q_next_169_line_1556;
				} else {
					FOR_STMT_TOGGLE_LINE_1554 = true;
				}
			}
			com.google.javascript.rhino.Node v_n_5231_line_1555 = n;
			boolean node_1_expr258_line_1555 = v_n_5231_line_1555 != null;
			if (!(node_1_expr258_line_1555)) {
				break;
			}
			com.google.javascript.rhino.Node v_n_5231_line_1557 = n;
			boolean node_1_expr262_line_1557 = v_n_5231_line_1557.isEquivalentTo(n2, compareJsType,
					!(shallow && n.isFunction()), shallow);
			boolean node_1_expr261_line_1557 = !node_1_expr262_line_1557;
			int PROBE_END_LINE_1557 = 1560;
		if (node_1_expr261_line_1557) {
          return false;
        }
      }
    }

    return true;
  }

  /**
   * This function takes a set of GETPROP nodes and produces a string that is
   * each property separated by dots. If the node ultimately under the left
   * sub-tree is not a simple name, this is not a valid qualified name.
   *
   * @return a null if this is not a qualified name, or a dot-separated string
   *         of the name and properties.
   */
  public String getQualifiedName() {
    int PROBE_START_LINE_1576 = 1589;
	int f_type_5057_line_1576 = type;
	int q_name_170_line_1576 = Token.NAME;
	boolean node_1_expr264_line_1576 = f_type_5057_line_1576 == q_name_170_line_1576;
	int PROBE_END_LINE_1576 = 1589;
	if (node_1_expr264_line_1576) {
      int PROBE_START_LINE_1577 = 1577;
		String node_1_expr265_line_1577 = getString();
		int PROBE_END_LINE_1577 = 1577;
	String name = node_1_expr265_line_1577;
      int PROBE_START_LINE_1578 = 1578;
	String v_name_5233_line_1578 = name;
	boolean node_1_expr267_line_1578 = v_name_5233_line_1578.isEmpty();
	String v_name_5233_line_1578_v1 = null;
	if (!node_1_expr267_line_1578) {
		v_name_5233_line_1578_v1 = name;
	}
	String node_1_expr266_line_1578 = node_1_expr267_line_1578 ? null : v_name_5233_line_1578_v1;
	int PROBE_END_LINE_1578 = 1578;
	return node_1_expr266_line_1578;
    } else {
		int PROBE_START_LINE_1579 = 1589;
		int f_type_5057_line_1579 = type;
		int q_getprop_170_line_1579 = Token.GETPROP;
		boolean node_1_expr268_line_1579 = f_type_5057_line_1579 == q_getprop_170_line_1579;
		int PROBE_END_LINE_1579 = 1589;
		if (node_1_expr268_line_1579) {
			int PROBE_START_LINE_1580 = 1580;
			com.google.javascript.rhino.Node node_1_expr270_line_1580 = getFirstChild();
			String node_1_expr269_line_1580 = node_1_expr270_line_1580.getQualifiedName();
			int PROBE_END_LINE_1580 = 1580;
			String left = node_1_expr269_line_1580;
			int PROBE_START_LINE_1581 = 1583;
			String v_left_5234_line_1581 = left;
			boolean node_1_expr271_line_1581 = v_left_5234_line_1581 == null;
			int PROBE_END_LINE_1581 = 1583;
			if (node_1_expr271_line_1581) {
				return null;
			}
			int PROBE_START_LINE_1584 = 1584;
			String v_left_5234_line_1584 = left;
			com.google.javascript.rhino.Node node_1_expr274_line_1584 = getLastChild();
			String node_1_expr273_line_1584 = node_1_expr274_line_1584.getString();
			String node_1_expr272_line_1584 = v_left_5234_line_1584 + "." + node_1_expr273_line_1584;
			int PROBE_END_LINE_1584 = 1584;
			return node_1_expr272_line_1584;
		} else if (type == Token.THIS) {
			return "this";
		} else {
			return null;
		}
	}
  }

  /**
   * Returns whether a node corresponds to a simple or a qualified name, such as
   * <code>x</code> or <code>a.b.c</code> or <code>this.a</code>.
   */
  public boolean isQualifiedName() {
    int PROBE_START_LINE_1597 = 1606;
	int node_1_expr275_line_1597 = getType();
	int PROBE_END_LINE_1597 = 1606;
	switch (node_1_expr275_line_1597) {
      case Token.NAME:
	int PROBE_START_LINE_1599 = 1599;
	String node_1_expr278_line_1599 = getString();
	boolean node_1_expr277_line_1599 = node_1_expr278_line_1599.isEmpty();
	boolean node_1_expr276_line_1599 = node_1_expr277_line_1599 ? false : true;
	int PROBE_END_LINE_1599 = 1599;
	return node_1_expr276_line_1599;
      case Token.THIS:
        return true;
      case Token.GETPROP:
	int PROBE_START_LINE_1603 = 1603;
	com.google.javascript.rhino.Node node_1_expr280_line_1603 = getFirstChild();
	boolean node_1_expr279_line_1603 = node_1_expr280_line_1603.isQualifiedName();
	int PROBE_END_LINE_1603 = 1603;
	return node_1_expr279_line_1603;
      default:
        return false;
    }
  }

  /**
   * Returns whether a node corresponds to a simple or a qualified name without
   * a "this" reference, such as <code>a.b.c</code>, but not <code>this.a</code>
   * .
   */
  public boolean isUnscopedQualifiedName() {
    switch (getType()) {
      case Token.NAME:
        return getString().isEmpty() ? false : true;
      case Token.GETPROP:
        return getFirstChild().isUnscopedQualifiedName();
      default:
        return false;
    }
  }

  // ==========================================================================
  // Mutators

  /**
   * Removes this node from its parent. Equivalent to:
   * node.getParent().removeChild();
   */
  public Node detachFromParent() {
    int PROBE_START_LINE_1633 = 1633;
	com.google.javascript.rhino.Node f_parent_5058_line_1633 = parent;
	boolean node_1_expr282_line_1633 = f_parent_5058_line_1633 != null;
	int PROBE_END_LINE_1633 = 1633;
	Preconditions.checkState(node_1_expr282_line_1633);
    int PROBE_START_LINE_1634 = 1634;
	com.google.javascript.rhino.Node f_parent_5058_line_1634 = parent;
	int PROBE_END_LINE_1634 = 1634;
	f_parent_5058_line_1634.removeChild(this);
    return this;
  }

  /**
   * Removes the first child of Node. Equivalent to:
   * node.removeChild(node.getFirstChild());
   *
   * @return The removed Node.
   */
  public Node removeFirstChild() {
    Node child = first;
    if (child != null) {
      removeChild(child);
    }
    return child;
  }

  /**
   * @return A Node that is the head of the list of children.
   */
  public Node removeChildren() {
    Node children = first;
    for (Node child = first; child != null; child = child.getNext()) {
      child.parent = null;
    }
    first = null;
    last = null;
    return children;
  }

  /**
   * Removes all children from this node and isolates the children from each
   * other.
   */
  public void detachChildren() {
    for (Node child = first; child != null;) {
      Node nextChild = child.getNext();
      child.parent = null;
      child.next = null;
      child = nextChild;
    }
    first = null;
    last = null;
  }

  public Node removeChildAfter(Node prev) {
    Preconditions.checkArgument(prev.parent == this,
        "prev is not a child of this node.");
    Preconditions.checkArgument(prev.next != null,
        "no next sibling.");

    Node child = prev.next;
    prev.next = child.next;
    if (child == last) {
      last = prev;
    }
    child.next = null;
    child.parent = null;
    return child;
  }

  /**
   * @return A detached clone of the Node, specifically excluding its children.
   */
  public Node cloneNode() {
    Node result = null;
    try {
      int PROBE_START_LINE_1702 = 1702;
		Object node_1_expr288_line_1702 = super.clone();
		int PROBE_END_LINE_1702 = 1702;
	result = (Node) node_1_expr288_line_1702;
      // PropListItem lists are immutable and can be shared so there is no
      // need to clone them here.
      result.next = null;
      result.first = null;
      result.last = null;
      result.parent = null;
    } catch (CloneNotSupportedException e) {
      throw new RuntimeException(e.getMessage());
    }
    int PROBE_START_LINE_1712 = 1712;
	com.google.javascript.rhino.Node v_result_5236_line_1712 = result;
	int PROBE_END_LINE_1712 = 1712;
	return v_result_5236_line_1712;
  }

  /**
   * @return A detached clone of the Node and all its children.
   */
  public Node cloneTree() {
    int PROBE_START_LINE_1719 = 1719;
	Node node_1_expr293_line_1719 = cloneNode();
	Node result = node_1_expr293_line_1719;
    boolean FOR_STMT_TOGGLE_LINE_1720 = false;
	int PROBE_END_LINE_1719 = 1719;
	for (Node n2 = null; true;) {
      int PROBE_START_LINE_1721 = 1721;
		if (!FOR_STMT_TOGGLE_LINE_1720) {
			FOR_STMT_TOGGLE_LINE_1720 = true;
			Node node_1_expr295_line_1720 = getFirstChild();
			n2 = node_1_expr295_line_1720;
		} else {
			if (FOR_STMT_TOGGLE_LINE_1720) {
				com.google.javascript.rhino.Node v_n_2_5238_line_1720_v1 = n2;
				com.google.javascript.rhino.Node node_1_expr298_line_1720 = v_n_2_5238_line_1720_v1.getNext();
				n2 = node_1_expr298_line_1720;
			} else {
				FOR_STMT_TOGGLE_LINE_1720 = true;
			}
		}
		com.google.javascript.rhino.Node v_n_2_5238_line_1720 = n2;
		boolean node_1_expr296_line_1720 = v_n_2_5238_line_1720 != null;
		if (!(node_1_expr296_line_1720)) {
			break;
		}
		com.google.javascript.rhino.Node v_n_2_5238_line_1721 = n2;
		Node node_1_expr299_line_1721 = v_n_2_5238_line_1721.cloneTree();
		int PROBE_END_LINE_1721 = 1721;
	Node n2clone = node_1_expr299_line_1721;
      int PROBE_START_LINE_1722 = 1722;
	com.google.javascript.rhino.Node v_result_5237_line_1722 = result;
	int PROBE_END_LINE_1722 = 1722;
	n2clone.parent = v_result_5237_line_1722;
      int PROBE_START_LINE_1723 = 1725;
	com.google.javascript.rhino.Node v_result_5237_line_1723 = result;
	com.google.javascript.rhino.Node q_last_175_line_1723 = v_result_5237_line_1723.last;
	boolean node_1_expr301_line_1723 = q_last_175_line_1723 != null;
	int PROBE_END_LINE_1723 = 1725;
	if (node_1_expr301_line_1723) {
        int PROBE_START_LINE_1724 = 1724;
		com.google.javascript.rhino.Node v_n_2clone_5239_line_1724 = n2clone;
		int PROBE_END_LINE_1724 = 1724;
		result.last.next = v_n_2clone_5239_line_1724;
      }
      int PROBE_START_LINE_1726 = 1728;
	com.google.javascript.rhino.Node v_result_5237_line_1726 = result;
	com.google.javascript.rhino.Node q_first_177_line_1726 = v_result_5237_line_1726.first;
	boolean node_1_expr303_line_1726 = q_first_177_line_1726 == null;
	int PROBE_END_LINE_1726 = 1728;
	if (node_1_expr303_line_1726) {
        int PROBE_START_LINE_1727 = 1727;
		com.google.javascript.rhino.Node v_n_2clone_5239_line_1727 = n2clone;
		int PROBE_END_LINE_1727 = 1727;
		result.first = v_n_2clone_5239_line_1727;
      }
      int PROBE_START_LINE_1729 = 1729;
	com.google.javascript.rhino.Node v_n_2clone_5239_line_1729 = n2clone;
	int PROBE_END_LINE_1729 = 1729;
	result.last = v_n_2clone_5239_line_1729;
    }
    int PROBE_START_LINE_1731 = 1731;
	com.google.javascript.rhino.Node v_result_5237_line_1731 = result;
	int PROBE_END_LINE_1731 = 1731;
	return v_result_5237_line_1731;
  }

  /**
   * Copies source file and name information from the other
   * node given to the current node. Used for maintaining
   * debug information across node append and remove operations.
   * @return this
   */
  // TODO(nicksantos): The semantics of this method are ill-defined. Delete it.
  public Node copyInformationFrom(Node other) {
    if (getProp(ORIGINALNAME_PROP) == null) {
      putProp(ORIGINALNAME_PROP, other.getProp(ORIGINALNAME_PROP));
    }

    if (getProp(STATIC_SOURCE_FILE) == null) {
      putProp(STATIC_SOURCE_FILE, other.getProp(STATIC_SOURCE_FILE));
      sourcePosition = other.sourcePosition;
    }

    return this;
  }

  /**
   * Copies source file and name information from the other node to the
   * entire tree rooted at this node.
   * @return this
   */
  // TODO(nicksantos): The semantics of this method are ill-defined. Delete it.
  public Node copyInformationFromForTree(Node other) {
    copyInformationFrom(other);
    for (Node child = getFirstChild();
         child != null; child = child.getNext()) {
      child.copyInformationFromForTree(other);
    }

    return this;
  }

  /**
   * Overwrite all the source information in this node with
   * that of {@code other}.
   */
  public Node useSourceInfoFrom(Node other) {
    putProp(ORIGINALNAME_PROP, other.getProp(ORIGINALNAME_PROP));
    putProp(STATIC_SOURCE_FILE, other.getProp(STATIC_SOURCE_FILE));
    sourcePosition = other.sourcePosition;
    return this;
  }

  public Node srcref(Node other) {
    return useSourceInfoFrom(other);
  }

  /**
   * Overwrite all the source information in this node and its subtree with
   * that of {@code other}.
   */
  public Node useSourceInfoFromForTree(Node other) {
    useSourceInfoFrom(other);
    for (Node child = getFirstChild();
         child != null; child = child.getNext()) {
      child.useSourceInfoFromForTree(other);
    }

    return this;
  }

  public Node srcrefTree(Node other) {
    return useSourceInfoFromForTree(other);
  }

  /**
   * Overwrite all the source information in this node with
   * that of {@code other} iff the source info is missing.
   */
  public Node useSourceInfoIfMissingFrom(Node other) {
    if (getProp(ORIGINALNAME_PROP) == null) {
      putProp(ORIGINALNAME_PROP, other.getProp(ORIGINALNAME_PROP));
    }

    if (getProp(STATIC_SOURCE_FILE) == null) {
      putProp(STATIC_SOURCE_FILE, other.getProp(STATIC_SOURCE_FILE));
      sourcePosition = other.sourcePosition;
    }

    return this;
  }

  /**
   * Overwrite all the source information in this node and its subtree with
   * that of {@code other} iff the source info is missing.
   */
  public Node useSourceInfoIfMissingFromForTree(Node other) {
    useSourceInfoIfMissingFrom(other);
    for (Node child = getFirstChild();
         child != null; child = child.getNext()) {
      child.useSourceInfoIfMissingFromForTree(other);
    }

    return this;
  }

  //==========================================================================
  // Custom annotations

  public JSType getJSType() {
      int PROBE_START_LINE_1838 = 1838;
	com.google.javascript.rhino.jstype.JSType f_js_type_5225_line_1838 = jsType;
	int PROBE_END_LINE_1838 = 1838;
	return f_js_type_5225_line_1838;
  }

  public void setJSType(JSType jsType) {
      int PROBE_START_LINE_1842 = 1842;
	com.google.javascript.rhino.jstype.JSType p_js_type_5248_line_1842 = jsType;
	int PROBE_END_LINE_1842 = 1842;
	this.jsType = p_js_type_5248_line_1842;
  }

  public FileLevelJsDocBuilder getJsDocBuilderForNode() {
    return new FileLevelJsDocBuilder();
  }

  /**
   * An inner class that provides back-door access to the license
   * property of the JSDocInfo property for this node. This is only
   * meant to be used for top-level script nodes where the
   * {@link com.google.javascript.jscomp.parsing.JsDocInfoParser} needs to
   * be able to append directly to the top-level node, not just the
   * current node.
   */
  public class FileLevelJsDocBuilder {
    public void append(String fileLevelComment) {
      JSDocInfo jsDocInfo = getJSDocInfo();
      if (jsDocInfo == null) {
        // TODO(user): Is there a way to determine whether to
        // parse the JsDoc documentation from here?
        jsDocInfo = new JSDocInfo(false);
      }
      String license = jsDocInfo.getLicense();
      if (license == null) {
        license = "";
      }
      jsDocInfo.setLicense(license + fileLevelComment);
      setJSDocInfo(jsDocInfo);
    }
  }

  /**
   * Get the {@link JSDocInfo} attached to this node.
   * @return the information or {@code null} if no JSDoc is attached to this
   * node
   */
  public JSDocInfo getJSDocInfo() {
    int PROBE_START_LINE_1880 = 1880;
	int f_jsdoc_info_prop_5250_line_1880 = JSDOC_INFO_PROP;
	Object node_1_expr311_line_1880 = getProp(f_jsdoc_info_prop_5250_line_1880);
	int PROBE_END_LINE_1880 = 1880;
	return (JSDocInfo) node_1_expr311_line_1880;
  }

  /**
   * Sets the {@link JSDocInfo} attached to this node.
   */
  public Node setJSDocInfo(JSDocInfo info) {
      int PROBE_START_LINE_1887 = 1887;
	int f_jsdoc_info_prop_5250_line_1887 = JSDOC_INFO_PROP;
	com.google.javascript.rhino.JSDocInfo p_info_5251_line_1887 = info;
	int PROBE_END_LINE_1887 = 1887;
	putProp(f_jsdoc_info_prop_5250_line_1887, p_info_5251_line_1887);
      return this;
  }

  /** This node was last changed at {@code time} */
  public void setChangeTime(int time) {
    putIntProp(CHANGE_TIME, time);
  }

  /** Returns the time of the last change for this node */
  public int getChangeTime() {
    int PROBE_START_LINE_1898 = 1898;
	int f_change_time_5253_line_1898 = CHANGE_TIME;
	int node_1_expr314_line_1898 = getIntProp(f_change_time_5253_line_1898);
	int PROBE_END_LINE_1898 = 1898;
	return node_1_expr314_line_1898;
  }

  /**
   * Sets whether this node is a variable length argument node. This
   * method is meaningful only on {@link Token#NAME} nodes
   * used to define a {@link Token#FUNCTION}'s argument list.
   */
  public void setVarArgs(boolean varArgs) {
    int PROBE_START_LINE_1907 = 1907;
	int f_var_args_name_5255_line_1907 = VAR_ARGS_NAME;
	boolean p_var_args_5254_line_1907 = varArgs;
	int PROBE_END_LINE_1907 = 1907;
	putBooleanProp(f_var_args_name_5255_line_1907, p_var_args_5254_line_1907);
  }

  /**
   * Returns whether this node is a variable length argument node. This
   * method's return value is meaningful only on {@link Token#NAME} nodes
   * used to define a {@link Token#FUNCTION}'s argument list.
   */
  public boolean isVarArgs() {
    return getBooleanProp(VAR_ARGS_NAME);
  }

  /**
   * Sets whether this node is an optional argument node. This
   * method is meaningful only on {@link Token#NAME} nodes
   * used to define a {@link Token#FUNCTION}'s argument list.
   */
  public void setOptionalArg(boolean optionalArg) {
    int PROBE_START_LINE_1925 = 1925;
	int f_opt_arg_name_5257_line_1925 = OPT_ARG_NAME;
	boolean p_optional_arg_5256_line_1925 = optionalArg;
	int PROBE_END_LINE_1925 = 1925;
	putBooleanProp(f_opt_arg_name_5257_line_1925, p_optional_arg_5256_line_1925);
  }

  /**
   * Returns whether this node is an optional argument node. This
   * method's return value is meaningful only on {@link Token#NAME} nodes
   * used to define a {@link Token#FUNCTION}'s argument list.
   */
  public boolean isOptionalArg() {
    return getBooleanProp(OPT_ARG_NAME);
  }

  /**
   * Sets whether this is a synthetic block that should not be considered
   * a real source block.
   */
  public void setIsSyntheticBlock(boolean val) {
    int PROBE_START_LINE_1942 = 1942;
	int f_synthetic_block_prop_5259_line_1942 = SYNTHETIC_BLOCK_PROP;
	boolean p_val_5258_line_1942 = val;
	int PROBE_END_LINE_1942 = 1942;
	putBooleanProp(f_synthetic_block_prop_5259_line_1942, p_val_5258_line_1942);
  }

  /**
   * Returns whether this is a synthetic block that should not be considered
   * a real source block.
   */
  public boolean isSyntheticBlock() {
    int PROBE_START_LINE_1950 = 1950;
	int f_synthetic_block_prop_5259_line_1950 = SYNTHETIC_BLOCK_PROP;
	boolean node_1_expr318_line_1950 = getBooleanProp(f_synthetic_block_prop_5259_line_1950);
	int PROBE_END_LINE_1950 = 1950;
	return node_1_expr318_line_1950;
  }

  /**
   * Sets the ES5 directives on this node.
   */
  public void setDirectives(Set<String> val) {
    putProp(DIRECTIVES, val);
  }

  /**
   * Returns the set of ES5 directives for this node.
   */
  @SuppressWarnings("unchecked")
  public Set<String> getDirectives() {
    return (Set<String>) getProp(DIRECTIVES);
  }

  /**
   * Adds a warning to be suppressed. This is indistinguishable
   * from having a {@code @suppress} tag in the code.
   */
  public void addSuppression(String warning) {
    if (getJSDocInfo() == null) {
      setJSDocInfo(new JSDocInfo(false));
    }
    getJSDocInfo().addSuppression(warning);
  }

  /**
   * Sets whether this is a synthetic block that should not be considered
   * a real source block.
   */
  public void setWasEmptyNode(boolean val) {
    putBooleanProp(EMPTY_BLOCK, val);
  }

  /**
   * Returns whether this is a synthetic block that should not be considered
   * a real source block.
   */
  public boolean wasEmptyNode() {
    return getBooleanProp(EMPTY_BLOCK);
  }

  // There are four values of interest:
  //   global state changes
  //   this state changes
  //   arguments state changes
  //   whether the call throws an exception
  //   locality of the result
  // We want a value of 0 to mean "global state changes and
  // unknown locality of result".

  public static final int FLAG_GLOBAL_STATE_UNMODIFIED = 1;
  public static final int FLAG_THIS_UNMODIFIED = 2;
  public static final int FLAG_ARGUMENTS_UNMODIFIED = 4;
  public static final int FLAG_NO_THROWS = 8;
  public static final int FLAG_LOCAL_RESULTS = 16;

  public static final int SIDE_EFFECTS_FLAGS_MASK = 31;

  public static final int SIDE_EFFECTS_ALL = 0;
  public static final int NO_SIDE_EFFECTS =
    FLAG_GLOBAL_STATE_UNMODIFIED
    | FLAG_THIS_UNMODIFIED
    | FLAG_ARGUMENTS_UNMODIFIED
    | FLAG_NO_THROWS;

  /**
   * Marks this function or constructor call's side effect flags.
   * This property is only meaningful for {@link Token#CALL} and
   * {@link Token#NEW} nodes.
   */
  public void setSideEffectFlags(int flags) {
    Preconditions.checkArgument(
       getType() == Token.CALL || getType() == Token.NEW,
       "setIsNoSideEffectsCall only supports CALL and NEW nodes, got " +
       Token.name(getType()));

    putIntProp(SIDE_EFFECT_FLAGS, flags);
  }

  public void setSideEffectFlags(SideEffectFlags flags) {
    setSideEffectFlags(flags.valueOf());
  }

  /**
   * Returns the side effects flags for this node.
   */
  public int getSideEffectFlags() {
    return getIntProp(SIDE_EFFECT_FLAGS);
  }

  /**
   * A helper class for getting and setting the side-effect flags.
   * @author johnlenz@google.com (John Lenz)
   */
  public static class SideEffectFlags {
    private int value = Node.SIDE_EFFECTS_ALL;

    public SideEffectFlags() {
    }

    public SideEffectFlags(int value) {
      this.value = value;
    }

    public int valueOf() {
      return value;
    }

    /** All side-effect occur and the returned results are non-local. */
    public SideEffectFlags setAllFlags() {
      value = Node.SIDE_EFFECTS_ALL;
      return this;
    }

    /** No side-effects occur and the returned results are local. */
    public SideEffectFlags clearAllFlags() {
      value = Node.NO_SIDE_EFFECTS | Node.FLAG_LOCAL_RESULTS;
      return this;
    }

    public boolean areAllFlagsSet() {
      return value == Node.SIDE_EFFECTS_ALL;
    }

    /**
     * Preserve the return result flag, but clear the others:
     *   no global state change, no throws, no this change, no arguments change
     */
    public void clearSideEffectFlags() {
      value |= Node.NO_SIDE_EFFECTS;
    }

    public SideEffectFlags setMutatesGlobalState() {
      // Modify global means everything must be assumed to be modified.
      removeFlag(Node.FLAG_GLOBAL_STATE_UNMODIFIED);
      removeFlag(Node.FLAG_ARGUMENTS_UNMODIFIED);
      removeFlag(Node.FLAG_THIS_UNMODIFIED);
      return this;
    }

    public SideEffectFlags setThrows() {
      removeFlag(Node.FLAG_NO_THROWS);
      return this;
    }

    public SideEffectFlags setMutatesThis() {
      removeFlag(Node.FLAG_THIS_UNMODIFIED);
      return this;
    }

    public SideEffectFlags setMutatesArguments() {
      removeFlag(Node.FLAG_ARGUMENTS_UNMODIFIED);
      return this;
    }

    public SideEffectFlags setReturnsTainted() {
      removeFlag(Node.FLAG_LOCAL_RESULTS);
      return this;
    }

    private void removeFlag(int flag) {
      value &= ~flag;
    }
  }

  /**
   * @return Whether the only side-effect is "modifies this"
   */
  public boolean isOnlyModifiesThisCall() {
    return areBitFlagsSet(
        getSideEffectFlags() & Node.NO_SIDE_EFFECTS,
        Node.FLAG_GLOBAL_STATE_UNMODIFIED
            | Node.FLAG_ARGUMENTS_UNMODIFIED
            | Node.FLAG_NO_THROWS);
  }

  /**
   * @return Whether the only side-effect is "modifies arguments"
   */
  public boolean isOnlyModifiesArgumentsCall() {
    return areBitFlagsSet(
        getSideEffectFlags() & Node.NO_SIDE_EFFECTS,
        Node.FLAG_GLOBAL_STATE_UNMODIFIED
            | Node.FLAG_THIS_UNMODIFIED
            | Node.FLAG_NO_THROWS);
  }

  /**
   * Returns true if this node is a function or constructor call that
   * has no side effects.
   */
  public boolean isNoSideEffectsCall() {
    return areBitFlagsSet(getSideEffectFlags(), NO_SIDE_EFFECTS);
  }

  /**
   * Returns true if this node is a function or constructor call that
   * returns a primitive or a local object (an object that has no other
   * references).
   */
  public boolean isLocalResultCall() {
    return areBitFlagsSet(getSideEffectFlags(), FLAG_LOCAL_RESULTS);
  }

  /** Returns true if this is a new/call that may mutate its arguments. */
  public boolean mayMutateArguments() {
    return !areBitFlagsSet(getSideEffectFlags(), FLAG_ARGUMENTS_UNMODIFIED);
  }

  /** Returns true if this is a new/call that may mutate global state or throw. */
  public boolean mayMutateGlobalStateOrThrow() {
    return !areBitFlagsSet(getSideEffectFlags(),
        FLAG_GLOBAL_STATE_UNMODIFIED | FLAG_NO_THROWS);
  }

  /**
   * returns true if all the flags are set in value.
   */
  private boolean areBitFlagsSet(int value, int flags) {
    return (value & flags) == flags;
  }

  /**
   * This should only be called for STRING nodes children of OBJECTLIT.
   */
  public boolean isQuotedString() {
    return false;
  }

  /**
   * This should only be called for STRING nodes children of OBJECTLIT.
   */
  public void setQuotedString() {
    throw new IllegalStateException("not a StringNode");
  }

  static class NodeMismatch {
    final Node nodeA;
    final Node nodeB;

    NodeMismatch(Node nodeA, Node nodeB) {
      this.nodeA = nodeA;
      this.nodeB = nodeB;
    }

    @Override
    public boolean equals(Object object) {
      if (object instanceof NodeMismatch) {
        NodeMismatch that = (NodeMismatch) object;
        return that.nodeA.equals(this.nodeA) && that.nodeB.equals(this.nodeB);
      }
      return false;
    }

    @Override
    public int hashCode() {
      return Objects.hashCode(nodeA, nodeB);
    }
  }


  /*** AST type check methods ***/

  public boolean isAdd() {
    return this.getType() == Token.ADD;
  }

  public boolean isAnd() {
    int PROBE_START_LINE_2222 = 2222;
	int node_1_expr320_line_2222 = this.getType();
	int q_and_178_line_2222 = Token.AND;
	boolean node_1_expr319_line_2222 = node_1_expr320_line_2222 == q_and_178_line_2222;
	int PROBE_END_LINE_2222 = 2222;
	return node_1_expr319_line_2222;
  }

  public boolean isArrayLit() {
    return this.getType() == Token.ARRAYLIT;
  }

  public boolean isAssign() {
    int PROBE_START_LINE_2230 = 2230;
	int node_1_expr323_line_2230 = this.getType();
	int q_assign_179_line_2230 = Token.ASSIGN;
	boolean node_1_expr322_line_2230 = node_1_expr323_line_2230 == q_assign_179_line_2230;
	int PROBE_END_LINE_2230 = 2230;
	return node_1_expr322_line_2230;
  }

  public boolean isAssignAdd() {
    return this.getType() == Token.ASSIGN_ADD;
  }

  public boolean isBlock() {
    int PROBE_START_LINE_2238 = 2238;
	int node_1_expr326_line_2238 = this.getType();
	int q_block_179_line_2238 = Token.BLOCK;
	boolean node_1_expr325_line_2238 = node_1_expr326_line_2238 == q_block_179_line_2238;
	int PROBE_END_LINE_2238 = 2238;
	return node_1_expr325_line_2238;
  }

  public boolean isBreak() {
    return this.getType() == Token.BREAK;
  }

  public boolean isCall() {
    int PROBE_START_LINE_2246 = 2246;
	int node_1_expr329_line_2246 = this.getType();
	int q_call_179_line_2246 = Token.CALL;
	boolean node_1_expr328_line_2246 = node_1_expr329_line_2246 == q_call_179_line_2246;
	int PROBE_END_LINE_2246 = 2246;
	return node_1_expr328_line_2246;
  }

  public boolean isCase() {
    return this.getType() == Token.CASE;
  }

  public boolean isCast() {
    int PROBE_START_LINE_2254 = 2254;
	int node_1_expr332_line_2254 = this.getType();
	int q_cast_179_line_2254 = Token.CAST;
	boolean node_1_expr331_line_2254 = node_1_expr332_line_2254 == q_cast_179_line_2254;
	int PROBE_END_LINE_2254 = 2254;
	return node_1_expr331_line_2254;
  }

  public boolean isCatch() {
    return this.getType() == Token.CATCH;
  }

  public boolean isComma() {
    int PROBE_START_LINE_2262 = 2262;
	int node_1_expr335_line_2262 = this.getType();
	int q_comma_180_line_2262 = Token.COMMA;
	boolean node_1_expr334_line_2262 = node_1_expr335_line_2262 == q_comma_180_line_2262;
	int PROBE_END_LINE_2262 = 2262;
	return node_1_expr334_line_2262;
  }

  public boolean isContinue() {
    return this.getType() == Token.CONTINUE;
  }

  public boolean isDebugger() {
    return this.getType() == Token.DEBUGGER;
  }

  public boolean isDec() {
    return this.getType() == Token.DEC;
  }

  public boolean isDefaultCase() {
    return this.getType() == Token.DEFAULT_CASE;
  }

  public boolean isDelProp() {
    return this.getType() == Token.DELPROP;
  }

  public boolean isDo() {
    return this.getType() == Token.DO;
  }

  public boolean isEmpty() {
    int PROBE_START_LINE_2290 = 2290;
	int node_1_expr338_line_2290 = this.getType();
	int q_empty_181_line_2290 = Token.EMPTY;
	boolean node_1_expr337_line_2290 = node_1_expr338_line_2290 == q_empty_181_line_2290;
	int PROBE_END_LINE_2290 = 2290;
	return node_1_expr337_line_2290;
  }

  public boolean isExprResult() {
    int PROBE_START_LINE_2294 = 2294;
	int node_1_expr341_line_2294 = this.getType();
	int q_expr_result_182_line_2294 = Token.EXPR_RESULT;
	boolean node_1_expr340_line_2294 = node_1_expr341_line_2294 == q_expr_result_182_line_2294;
	int PROBE_END_LINE_2294 = 2294;
	return node_1_expr340_line_2294;
  }

  public boolean isFalse() {
    return this.getType() == Token.FALSE;
  }

  public boolean isFor() {
    int PROBE_START_LINE_2302 = 2302;
	int node_1_expr344_line_2302 = this.getType();
	int q_for_182_line_2302 = Token.FOR;
	boolean node_1_expr343_line_2302 = node_1_expr344_line_2302 == q_for_182_line_2302;
	int PROBE_END_LINE_2302 = 2302;
	return node_1_expr343_line_2302;
  }

  public boolean isFunction() {
    int PROBE_START_LINE_2306 = 2306;
	int node_1_expr347_line_2306 = this.getType();
	int q_function_183_line_2306 = Token.FUNCTION;
	boolean node_1_expr346_line_2306 = node_1_expr347_line_2306 == q_function_183_line_2306;
	int PROBE_END_LINE_2306 = 2306;
	return node_1_expr346_line_2306;
  }

  public boolean isGetterDef() {
    int PROBE_START_LINE_2310 = 2310;
	int node_1_expr350_line_2310 = this.getType();
	int q_getter_def_183_line_2310 = Token.GETTER_DEF;
	boolean node_1_expr349_line_2310 = node_1_expr350_line_2310 == q_getter_def_183_line_2310;
	int PROBE_END_LINE_2310 = 2310;
	return node_1_expr349_line_2310;
  }

  public boolean isGetElem() {
    int PROBE_START_LINE_2314 = 2314;
	int node_1_expr353_line_2314 = this.getType();
	int q_getelem_184_line_2314 = Token.GETELEM;
	boolean node_1_expr352_line_2314 = node_1_expr353_line_2314 == q_getelem_184_line_2314;
	int PROBE_END_LINE_2314 = 2314;
	return node_1_expr352_line_2314;
  }

  public boolean isGetProp() {
    int PROBE_START_LINE_2318 = 2318;
	int node_1_expr356_line_2318 = this.getType();
	int q_getprop_185_line_2318 = Token.GETPROP;
	boolean node_1_expr355_line_2318 = node_1_expr356_line_2318 == q_getprop_185_line_2318;
	int PROBE_END_LINE_2318 = 2318;
	return node_1_expr355_line_2318;
  }

  public boolean isHook() {
    int PROBE_START_LINE_2322 = 2322;
	int node_1_expr359_line_2322 = this.getType();
	int q_hook_185_line_2322 = Token.HOOK;
	boolean node_1_expr358_line_2322 = node_1_expr359_line_2322 == q_hook_185_line_2322;
	int PROBE_END_LINE_2322 = 2322;
	return node_1_expr358_line_2322;
  }

  public boolean isIf() {
    return this.getType() == Token.IF;
  }

  public boolean isIn() {
    return this.getType() == Token.IN;
  }

  public boolean isInc() {
    return this.getType() == Token.INC;
  }

  public boolean isInstanceOf() {
    return this.getType() == Token.INSTANCEOF;
  }

  public boolean isLabel() {
    return this.getType() == Token.LABEL;
  }

  public boolean isLabelName() {
    return this.getType() == Token.LABEL_NAME;
  }

  public boolean isName() {
    int PROBE_START_LINE_2350 = 2350;
	int node_1_expr362_line_2350 = this.getType();
	int q_name_186_line_2350 = Token.NAME;
	boolean node_1_expr361_line_2350 = node_1_expr362_line_2350 == q_name_186_line_2350;
	int PROBE_END_LINE_2350 = 2350;
	return node_1_expr361_line_2350;
  }

  public boolean isNE() {
    return this.getType() == Token.NE;
  }

  public boolean isNew() {
    int PROBE_START_LINE_2358 = 2358;
	int node_1_expr365_line_2358 = this.getType();
	int q_new_186_line_2358 = Token.NEW;
	boolean node_1_expr364_line_2358 = node_1_expr365_line_2358 == q_new_186_line_2358;
	int PROBE_END_LINE_2358 = 2358;
	return node_1_expr364_line_2358;
  }

  public boolean isNot() {
    return this.getType() == Token.NOT;
  }

  public boolean isNull() {
    return this.getType() == Token.NULL;
  }

  public boolean isNumber() {
    int PROBE_START_LINE_2370 = 2370;
	int node_1_expr368_line_2370 = this.getType();
	int q_number_187_line_2370 = Token.NUMBER;
	boolean node_1_expr367_line_2370 = node_1_expr368_line_2370 == q_number_187_line_2370;
	int PROBE_END_LINE_2370 = 2370;
	return node_1_expr367_line_2370;
  }

  public boolean isObjectLit() {
    int PROBE_START_LINE_2374 = 2374;
	int node_1_expr371_line_2374 = this.getType();
	int q_objectlit_187_line_2374 = Token.OBJECTLIT;
	boolean node_1_expr370_line_2374 = node_1_expr371_line_2374 == q_objectlit_187_line_2374;
	int PROBE_END_LINE_2374 = 2374;
	return node_1_expr370_line_2374;
  }

  public boolean isOr() {
    int PROBE_START_LINE_2378 = 2378;
	int node_1_expr374_line_2378 = this.getType();
	int q_or_187_line_2378 = Token.OR;
	boolean node_1_expr373_line_2378 = node_1_expr374_line_2378 == q_or_187_line_2378;
	int PROBE_END_LINE_2378 = 2378;
	return node_1_expr373_line_2378;
  }

  public boolean isParamList() {
    int PROBE_START_LINE_2382 = 2382;
	int node_1_expr377_line_2382 = this.getType();
	int q_param_list_188_line_2382 = Token.PARAM_LIST;
	boolean node_1_expr376_line_2382 = node_1_expr377_line_2382 == q_param_list_188_line_2382;
	int PROBE_END_LINE_2382 = 2382;
	return node_1_expr376_line_2382;
  }

  public boolean isRegExp() {
    return this.getType() == Token.REGEXP;
  }

  public boolean isReturn() {
    int PROBE_START_LINE_2390 = 2390;
	int node_1_expr380_line_2390 = this.getType();
	int q_return_188_line_2390 = Token.RETURN;
	boolean node_1_expr379_line_2390 = node_1_expr380_line_2390 == q_return_188_line_2390;
	int PROBE_END_LINE_2390 = 2390;
	return node_1_expr379_line_2390;
  }

  public boolean isScript() {
    int PROBE_START_LINE_2394 = 2394;
	int node_1_expr383_line_2394 = this.getType();
	int q_script_189_line_2394 = Token.SCRIPT;
	boolean node_1_expr382_line_2394 = node_1_expr383_line_2394 == q_script_189_line_2394;
	int PROBE_END_LINE_2394 = 2394;
	return node_1_expr382_line_2394;
  }

  public boolean isSetterDef() {
    int PROBE_START_LINE_2398 = 2398;
	int node_1_expr386_line_2398 = this.getType();
	int q_setter_def_189_line_2398 = Token.SETTER_DEF;
	boolean node_1_expr385_line_2398 = node_1_expr386_line_2398 == q_setter_def_189_line_2398;
	int PROBE_END_LINE_2398 = 2398;
	return node_1_expr385_line_2398;
  }

  public boolean isString() {
    int PROBE_START_LINE_2402 = 2402;
	int node_1_expr389_line_2402 = this.getType();
	int q_string_190_line_2402 = Token.STRING;
	boolean node_1_expr388_line_2402 = node_1_expr389_line_2402 == q_string_190_line_2402;
	int PROBE_END_LINE_2402 = 2402;
	return node_1_expr388_line_2402;
  }

  public boolean isStringKey() {
    int PROBE_START_LINE_2406 = 2406;
	int node_1_expr392_line_2406 = this.getType();
	int q_string_key_190_line_2406 = Token.STRING_KEY;
	boolean node_1_expr391_line_2406 = node_1_expr392_line_2406 == q_string_key_190_line_2406;
	int PROBE_END_LINE_2406 = 2406;
	return node_1_expr391_line_2406;
  }

  public boolean isSwitch() {
    return this.getType() == Token.SWITCH;
  }

  public boolean isThis() {
    return this.getType() == Token.THIS;
  }

  public boolean isThrow() {
    return this.getType() == Token.THROW;
  }

  public boolean isTrue() {
    int PROBE_START_LINE_2422 = 2422;
	int node_1_expr395_line_2422 = this.getType();
	int q_true_190_line_2422 = Token.TRUE;
	boolean node_1_expr394_line_2422 = node_1_expr395_line_2422 == q_true_190_line_2422;
	int PROBE_END_LINE_2422 = 2422;
	return node_1_expr394_line_2422;
  }

  public boolean isTry() {
    int PROBE_START_LINE_2426 = 2426;
	int node_1_expr398_line_2426 = this.getType();
	int q_try_190_line_2426 = Token.TRY;
	boolean node_1_expr397_line_2426 = node_1_expr398_line_2426 == q_try_190_line_2426;
	int PROBE_END_LINE_2426 = 2426;
	return node_1_expr397_line_2426;
  }

  public boolean isTypeOf() {
    return this.getType() == Token.TYPEOF;
  }

  public boolean isVar() {
    int PROBE_START_LINE_2434 = 2434;
	int node_1_expr401_line_2434 = this.getType();
	int q_var_191_line_2434 = Token.VAR;
	boolean node_1_expr400_line_2434 = node_1_expr401_line_2434 == q_var_191_line_2434;
	int PROBE_END_LINE_2434 = 2434;
	return node_1_expr400_line_2434;
  }

  public boolean isVoid() {
    return this.getType() == Token.VOID;
  }

  public boolean isWhile() {
    return this.getType() == Token.WHILE;
  }

  public boolean isWith() {
    return this.getType() == Token.WITH;
  }
}
