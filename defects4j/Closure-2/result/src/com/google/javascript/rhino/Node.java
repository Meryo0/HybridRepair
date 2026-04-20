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
      LAST_PROP          = 55;

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
        default:
          throw new IllegalStateException("unexpect prop id " + propType);
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
    boolean isEquivalentTo(Node node, boolean compareJsType, boolean recurse) {
      boolean equivalent = super.isEquivalentTo(node, compareJsType, recurse);
      if (equivalent) {
        double thisValue = getDouble();
        double thatValue = ((NumberNode) node).getDouble();
        if (thisValue == thatValue) {
          // detect the difference between 0.0 and -0.0.
          return (thisValue != 0.0) || (1/thisValue == 1/thatValue);
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
      int PROBE_START_LINE_189 = 191;
	String p_str_4403_line_189 = str;
	boolean node_1_expr2_line_189 = null == p_str_4403_line_189;
	int PROBE_END_LINE_189 = 191;
	if (node_1_expr2_line_189) {
        throw new IllegalArgumentException("StringNode: str is null");
      }
      int PROBE_START_LINE_192 = 192;
	String p_str_4403_line_192 = str;
	int PROBE_END_LINE_192 = 192;
	this.str = p_str_4403_line_192;
    }

    StringNode(int type, String str, int lineno, int charno) {
      super(type, lineno, charno);
      int PROBE_START_LINE_197 = 199;
	String p_str_4406_line_197 = str;
	boolean node_1_expr7_line_197 = null == p_str_4406_line_197;
	int PROBE_END_LINE_197 = 199;
	if (node_1_expr7_line_197) {
        throw new IllegalArgumentException("StringNode: str is null");
      }
      int PROBE_START_LINE_200 = 200;
	String p_str_4406_line_200 = str;
	int PROBE_END_LINE_200 = 200;
	this.str = p_str_4406_line_200;
    }

    /**
     * returns the string content.
     * @return non null.
     */
    @Override
    public String getString() {
      int PROBE_START_LINE_209 = 209;
		String f_str_4404_line_209 = this.str;
		int PROBE_END_LINE_209 = 209;
	return f_str_4404_line_209;
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
    boolean isEquivalentTo(Node node, boolean compareJsType, boolean recurse) {
      int PROBE_START_LINE_226 = 227;
		com.google.javascript.rhino.Node p_node_4410_line_226 = node;
		boolean p_compare_js_type_4411_line_226 = compareJsType;
		boolean p_recurse_4412_line_226 = recurse;
		boolean node_1_expr15_line_226 = super.isEquivalentTo(p_node_4410_line_226, p_compare_js_type_4411_line_226,
				p_recurse_4412_line_226);
		boolean node_1_expr14_line_226 = node_1_expr15_line_226 && this.str.equals(((StringNode) node).str);
		boolean node_1_expr13_line_226 = (node_1_expr14_line_226);
		int PROBE_END_LINE_226 = 227;
	return node_1_expr13_line_226;
    }

    /**
     * If the property is not defined, this was not a quoted key.  The
     * QUOTED_PROP int property is only assigned to STRING tokens used as
     * object lit keys.
     * @return true if this was a quoted string key in an object literal.
     */
    @Override
    public boolean isQuotedString() {
      return getBooleanProp(QUOTED_PROP);
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

  private static abstract class AbstractPropListItem
      implements PropListItem, Serializable {
    private static final long serialVersionUID = 1L;

    private final PropListItem next;
    private final int propType;

    AbstractPropListItem(int propType, PropListItem next) {
      int PROBE_START_LINE_269 = 269;
		int p_prop_type_4414_line_269 = propType;
		int PROBE_END_LINE_269 = 269;
	this.propType = p_prop_type_4414_line_269;
      int PROBE_START_LINE_270 = 270;
	com.google.javascript.rhino.Node.PropListItem p_next_4415_line_270 = next;
	int PROBE_END_LINE_270 = 270;
	this.next = p_next_4415_line_270;
    }

    @Override
    public int getType() {
      int PROBE_START_LINE_275 = 275;
		int f_prop_type_4416_line_275 = propType;
		int PROBE_END_LINE_275 = 275;
	return f_prop_type_4416_line_275;
    }

    @Override
    public PropListItem getNext() {
      int PROBE_START_LINE_280 = 280;
		com.google.javascript.rhino.Node.PropListItem f_next_4417_line_280 = next;
		int PROBE_END_LINE_280 = 280;
	return f_next_4417_line_280;
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
      int PROBE_START_LINE_296 = 296;
	Object p_object_value_4420_line_296 = objectValue;
	int PROBE_END_LINE_296 = 296;
	this.objectValue = p_object_value_4420_line_296;
    }

    @Override
    public int getIntValue() {
      throw new UnsupportedOperationException();
    }

    @Override
    public Object getObjectValue() {
      int PROBE_START_LINE_306 = 306;
		Object f_object_value_4422_line_306 = objectValue;
		int PROBE_END_LINE_306 = 306;
	return f_object_value_4422_line_306;
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
      int PROBE_START_LINE_328 = 328;
	int p_int_value_4425_line_328 = intValue;
	int PROBE_END_LINE_328 = 328;
	this.intValue = p_int_value_4425_line_328;
    }

    @Override
    public int getIntValue() {
      return intValue;
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
      int PROBE_START_LINE_348 = 348;
		int node_1_expr31_line_348 = getType();
		int f_int_value_4427_line_348 = intValue;
		com.google.javascript.rhino.Node.PropListItem p_next_4428_line_348 = next;
		int PROBE_END_LINE_348 = 348;
	return new IntPropListItem(node_1_expr31_line_348, f_int_value_4427_line_348, p_next_4428_line_348);
    }
  }

  public Node(int nodeType) {
    int PROBE_START_LINE_353 = 353;
	int p_node_type_4429_line_353 = nodeType;
	int PROBE_END_LINE_353 = 353;
	type = p_node_type_4429_line_353;
    parent = null;
    int PROBE_START_LINE_355 = 355;
	int node_1_expr35_line_355 = -1;
	int PROBE_END_LINE_355 = 355;
	sourcePosition = node_1_expr35_line_355;
  }

  public Node(int nodeType, Node child) {
    int PROBE_START_LINE_359 = 360;
	com.google.javascript.rhino.Node p_child_4434_line_359 = child;
	com.google.javascript.rhino.Node q_parent_117_line_359 = p_child_4434_line_359.parent;
	boolean node_1_expr37_line_359 = q_parent_117_line_359 == null;
	int PROBE_END_LINE_359 = 360;
	Preconditions.checkArgument(node_1_expr37_line_359,
        "new child has existing parent");
    int PROBE_START_LINE_361 = 362;
	com.google.javascript.rhino.Node p_child_4434_line_361 = child;
	com.google.javascript.rhino.Node q_next_118_line_361 = p_child_4434_line_361.next;
	boolean node_1_expr39_line_361 = q_next_118_line_361 == null;
	int PROBE_END_LINE_361 = 362;
	Preconditions.checkArgument(node_1_expr39_line_361,
        "new child has existing sibling");

    int PROBE_START_LINE_364 = 364;
	int p_node_type_4433_line_364 = nodeType;
	int PROBE_END_LINE_364 = 364;
	type = p_node_type_4433_line_364;
    parent = null;
    int PROBE_START_LINE_366 = 366;
	com.google.javascript.rhino.Node p_child_4434_line_366 = child;
	int PROBE_END_LINE_366 = 366;
	first = last = p_child_4434_line_366;
    child.next = null;
    child.parent = this;
    int PROBE_START_LINE_369 = 369;
	int node_1_expr48_line_369 = -1;
	int PROBE_END_LINE_369 = 369;
	sourcePosition = node_1_expr48_line_369;
  }

  public Node(int nodeType, Node left, Node right) {
    int PROBE_START_LINE_373 = 374;
	com.google.javascript.rhino.Node p_left_4438_line_373 = left;
	com.google.javascript.rhino.Node q_parent_119_line_373 = p_left_4438_line_373.parent;
	boolean node_1_expr50_line_373 = q_parent_119_line_373 == null;
	int PROBE_END_LINE_373 = 374;
	Preconditions.checkArgument(node_1_expr50_line_373,
        "first new child has existing parent");
    int PROBE_START_LINE_375 = 376;
	com.google.javascript.rhino.Node p_left_4438_line_375 = left;
	com.google.javascript.rhino.Node q_next_120_line_375 = p_left_4438_line_375.next;
	boolean node_1_expr52_line_375 = q_next_120_line_375 == null;
	int PROBE_END_LINE_375 = 376;
	Preconditions.checkArgument(node_1_expr52_line_375,
        "first new child has existing sibling");
    int PROBE_START_LINE_377 = 378;
	com.google.javascript.rhino.Node p_right_4439_line_377 = right;
	com.google.javascript.rhino.Node q_parent_121_line_377 = p_right_4439_line_377.parent;
	boolean node_1_expr54_line_377 = q_parent_121_line_377 == null;
	int PROBE_END_LINE_377 = 378;
	Preconditions.checkArgument(node_1_expr54_line_377,
        "second new child has existing parent");
    int PROBE_START_LINE_379 = 380;
	com.google.javascript.rhino.Node p_right_4439_line_379 = right;
	com.google.javascript.rhino.Node q_next_122_line_379 = p_right_4439_line_379.next;
	boolean node_1_expr56_line_379 = q_next_122_line_379 == null;
	int PROBE_END_LINE_379 = 380;
	Preconditions.checkArgument(node_1_expr56_line_379,
        "second new child has existing sibling");
    int PROBE_START_LINE_381 = 381;
	int p_node_type_4437_line_381 = nodeType;
	int PROBE_END_LINE_381 = 381;
	type = p_node_type_4437_line_381;
    parent = null;
    int PROBE_START_LINE_383 = 383;
	com.google.javascript.rhino.Node p_left_4438_line_383 = left;
	int PROBE_END_LINE_383 = 383;
	first = p_left_4438_line_383;
    int PROBE_START_LINE_384 = 384;
	com.google.javascript.rhino.Node p_right_4439_line_384 = right;
	int PROBE_END_LINE_384 = 384;
	last = p_right_4439_line_384;
    int PROBE_START_LINE_385 = 385;
	com.google.javascript.rhino.Node p_right_4439_line_385 = right;
	int PROBE_END_LINE_385 = 385;
	left.next = p_right_4439_line_385;
    left.parent = this;
    right.next = null;
    right.parent = this;
    int PROBE_START_LINE_389 = 389;
	int node_1_expr68_line_389 = -1;
	int PROBE_END_LINE_389 = 389;
	sourcePosition = node_1_expr68_line_389;
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
    int PROBE_START_LINE_437 = 437;
	int p_node_type_4449_line_437 = nodeType;
	int PROBE_END_LINE_437 = 437;
	type = p_node_type_4449_line_437;
    parent = null;
    int PROBE_START_LINE_439 = 439;
	int p_lineno_4450_line_439 = lineno;
	int p_charno_4451_line_439 = charno;
	int node_1_expr72_line_439 = mergeLineCharNo(p_lineno_4450_line_439, p_charno_4451_line_439);
	int PROBE_END_LINE_439 = 439;
	sourcePosition = node_1_expr72_line_439;
  }

  public Node(int nodeType, Node child, int lineno, int charno) {
    this(nodeType, child);
    int PROBE_START_LINE_444 = 444;
	int p_lineno_4454_line_444 = lineno;
	int p_charno_4455_line_444 = charno;
	int node_1_expr75_line_444 = mergeLineCharNo(p_lineno_4454_line_444, p_charno_4455_line_444);
	int PROBE_END_LINE_444 = 444;
	sourcePosition = node_1_expr75_line_444;
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
    int PROBE_START_LINE_508 = 508;
	int p_type_4485_line_508 = type;
	String p_str_4486_line_508 = str;
	int PROBE_END_LINE_508 = 508;
	return new StringNode(p_type_4485_line_508, p_str_4486_line_508);
  }

  public static Node newString(String str, int lineno, int charno) {
    int PROBE_START_LINE_512 = 512;
	int q_string_123_line_512 = Token.STRING;
	String p_str_4487_line_512 = str;
	int p_lineno_4488_line_512 = lineno;
	int p_charno_4489_line_512 = charno;
	int PROBE_END_LINE_512 = 512;
	return new StringNode(q_string_123_line_512, p_str_4487_line_512, p_lineno_4488_line_512, p_charno_4489_line_512);
  }

  public static Node newString(int type, String str, int lineno, int charno) {
    return new StringNode(type, str, lineno, charno);
  }

  public int getType() {
    int PROBE_START_LINE_520 = 520;
	int f_type_4430_line_520 = type;
	int PROBE_END_LINE_520 = 520;
	return f_type_4430_line_520;
  }

  public void setType(int type) {
    this.type = type;
  }

  public boolean hasChildren() {
    return first != null;
  }

  public Node getFirstChild() {
    int PROBE_START_LINE_532 = 532;
	com.google.javascript.rhino.Node f_first_4435_line_532 = first;
	int PROBE_END_LINE_532 = 532;
	return f_first_4435_line_532;
  }

  public Node getLastChild() {
    int PROBE_START_LINE_536 = 536;
	com.google.javascript.rhino.Node f_last_4436_line_536 = last;
	int PROBE_END_LINE_536 = 536;
	return f_last_4436_line_536;
  }

  public Node getNext() {
    int PROBE_START_LINE_540 = 540;
	com.google.javascript.rhino.Node f_next_4495_line_540 = next;
	int PROBE_END_LINE_540 = 540;
	return f_next_4495_line_540;
  }

  public Node getChildBefore(Node child) {
    if (child == first) {
      return null;
    }
    Node n = first;
    while (n.next != child) {
      n = n.next;
      if (n == null) {
        throw new RuntimeException("node is not a child");
      }
    }
    return n;
  }

  public Node getChildAtIndex(int i) {
    Node n = first;
    while (i > 0) {
      n = n.next;
      i--;
    }
    return n;
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
    Preconditions.checkArgument(child.parent == null);
    Preconditions.checkArgument(child.next == null);
    child.parent = this;
    child.next = first;
    first = child;
    if (last == null) {
      last = child;
    }
  }

  public void addChildToBack(Node child) {
    int PROBE_START_LINE_600 = 600;
	com.google.javascript.rhino.Node p_child_4500_line_600 = child;
	com.google.javascript.rhino.Node q_parent_123_line_600 = p_child_4500_line_600.parent;
	boolean node_1_expr79_line_600 = q_parent_123_line_600 == null;
	int PROBE_END_LINE_600 = 600;
	Preconditions.checkArgument(node_1_expr79_line_600);
    int PROBE_START_LINE_601 = 601;
	com.google.javascript.rhino.Node p_child_4500_line_601 = child;
	com.google.javascript.rhino.Node q_next_124_line_601 = p_child_4500_line_601.next;
	boolean node_1_expr81_line_601 = q_next_124_line_601 == null;
	int PROBE_END_LINE_601 = 601;
	Preconditions.checkArgument(node_1_expr81_line_601);
    child.parent = this;
    child.next = null;
    int PROBE_START_LINE_604 = 607;
	com.google.javascript.rhino.Node f_last_4436_line_604 = last;
	boolean node_1_expr85_line_604 = f_last_4436_line_604 == null;
	int PROBE_END_LINE_604 = 607;
	if (node_1_expr85_line_604) {
      int PROBE_START_LINE_605 = 605;
		com.google.javascript.rhino.Node p_child_4500_line_605 = child;
		int PROBE_END_LINE_605 = 605;
	first = last = p_child_4500_line_605;
      return;
    }
    int PROBE_START_LINE_608 = 608;
	com.google.javascript.rhino.Node p_child_4500_line_608 = child;
	int PROBE_END_LINE_608 = 608;
	last.next = p_child_4500_line_608;
    int PROBE_START_LINE_609 = 609;
	com.google.javascript.rhino.Node p_child_4500_line_609 = child;
	int PROBE_END_LINE_609 = 609;
	last = p_child_4500_line_609;
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
    Node prev = getChildBefore(child);
    if (prev == null)
        first = first.next;
    else
        prev.next = child.next;
    if (child == last) last = prev;
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
    if (child == last)
        last = newChild;
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
    if (child == last)
        last = newChild;
    child.next = null;
    child.parent = null;
  }

  @VisibleForTesting
  PropListItem lookupProperty(int propType) {
    int PROBE_START_LINE_751 = 751;
	PropListItem f_prop_list_head_4516_line_751 = propListHead;
	int PROBE_END_LINE_751 = 751;
	PropListItem x = f_prop_list_head_4516_line_751;
    while (true) {
      int PROBE_START_LINE_752 = 752;
		com.google.javascript.rhino.Node.PropListItem v_x_4515_line_752 = x;
		boolean node_1_expr91_line_752 = v_x_4515_line_752 != null;
		boolean node_1_expr92_line_752 = true;
		if (node_1_expr91_line_752) {
			int p_prop_type_4514_line_752 = propType;
			com.google.javascript.rhino.Node.PropListItem v_x_4515_line_752_v1 = x;
			int node_1_expr93_line_752 = v_x_4515_line_752_v1.getType();
			node_1_expr92_line_752 = p_prop_type_4514_line_752 != node_1_expr93_line_752;
		}
		boolean node_1_expr90_line_752 = node_1_expr91_line_752 && node_1_expr92_line_752;
		if (!(node_1_expr90_line_752)) {
			break;
		}
		int PROBE_END_LINE_752 = 752;
		int PROBE_START_LINE_753 = 753;
		com.google.javascript.rhino.Node.PropListItem v_x_4515_line_753 = x;
		com.google.javascript.rhino.Node.PropListItem node_1_expr95_line_753 = v_x_4515_line_753.getNext();
		int PROBE_END_LINE_753 = 753;
	x = node_1_expr95_line_753;
    }
    int PROBE_START_LINE_755 = 755;
	com.google.javascript.rhino.Node.PropListItem v_x_4515_line_755 = x;
	int PROBE_END_LINE_755 = 755;
	return v_x_4515_line_755;
  }

  /**
   * Clone the properties from the provided node without copying
   * the property object.  The receiving node may not have any
   * existing properties.
   * @param other The node to clone properties from.
   * @return this node.
   */
  public Node clonePropsFrom(Node other) {
    int PROBE_START_LINE_766 = 767;
	com.google.javascript.rhino.Node.PropListItem f_prop_list_head_4516_line_766 = this.propListHead;
	boolean node_1_expr97_line_766 = f_prop_list_head_4516_line_766 == null;
	int PROBE_END_LINE_766 = 767;
	Preconditions.checkState(node_1_expr97_line_766,
        "Node has existing properties.");
    int PROBE_START_LINE_768 = 768;
	com.google.javascript.rhino.Node p_other_4517_line_768 = other;
	com.google.javascript.rhino.Node.PropListItem q_prop_list_head_126_line_768 = p_other_4517_line_768.propListHead;
	int PROBE_END_LINE_768 = 768;
	this.propListHead = q_prop_list_head_126_line_768;
    return this;
  }

  public void removeProp(int propType) {
    int PROBE_START_LINE_773 = 773;
	com.google.javascript.rhino.Node.PropListItem f_prop_list_head_4516_line_773 = propListHead;
	int p_prop_type_4518_line_773 = propType;
	PropListItem node_1_expr104_line_773 = removeProp(f_prop_list_head_4516_line_773, p_prop_type_4518_line_773);
	int PROBE_END_LINE_773 = 773;
	PropListItem result = node_1_expr104_line_773;
    int PROBE_START_LINE_774 = 776;
	com.google.javascript.rhino.Node.PropListItem v_result_4519_line_774 = result;
	com.google.javascript.rhino.Node.PropListItem f_prop_list_head_4516_line_774 = propListHead;
	boolean node_1_expr105_line_774 = v_result_4519_line_774 != f_prop_list_head_4516_line_774;
	int PROBE_END_LINE_774 = 776;
	if (node_1_expr105_line_774) {
      int PROBE_START_LINE_775 = 775;
		com.google.javascript.rhino.Node.PropListItem v_result_4519_line_775 = result;
		int PROBE_END_LINE_775 = 775;
	propListHead = v_result_4519_line_775;
    }
  }

  /**
   * @param item The item to inspect
   * @param propType The property to look for
   * @return The replacement list if the property was removed, or
   *   'item' otherwise.
   */
  private PropListItem removeProp(PropListItem item, int propType) {
    int PROBE_START_LINE_786 = 797;
	com.google.javascript.rhino.Node.PropListItem p_item_4520_line_786 = item;
	boolean node_1_expr107_line_786 = p_item_4520_line_786 == null;
	int PROBE_END_LINE_786 = 797;
	if (node_1_expr107_line_786) {
      return null;
    } else {
		int PROBE_START_LINE_788 = 797;
		com.google.javascript.rhino.Node.PropListItem p_item_4520_line_788 = item;
		int node_1_expr109_line_788 = p_item_4520_line_788.getType();
		int p_prop_type_4521_line_788 = propType;
		boolean node_1_expr108_line_788 = node_1_expr109_line_788 == p_prop_type_4521_line_788;
		int PROBE_END_LINE_788 = 797;
		if (node_1_expr108_line_788) {
			int PROBE_START_LINE_789 = 789;
			com.google.javascript.rhino.Node.PropListItem p_item_4520_line_789 = item;
			com.google.javascript.rhino.Node.PropListItem node_1_expr110_line_789 = p_item_4520_line_789.getNext();
			int PROBE_END_LINE_789 = 789;
			return node_1_expr110_line_789;
		} else {
			int PROBE_START_LINE_791 = 791;
			com.google.javascript.rhino.Node.PropListItem p_item_4520_line_791 = item;
			com.google.javascript.rhino.Node.PropListItem node_1_expr112_line_791 = p_item_4520_line_791.getNext();
			int p_prop_type_4521_line_791 = propType;
			PropListItem node_1_expr111_line_791 = removeProp(node_1_expr112_line_791, p_prop_type_4521_line_791);
			int PROBE_END_LINE_791 = 791;
			PropListItem result = node_1_expr111_line_791;
			int PROBE_START_LINE_792 = 796;
			com.google.javascript.rhino.Node.PropListItem v_result_4522_line_792 = result;
			com.google.javascript.rhino.Node.PropListItem p_item_4520_line_792 = item;
			com.google.javascript.rhino.Node.PropListItem node_1_expr114_line_792 = p_item_4520_line_792.getNext();
			boolean node_1_expr113_line_792 = v_result_4522_line_792 != node_1_expr114_line_792;
			int PROBE_END_LINE_792 = 796;
			if (node_1_expr113_line_792) {
				int PROBE_START_LINE_793 = 793;
				com.google.javascript.rhino.Node.PropListItem p_item_4520_line_793 = item;
				com.google.javascript.rhino.Node.PropListItem v_result_4522_line_793 = result;
				com.google.javascript.rhino.Node.PropListItem node_1_expr115_line_793 = p_item_4520_line_793
						.chain(v_result_4522_line_793);
				int PROBE_END_LINE_793 = 793;
				return node_1_expr115_line_793;
			} else {
				int PROBE_START_LINE_795 = 795;
				com.google.javascript.rhino.Node.PropListItem p_item_4520_line_795 = item;
				int PROBE_END_LINE_795 = 795;
				return p_item_4520_line_795;
			}
		}
	}
  }

  public Object getProp(int propType) {
    int PROBE_START_LINE_801 = 801;
	int p_prop_type_4523_line_801 = propType;
	PropListItem node_1_expr116_line_801 = lookupProperty(p_prop_type_4523_line_801);
	int PROBE_END_LINE_801 = 801;
	PropListItem item = node_1_expr116_line_801;
    int PROBE_START_LINE_802 = 804;
	com.google.javascript.rhino.Node.PropListItem v_item_4524_line_802 = item;
	boolean node_1_expr117_line_802 = v_item_4524_line_802 == null;
	int PROBE_END_LINE_802 = 804;
	if (node_1_expr117_line_802) {
      return null;
    }
    int PROBE_START_LINE_805 = 805;
	com.google.javascript.rhino.Node.PropListItem v_item_4524_line_805 = item;
	Object node_1_expr118_line_805 = v_item_4524_line_805.getObjectValue();
	int PROBE_END_LINE_805 = 805;
	return node_1_expr118_line_805;
  }

  public boolean getBooleanProp(int propType) {
    int PROBE_START_LINE_809 = 809;
	int p_prop_type_4525_line_809 = propType;
	int node_1_expr120_line_809 = getIntProp(p_prop_type_4525_line_809);
	boolean node_1_expr119_line_809 = node_1_expr120_line_809 != 0;
	int PROBE_END_LINE_809 = 809;
	return node_1_expr119_line_809;
  }

  /**
   * Returns the integer value for the property, or 0 if the property
   * is not defined.
   */
  public int getIntProp(int propType) {
    int PROBE_START_LINE_817 = 817;
	int p_prop_type_4526_line_817 = propType;
	PropListItem node_1_expr121_line_817 = lookupProperty(p_prop_type_4526_line_817);
	int PROBE_END_LINE_817 = 817;
	PropListItem item = node_1_expr121_line_817;
    int PROBE_START_LINE_818 = 820;
	com.google.javascript.rhino.Node.PropListItem v_item_4527_line_818 = item;
	boolean node_1_expr122_line_818 = v_item_4527_line_818 == null;
	int PROBE_END_LINE_818 = 820;
	if (node_1_expr122_line_818) {
      return 0;
    }
    return item.getIntValue();
  }

  public int getExistingIntProp(int propType) {
    PropListItem item = lookupProperty(propType);
    if (item == null) {
      throw new IllegalStateException("missing prop: " + propType);
    }
    return item.getIntValue();
  }

  public void putProp(int propType, Object value) {
    int PROBE_START_LINE_833 = 833;
	int p_prop_type_4529_line_833 = propType;
	int PROBE_END_LINE_833 = 833;
	removeProp(p_prop_type_4529_line_833);
    int PROBE_START_LINE_834 = 836;
	Object p_value_4530_line_834 = value;
	boolean node_1_expr124_line_834 = p_value_4530_line_834 != null;
	int PROBE_END_LINE_834 = 836;
	if (node_1_expr124_line_834) {
      int PROBE_START_LINE_835 = 835;
		int p_prop_type_4529_line_835 = propType;
		Object p_value_4530_line_835 = value;
		com.google.javascript.rhino.Node.PropListItem f_prop_list_head_4516_line_835 = propListHead;
		com.google.javascript.rhino.Node.PropListItem node_1_expr126_line_835 = createProp(p_prop_type_4529_line_835,
				p_value_4530_line_835, f_prop_list_head_4516_line_835);
		int PROBE_END_LINE_835 = 835;
	propListHead = node_1_expr126_line_835;
    }
  }

  public void putBooleanProp(int propType, boolean value) {
    int PROBE_START_LINE_840 = 840;
	int p_prop_type_4531_line_840 = propType;
	boolean p_value_4532_line_840 = value;
	int node_1_expr128_line_840 = p_value_4532_line_840 ? 1 : 0;
	int PROBE_END_LINE_840 = 840;
	putIntProp(p_prop_type_4531_line_840, node_1_expr128_line_840);
  }

  public void putIntProp(int propType, int value) {
    int PROBE_START_LINE_844 = 844;
	int p_prop_type_4533_line_844 = propType;
	int PROBE_END_LINE_844 = 844;
	removeProp(p_prop_type_4533_line_844);
    int PROBE_START_LINE_845 = 847;
	int p_value_4534_line_845 = value;
	boolean node_1_expr130_line_845 = p_value_4534_line_845 != 0;
	int PROBE_END_LINE_845 = 847;
	if (node_1_expr130_line_845) {
      int PROBE_START_LINE_846 = 846;
		int p_prop_type_4533_line_846 = propType;
		int p_value_4534_line_846 = value;
		com.google.javascript.rhino.Node.PropListItem f_prop_list_head_4516_line_846 = propListHead;
		com.google.javascript.rhino.Node.PropListItem node_1_expr132_line_846 = createProp(p_prop_type_4533_line_846,
				p_value_4534_line_846, f_prop_list_head_4516_line_846);
		int PROBE_END_LINE_846 = 846;
	propListHead = node_1_expr132_line_846;
    }
  }

  PropListItem createProp(int propType, Object value, PropListItem next) {
    int PROBE_START_LINE_851 = 851;
	int p_prop_type_4535_line_851 = propType;
	Object p_value_4536_line_851 = value;
	com.google.javascript.rhino.Node.PropListItem p_next_4537_line_851 = next;
	int PROBE_END_LINE_851 = 851;
	return new ObjectPropListItem(p_prop_type_4535_line_851, p_value_4536_line_851, p_next_4537_line_851);
  }

  PropListItem createProp(int propType, int value, PropListItem next) {
    int PROBE_START_LINE_855 = 855;
	int p_prop_type_4538_line_855 = propType;
	int p_value_4539_line_855 = value;
	com.google.javascript.rhino.Node.PropListItem p_next_4540_line_855 = next;
	int PROBE_END_LINE_855 = 855;
	return new IntPropListItem(p_prop_type_4538_line_855, p_value_4539_line_855, p_next_4540_line_855);
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

  /** Can only be called when <tt>getType() == TokenStream.NUMBER</tt> */
  public void setDouble(double s) throws UnsupportedOperationException {
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

  /** Can only be called when node has String context. */
  public void setString(String s) throws UnsupportedOperationException {
    if (this.getType() == Token.STRING) {
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
    int PROBE_START_LINE_1076 = 1076;
	int f_static_source_file_4555_line_1076 = STATIC_SOURCE_FILE;
	com.google.javascript.rhino.jstype.StaticSourceFile p_file_4554_line_1076 = file;
	int PROBE_END_LINE_1076 = 1076;
	this.putProp(f_static_source_file_4555_line_1076, p_file_4554_line_1076);
  }

  /** Sets the source file to a non-extern file of the given name. */
  public void setSourceFileForTesting(String name) {
    this.putProp(STATIC_SOURCE_FILE, new SimpleSourceFile(name, false));
  }

  public String getSourceFileName() {
    int PROBE_START_LINE_1085 = 1085;
	StaticSourceFile node_1_expr137_line_1085 = getStaticSourceFile();
	int PROBE_END_LINE_1085 = 1085;
	StaticSourceFile file = node_1_expr137_line_1085;
    int PROBE_START_LINE_1086 = 1086;
	com.google.javascript.rhino.jstype.StaticSourceFile v_file_4557_line_1086 = file;
	boolean node_1_expr139_line_1086 = v_file_4557_line_1086 == null;
	String node_1_expr140_line_1086 = null;
	if (!node_1_expr139_line_1086) {
		com.google.javascript.rhino.jstype.StaticSourceFile v_file_4557_line_1086_v1 = file;
		node_1_expr140_line_1086 = v_file_4557_line_1086_v1.getName();
	}
	String node_1_expr138_line_1086 = node_1_expr139_line_1086 ? null : node_1_expr140_line_1086;
	int PROBE_END_LINE_1086 = 1086;
	return node_1_expr138_line_1086;
  }

  /** Returns the source file associated with this input. May be null */
  public StaticSourceFile getStaticSourceFile() {
    int PROBE_START_LINE_1091 = 1091;
	int f_static_source_file_4555_line_1091 = STATIC_SOURCE_FILE;
	Object node_1_expr143_line_1091 = this.getProp(f_static_source_file_4555_line_1091);
	com.google.javascript.rhino.jstype.StaticSourceFile node_1_expr141_line_1091 = ((StaticSourceFile) node_1_expr143_line_1091);
	int PROBE_END_LINE_1091 = 1091;
	return node_1_expr141_line_1091;
  }

  /**
   * @param inputId
   */
  public void setInputId(InputId inputId) {
    int PROBE_START_LINE_1098 = 1098;
	int f_input_id_4559_line_1098 = INPUT_ID;
	com.google.javascript.rhino.InputId p_input_id_4558_line_1098 = inputId;
	int PROBE_END_LINE_1098 = 1098;
	this.putProp(f_input_id_4559_line_1098, p_input_id_4558_line_1098);
  }

  /**
   * @return The Id of the CompilerInput associated with this Node.
   */
  public InputId getInputId() {
    int PROBE_START_LINE_1105 = 1105;
	int f_input_id_4559_line_1105 = INPUT_ID;
	Object node_1_expr149_line_1105 = this.getProp(f_input_id_4559_line_1105);
	com.google.javascript.rhino.InputId node_1_expr147_line_1105 = ((InputId) node_1_expr149_line_1105);
	int PROBE_END_LINE_1105 = 1105;
	return node_1_expr147_line_1105;
  }

  public boolean isFromExterns() {
    int PROBE_START_LINE_1109 = 1109;
	StaticSourceFile node_1_expr151_line_1109 = getStaticSourceFile();
	int PROBE_END_LINE_1109 = 1109;
	StaticSourceFile file = node_1_expr151_line_1109;
    int PROBE_START_LINE_1110 = 1110;
	com.google.javascript.rhino.jstype.StaticSourceFile v_file_4560_line_1110 = file;
	boolean node_1_expr153_line_1110 = v_file_4560_line_1110 == null;
	boolean node_1_expr154_line_1110 = false;
	if (!node_1_expr153_line_1110) {
		com.google.javascript.rhino.jstype.StaticSourceFile v_file_4560_line_1110_v1 = file;
		node_1_expr154_line_1110 = v_file_4560_line_1110_v1.isExtern();
	}
	boolean node_1_expr152_line_1110 = node_1_expr153_line_1110 ? false : node_1_expr154_line_1110;
	int PROBE_END_LINE_1110 = 1110;
	return node_1_expr152_line_1110;
  }

  public int getLength() {
    return getIntProp(LENGTH);
  }

  public void setLength(int length) {
    int PROBE_START_LINE_1118 = 1118;
	int f_length_4562_line_1118 = LENGTH;
	int p_length_4561_line_1118 = length;
	int PROBE_END_LINE_1118 = 1118;
	putIntProp(f_length_4562_line_1118, p_length_4561_line_1118);
  }

  public int getLineno() {
    int PROBE_START_LINE_1122 = 1122;
	int f_source_position_4432_line_1122 = sourcePosition;
	int node_1_expr156_line_1122 = extractLineno(f_source_position_4432_line_1122);
	int PROBE_END_LINE_1122 = 1122;
	return node_1_expr156_line_1122;
  }

  public int getCharno() {
    int PROBE_START_LINE_1126 = 1126;
	int f_source_position_4432_line_1126 = sourcePosition;
	int node_1_expr157_line_1126 = extractCharno(f_source_position_4432_line_1126);
	int PROBE_END_LINE_1126 = 1126;
	return node_1_expr157_line_1126;
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
      int PROBE_START_LINE_1146 = 1146;
	int node_1_expr158_line_1146 = getCharno();
	int PROBE_END_LINE_1146 = 1146;
	int charno = node_1_expr158_line_1146;
      int PROBE_START_LINE_1147 = 1149;
	int v_charno_4564_line_1147 = charno;
	int node_1_expr160_line_1147 = -1;
	boolean node_1_expr159_line_1147 = v_charno_4564_line_1147 == node_1_expr160_line_1147;
	int PROBE_END_LINE_1147 = 1149;
	if (node_1_expr159_line_1147) {
        charno = 0;
      }
      int PROBE_START_LINE_1150 = 1150;
	int p_lineno_4563_line_1150 = lineno;
	int v_charno_4564_line_1150 = charno;
	int node_1_expr163_line_1150 = mergeLineCharNo(p_lineno_4563_line_1150, v_charno_4564_line_1150);
	int PROBE_END_LINE_1150 = 1150;
	sourcePosition = node_1_expr163_line_1150;
  }

  public void setCharno(int charno) {
      int PROBE_START_LINE_1154 = 1154;
	int node_1_expr166_line_1154 = getLineno();
	int p_charno_4565_line_1154 = charno;
	int node_1_expr165_line_1154 = mergeLineCharNo(node_1_expr166_line_1154, p_charno_4565_line_1154);
	int PROBE_END_LINE_1154 = 1154;
	sourcePosition = node_1_expr165_line_1154;
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
    int PROBE_START_LINE_1177 = 1183;
	int p_lineno_4568_line_1177 = lineno;
	boolean node_1_expr168_line_1177 = p_lineno_4568_line_1177 < 0;
	boolean node_1_expr169_line_1177 = false;
	if (!node_1_expr168_line_1177) {
		int p_charno_4569_line_1177 = charno;
		node_1_expr169_line_1177 = p_charno_4569_line_1177 < 0;
	}
	boolean node_1_expr167_line_1177 = node_1_expr168_line_1177 || node_1_expr169_line_1177;
	int PROBE_END_LINE_1177 = 1183;
	if (node_1_expr167_line_1177) {
      return -1;
    } else {
		int PROBE_START_LINE_1179 = 1183;
		int p_charno_4569_line_1179 = charno;
		int f_column_mask_4570_line_1179 = COLUMN_MASK;
		int node_1_expr173_line_1179 = ~f_column_mask_4570_line_1179;
		int node_1_expr172_line_1179 = p_charno_4569_line_1179 & node_1_expr173_line_1179;
		int node_1_expr171_line_1179 = (node_1_expr172_line_1179);
		boolean node_1_expr170_line_1179 = node_1_expr171_line_1179 != 0;
		int PROBE_END_LINE_1179 = 1183;
		if (node_1_expr170_line_1179) {
			return lineno << COLUMN_BITS | COLUMN_MASK;
		} else {
			int PROBE_START_LINE_1182 = 1182;
			int p_lineno_4568_line_1182 = lineno;
			int f_column_bits_4571_line_1182 = COLUMN_BITS;
			int node_1_expr175_line_1182 = p_lineno_4568_line_1182 << f_column_bits_4571_line_1182;
			int p_charno_4569_line_1182 = charno;
			int f_column_mask_4570_line_1182 = COLUMN_MASK;
			int node_1_expr177_line_1182 = p_charno_4569_line_1182 & f_column_mask_4570_line_1182;
			int node_1_expr176_line_1182 = (node_1_expr177_line_1182);
			int node_1_expr174_line_1182 = node_1_expr175_line_1182 | node_1_expr176_line_1182;
			int PROBE_END_LINE_1182 = 1182;
			return node_1_expr174_line_1182;
		}
	}
  }

  /**
   * Extracts the line number and character number from a merged line char
   * number (see {@link #mergeLineCharNo(int, int)}).
   */
  protected static int extractLineno(int lineCharNo) {
    int PROBE_START_LINE_1191 = 1195;
	int p_line_char_no_4572_line_1191 = lineCharNo;
	int node_1_expr179_line_1191 = -1;
	boolean node_1_expr178_line_1191 = p_line_char_no_4572_line_1191 == node_1_expr179_line_1191;
	int PROBE_END_LINE_1191 = 1195;
	if (node_1_expr178_line_1191) {
      int PROBE_START_LINE_1192 = 1192;
		int node_1_expr180_line_1192 = -1;
		int PROBE_END_LINE_1192 = 1192;
	return node_1_expr180_line_1192;
    } else {
      int PROBE_START_LINE_1194 = 1194;
		int p_line_char_no_4572_line_1194 = lineCharNo;
		int f_column_bits_4571_line_1194 = COLUMN_BITS;
		int node_1_expr181_line_1194 = p_line_char_no_4572_line_1194 >>> f_column_bits_4571_line_1194;
		int PROBE_END_LINE_1194 = 1194;
	return node_1_expr181_line_1194;
    }
  }

  /**
   * Extracts the character number and character number from a merged line
   * char number (see {@link #mergeLineCharNo(int, int)}).
   */
  protected static int extractCharno(int lineCharNo) {
    int PROBE_START_LINE_1203 = 1207;
	int p_line_char_no_4573_line_1203 = lineCharNo;
	int node_1_expr183_line_1203 = -1;
	boolean node_1_expr182_line_1203 = p_line_char_no_4573_line_1203 == node_1_expr183_line_1203;
	int PROBE_END_LINE_1203 = 1207;
	if (node_1_expr182_line_1203) {
      int PROBE_START_LINE_1204 = 1204;
		int node_1_expr184_line_1204 = -1;
		int PROBE_END_LINE_1204 = 1204;
	return node_1_expr184_line_1204;
    } else {
      int PROBE_START_LINE_1206 = 1206;
		int p_line_char_no_4573_line_1206 = lineCharNo;
		int f_column_mask_4570_line_1206 = COLUMN_MASK;
		int node_1_expr185_line_1206 = p_line_char_no_4573_line_1206 & f_column_mask_4570_line_1206;
		int PROBE_END_LINE_1206 = 1206;
	return node_1_expr185_line_1206;
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
    int PROBE_START_LINE_1223 = 1227;
	com.google.javascript.rhino.Node f_first_4435_line_1223 = first;
	boolean node_1_expr186_line_1223 = f_first_4435_line_1223 == null;
	int PROBE_END_LINE_1223 = 1227;
	if (node_1_expr186_line_1223) {
      int PROBE_START_LINE_1224 = 1224;
		Set<com.google.javascript.rhino.Node> node_1_expr187_line_1224 = Collections.emptySet();
		int PROBE_END_LINE_1224 = 1224;
	return node_1_expr187_line_1224;
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
    int PROBE_START_LINE_1305 = 1305;
	com.google.javascript.rhino.Node f_parent_4431_line_1305 = parent;
	int PROBE_END_LINE_1305 = 1305;
	return f_parent_4431_line_1305;
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
          if (!hasNext()) throw new NoSuchElementException();
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
    int PROBE_START_LINE_1373 = 1373;
	com.google.javascript.rhino.Node f_first_4435_line_1373 = first;
	boolean node_1_expr189_line_1373 = f_first_4435_line_1373 != null;
	boolean node_1_expr190_line_1373 = true;
	if (node_1_expr189_line_1373) {
		com.google.javascript.rhino.Node f_first_4435_line_1373_v1 = first;
		com.google.javascript.rhino.Node f_last_4436_line_1373 = last;
		node_1_expr190_line_1373 = f_first_4435_line_1373_v1 == f_last_4436_line_1373;
	}
	boolean node_1_expr188_line_1373 = node_1_expr189_line_1373 && node_1_expr190_line_1373;
	int PROBE_END_LINE_1373 = 1373;
	return node_1_expr188_line_1373;
  }

  /**
   * Check for more than one child more efficiently than by iterating over all
   * the children as is done with Node.getChildCount().
   *
   * @return Whether the node more than one child.
   */
  public boolean hasMoreThanOneChild() {
    return first != null && first != last;
  }

  public int getChildCount() {
    int c = 0;
    int PROBE_START_LINE_1387 = 1387;
	boolean FOR_STMT_TOGGLE_LINE_1388 = false;
	int PROBE_END_LINE_1387 = 1387;
	for (Node n = null; true;) {
		int PROBE_START_LINE_1389 = 1389;
		if (!FOR_STMT_TOGGLE_LINE_1388) {
			FOR_STMT_TOGGLE_LINE_1388 = true;
			Node f_first_4435_line_1388 = first;
			n = f_first_4435_line_1388;
		} else {
			if (FOR_STMT_TOGGLE_LINE_1388) {
				com.google.javascript.rhino.Node v_n_4578_line_1388_v1 = n;
				com.google.javascript.rhino.Node q_next_127_line_1388 = v_n_4578_line_1388_v1.next;
				n = q_next_127_line_1388;
			} else {
				FOR_STMT_TOGGLE_LINE_1388 = true;
			}
		}
		com.google.javascript.rhino.Node v_n_4578_line_1388 = n;
		boolean node_1_expr192_line_1388 = v_n_4578_line_1388 != null;
		if (!(node_1_expr192_line_1388)) {
			break;
		}
		int PROBE_END_LINE_1389 = 1389;
		c++;
	}

    int PROBE_START_LINE_1391 = 1391;
	int v_c_4577_line_1391 = c;
	int PROBE_END_LINE_1391 = 1391;
	return v_c_4577_line_1391;
  }

  // Intended for testing and verification only.
  public boolean hasChild(Node child) {
    for (Node n = first; n != null; n = n.getNext()) {
      if (child == n) {
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
      NodeMismatch diff = checkTreeEqualsImpl(node2);
      if (diff != null) {
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
    if (!isEquivalentTo(node2, false, false)) {
      return new NodeMismatch(this, node2);
    }

    NodeMismatch res = null;
    Node n, n2;
    for (n = first, n2 = node2.first;
         res == null && n != null;
         n = n.next, n2 = n2.next) {
      if (node2 == null) {
        throw new IllegalStateException();
      }
      res = n.checkTreeEqualsImpl(n2);
      if (res != null) {
        return res;
      }
    }
    return res;
  }

  /**
   * Compare this node to node2 recursively and return the first pair of nodes
   * that differs doing a preorder depth-first traversal. Package private for
   * testing. Returns null if the nodes are equivalent.
   */
  NodeMismatch checkTreeTypeAwareEqualsImpl(Node node2) {
    // Do a non-recursive equivalents check.
    if (!isEquivalentTo(node2, true, false)) {
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
    int PROBE_START_LINE_1472 = 1472;
	com.google.javascript.rhino.Node p_node_4583_line_1472 = node;
	boolean node_1_expr195_line_1472 = isEquivalentTo(p_node_4583_line_1472, false, true);
	int PROBE_END_LINE_1472 = 1472;
	return node_1_expr195_line_1472;
  }

  /**
   * Returns true if this node is equivalent semantically to another and
   * the types are equivalent.
   */
  public boolean isEquivalentToTyped(Node node) {
    return isEquivalentTo(node, true, true);
  }

  /**
   * @param compareJsType Whether to compare the JSTypes of the nodes.
   * @param recurse Whether to compare the children of the current node, if
   *    not only the the count of the children are compared.
   * @return Whether this node is equivalent semantically to the provided node.
   */
  boolean isEquivalentTo(Node node, boolean compareJsType, boolean recurse) {
    int PROBE_START_LINE_1490 = 1494;
	int f_type_4430_line_1490 = type;
	com.google.javascript.rhino.Node p_node_4585_line_1490 = node;
	int node_1_expr199_line_1490 = p_node_4585_line_1490.getType();
	boolean node_1_expr198_line_1490 = f_type_4430_line_1490 != node_1_expr199_line_1490;
	boolean node_1_expr197_line_1490 = node_1_expr198_line_1490 || getChildCount() != node.getChildCount();
	boolean node_1_expr196_line_1490 = node_1_expr197_line_1490 || this.getClass() != node.getClass();
	int PROBE_END_LINE_1490 = 1494;
	if (node_1_expr196_line_1490) {
      return false;
    }

    int PROBE_START_LINE_1496 = 1498;
	boolean p_compare_js_type_4586_line_1496 = compareJsType;
	boolean node_1_expr201_line_1496 = true;
	if (p_compare_js_type_4586_line_1496) {
		com.google.javascript.rhino.jstype.JSType f_js_type_4588_line_1496 = jsType;
		com.google.javascript.rhino.Node p_node_4585_line_1496 = node;
		com.google.javascript.rhino.jstype.JSType node_1_expr203_line_1496 = p_node_4585_line_1496.getJSType();
		boolean node_1_expr202_line_1496 = JSType.isEquivalent(f_js_type_4588_line_1496, node_1_expr203_line_1496);
		node_1_expr201_line_1496 = !node_1_expr202_line_1496;
	}
	boolean node_1_expr200_line_1496 = p_compare_js_type_4586_line_1496 && node_1_expr201_line_1496;
	int PROBE_END_LINE_1496 = 1498;
	if (node_1_expr200_line_1496) {
      return false;
    }

    int PROBE_START_LINE_1500 = 1524;
	int f_type_4430_line_1500 = type;
	int q_inc_128_line_1500 = Token.INC;
	boolean node_1_expr205_line_1500 = f_type_4430_line_1500 == q_inc_128_line_1500;
	boolean node_1_expr206_line_1500 = false;
	if (!node_1_expr205_line_1500) {
		int f_type_4430_line_1500_v1 = type;
		int q_dec_129_line_1500 = Token.DEC;
		node_1_expr206_line_1500 = f_type_4430_line_1500_v1 == q_dec_129_line_1500;
	}
	boolean node_1_expr204_line_1500 = node_1_expr205_line_1500 || node_1_expr206_line_1500;
	int PROBE_END_LINE_1500 = 1524;
	if (node_1_expr204_line_1500) {
      int post1 = this.getIntProp(INCRDECR_PROP);
      int post2 = node.getIntProp(INCRDECR_PROP);
      if (post1 != post2) {
        return false;
      }
    } else {
		int PROBE_START_LINE_1506 = 1524;
		int f_type_4430_line_1506 = type;
		int q_string_130_line_1506 = Token.STRING;
		boolean node_1_expr208_line_1506 = f_type_4430_line_1506 == q_string_130_line_1506;
		boolean node_1_expr209_line_1506 = false;
		if (!node_1_expr208_line_1506) {
			int f_type_4430_line_1506_v1 = type;
			int q_string_key_130_line_1506 = Token.STRING_KEY;
			node_1_expr209_line_1506 = f_type_4430_line_1506_v1 == q_string_key_130_line_1506;
		}
		boolean node_1_expr207_line_1506 = node_1_expr208_line_1506 || node_1_expr209_line_1506;
		int PROBE_END_LINE_1506 = 1524;
		if (node_1_expr207_line_1506) {
			int PROBE_START_LINE_1507 = 1513;
			int f_type_4430_line_1507 = type;
			int q_string_key_131_line_1507 = Token.STRING_KEY;
			boolean node_1_expr210_line_1507 = f_type_4430_line_1507 == q_string_key_131_line_1507;
			int PROBE_END_LINE_1507 = 1513;
			if (node_1_expr210_line_1507) {
				int quoted1 = this.getIntProp(QUOTED_PROP);
				int quoted2 = node.getIntProp(QUOTED_PROP);
				if (quoted1 != quoted2) {
					return false;
				}
			}
			int PROBE_START_LINE_1515 = 1515;
			int f_slash_v_4590_line_1515 = SLASH_V;
			int node_1_expr211_line_1515 = this.getIntProp(f_slash_v_4590_line_1515);
			int PROBE_END_LINE_1515 = 1515;
			int slashV1 = node_1_expr211_line_1515;
			int PROBE_START_LINE_1516 = 1516;
			com.google.javascript.rhino.Node p_node_4585_line_1516 = node;
			int f_slash_v_4590_line_1516 = SLASH_V;
			int node_1_expr213_line_1516 = p_node_4585_line_1516.getIntProp(f_slash_v_4590_line_1516);
			int PROBE_END_LINE_1516 = 1516;
			int slashV2 = node_1_expr213_line_1516;
			int PROBE_START_LINE_1517 = 1519;
			int v_slash_v1_4589_line_1517 = slashV1;
			int v_slash_v2_4591_line_1517 = slashV2;
			boolean node_1_expr214_line_1517 = v_slash_v1_4589_line_1517 != v_slash_v2_4591_line_1517;
			int PROBE_END_LINE_1517 = 1519;
			if (node_1_expr214_line_1517) {
				return false;
			}
		} else {
			int PROBE_START_LINE_1520 = 1524;
			int f_type_4430_line_1520 = type;
			int q_call_131_line_1520 = Token.CALL;
			boolean node_1_expr215_line_1520 = f_type_4430_line_1520 == q_call_131_line_1520;
			int PROBE_END_LINE_1520 = 1524;
			if (node_1_expr215_line_1520) {
				if (this.getBooleanProp(FREE_CALL) != node.getBooleanProp(FREE_CALL)) {
					return false;
				}
			}
		}
	}

    int PROBE_START_LINE_1526 = 1535;
	boolean p_recurse_4587_line_1526 = recurse;
	int PROBE_END_LINE_1526 = 1535;
	if (p_recurse_4587_line_1526) {
      Node n = null, n2 = null;
      int PROBE_START_LINE_1527 = 1527;
	boolean FOR_STMT_TOGGLE_LINE_1528 = false;
	com.google.javascript.rhino.Node f_first_4435_line_1528 = first;
	n = f_first_4435_line_1528;
	com.google.javascript.rhino.Node p_node_4585_line_1528 = node;
	com.google.javascript.rhino.Node q_first_132_line_1528 = p_node_4585_line_1528.first;
	n2 = q_first_132_line_1528;
	int PROBE_END_LINE_1527 = 1527;
	for (;
           true;) {
        int PROBE_START_LINE_1531 = 1533;
			if (!FOR_STMT_TOGGLE_LINE_1528) {
				FOR_STMT_TOGGLE_LINE_1528 = true;
			} else {
				if (FOR_STMT_TOGGLE_LINE_1528) {
					n = n.next;
					n2 = n2.next;
				} else {
					FOR_STMT_TOGGLE_LINE_1528 = true;
				}
			}
			com.google.javascript.rhino.Node v_n_4592_line_1529 = n;
			boolean node_1_expr218_line_1529 = v_n_4592_line_1529 != null;
			if (!(node_1_expr218_line_1529)) {
				break;
			}
			com.google.javascript.rhino.Node v_n_4592_line_1531 = n;
			com.google.javascript.rhino.Node v_n_2_4593_line_1531 = n2;
			boolean p_compare_js_type_4586_line_1531 = compareJsType;
			boolean node_1_expr220_line_1531 = v_n_4592_line_1531.isEquivalentTo(v_n_2_4593_line_1531,
					p_compare_js_type_4586_line_1531, true);
			boolean node_1_expr219_line_1531 = !node_1_expr220_line_1531;
			int PROBE_END_LINE_1531 = 1533;
		if (node_1_expr219_line_1531) {
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
    int PROBE_START_LINE_1549 = 1562;
	int f_type_4430_line_1549 = type;
	int q_name_133_line_1549 = Token.NAME;
	boolean node_1_expr221_line_1549 = f_type_4430_line_1549 == q_name_133_line_1549;
	int PROBE_END_LINE_1549 = 1562;
	if (node_1_expr221_line_1549) {
      int PROBE_START_LINE_1550 = 1550;
		String node_1_expr222_line_1550 = getString();
		int PROBE_END_LINE_1550 = 1550;
	String name = node_1_expr222_line_1550;
      int PROBE_START_LINE_1551 = 1551;
	String v_name_4594_line_1551 = name;
	boolean node_1_expr224_line_1551 = v_name_4594_line_1551.isEmpty();
	String v_name_4594_line_1551_v1 = null;
	if (!node_1_expr224_line_1551) {
		v_name_4594_line_1551_v1 = name;
	}
	String node_1_expr223_line_1551 = node_1_expr224_line_1551 ? null : v_name_4594_line_1551_v1;
	int PROBE_END_LINE_1551 = 1551;
	return node_1_expr223_line_1551;
    } else if (type == Token.GETPROP) {
      String left = getFirstChild().getQualifiedName();
      if (left == null) {
        return null;
      }
      return left + "." + getLastChild().getString();
    } else if (type == Token.THIS) {
      return "this";
    } else {
      return null;
    }
  }

  /**
   * Returns whether a node corresponds to a simple or a qualified name, such as
   * <code>x</code> or <code>a.b.c</code> or <code>this.a</code>.
   */
  public boolean isQualifiedName() {
    int PROBE_START_LINE_1570 = 1579;
	int node_1_expr225_line_1570 = getType();
	int PROBE_END_LINE_1570 = 1579;
	switch (node_1_expr225_line_1570) {
      case Token.NAME:
        return getString().isEmpty() ? false : true;
      case Token.THIS:
        return true;
      case Token.GETPROP:
        return getFirstChild().isQualifiedName();
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
    Preconditions.checkState(parent != null);
    parent.removeChild(this);
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
    if (child == last) last = prev;
    child.next = null;
    child.parent = null;
    return child;
  }

  /**
   * @return A detached clone of the Node, specifically excluding its children.
   */
  public Node cloneNode() {
    Node result;
    try {
      result = (Node) super.clone();
      // PropListItem lists are immutable and can be shared so there is no
      // need to clone them here.
      result.next = null;
      result.first = null;
      result.last = null;
      result.parent = null;
    } catch (CloneNotSupportedException e) {
      throw new RuntimeException(e.getMessage());
    }
    return result;
  }

  /**
   * @return A detached clone of the Node and all its children.
   */
  public Node cloneTree() {
    Node result = cloneNode();
    for (Node n2 = getFirstChild(); n2 != null; n2 = n2.getNext()) {
      Node n2clone = n2.cloneTree();
      n2clone.parent = result;
      if (result.last != null) {
        result.last.next = n2clone;
      }
      if (result.first == null) {
        result.first = n2clone;
      }
      result.last = n2clone;
    }
    return result;
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
      int PROBE_START_LINE_1809 = 1809;
	com.google.javascript.rhino.jstype.JSType f_js_type_4588_line_1809 = jsType;
	int PROBE_END_LINE_1809 = 1809;
	return f_js_type_4588_line_1809;
  }

  public void setJSType(JSType jsType) {
      int PROBE_START_LINE_1813 = 1813;
	com.google.javascript.rhino.jstype.JSType p_js_type_4604_line_1813 = jsType;
	int PROBE_END_LINE_1813 = 1813;
	this.jsType = p_js_type_4604_line_1813;
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
    int PROBE_START_LINE_1851 = 1851;
	int f_jsdoc_info_prop_4606_line_1851 = JSDOC_INFO_PROP;
	Object node_1_expr231_line_1851 = getProp(f_jsdoc_info_prop_4606_line_1851);
	int PROBE_END_LINE_1851 = 1851;
	return (JSDocInfo) node_1_expr231_line_1851;
  }

  /**
   * Sets the {@link JSDocInfo} attached to this node.
   */
  public Node setJSDocInfo(JSDocInfo info) {
      int PROBE_START_LINE_1858 = 1858;
	int f_jsdoc_info_prop_4606_line_1858 = JSDOC_INFO_PROP;
	com.google.javascript.rhino.JSDocInfo p_info_4607_line_1858 = info;
	int PROBE_END_LINE_1858 = 1858;
	putProp(f_jsdoc_info_prop_4606_line_1858, p_info_4607_line_1858);
      return this;
  }

  /**
   * Sets whether this node is a variable length argument node. This
   * method is meaningful only on {@link Token#NAME} nodes
   * used to define a {@link Token#FUNCTION}'s argument list.
   */
  public void setVarArgs(boolean varArgs) {
    int PROBE_START_LINE_1868 = 1868;
	int f_var_args_name_4609_line_1868 = VAR_ARGS_NAME;
	boolean p_var_args_4608_line_1868 = varArgs;
	int PROBE_END_LINE_1868 = 1868;
	putBooleanProp(f_var_args_name_4609_line_1868, p_var_args_4608_line_1868);
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
    int PROBE_START_LINE_1886 = 1886;
	int f_opt_arg_name_4611_line_1886 = OPT_ARG_NAME;
	boolean p_optional_arg_4610_line_1886 = optionalArg;
	int PROBE_END_LINE_1886 = 1886;
	putBooleanProp(f_opt_arg_name_4611_line_1886, p_optional_arg_4610_line_1886);
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
    int PROBE_START_LINE_1903 = 1903;
	int f_synthetic_block_prop_4613_line_1903 = SYNTHETIC_BLOCK_PROP;
	boolean p_val_4612_line_1903 = val;
	int PROBE_END_LINE_1903 = 1903;
	putBooleanProp(f_synthetic_block_prop_4613_line_1903, p_val_4612_line_1903);
  }

  /**
   * Returns whether this is a synthetic block that should not be considered
   * a real source block.
   */
  public boolean isSyntheticBlock() {
    int PROBE_START_LINE_1911 = 1911;
	int f_synthetic_block_prop_4613_line_1911 = SYNTHETIC_BLOCK_PROP;
	boolean node_1_expr237_line_1911 = getBooleanProp(f_synthetic_block_prop_4613_line_1911);
	int PROBE_END_LINE_1911 = 1911;
	return node_1_expr237_line_1911;
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

  final public static int FLAG_GLOBAL_STATE_UNMODIFIED = 1;
  final public static int FLAG_THIS_UNMODIFIED = 2;
  final public static int FLAG_ARGUMENTS_UNMODIFIED = 4;
  final public static int FLAG_NO_THROWS = 8;
  final public static int FLAG_LOCAL_RESULTS = 16;

  final public static int SIDE_EFFECTS_FLAGS_MASK = 31;

  final public static int SIDE_EFFECTS_ALL = 0;
  final public static int NO_SIDE_EFFECTS =
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
    public void setAllFlags() {
      value = Node.SIDE_EFFECTS_ALL;
    }

    /** No side-effects occur and the returned results are local. */
    public void clearAllFlags() {
      value = Node.NO_SIDE_EFFECTS | Node.FLAG_LOCAL_RESULTS;
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

    public void setMutatesGlobalState() {
      // Modify global means everything must be assumed to be modified.
      removeFlag(Node.FLAG_GLOBAL_STATE_UNMODIFIED);
      removeFlag(Node.FLAG_ARGUMENTS_UNMODIFIED);
      removeFlag(Node.FLAG_THIS_UNMODIFIED);
    }

    public void setThrows() {
      removeFlag(Node.FLAG_NO_THROWS);
    }

    public void setMutatesThis() {
      removeFlag(Node.FLAG_THIS_UNMODIFIED);
    }

    public void setMutatesArguments() {
      removeFlag(Node.FLAG_ARGUMENTS_UNMODIFIED);
    }

    public void setReturnsTainted() {
      removeFlag(Node.FLAG_LOCAL_RESULTS);
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
    return this.getType() == Token.AND;
  }

  public boolean isArrayLit() {
    return this.getType() == Token.ARRAYLIT;
  }

  public boolean isAssign() {
    return this.getType() == Token.ASSIGN;
  }

  public boolean isAssignAdd() {
    return this.getType() == Token.ASSIGN_ADD;
  }

  public boolean isBlock() {
    int PROBE_START_LINE_2170 = 2170;
	int node_1_expr239_line_2170 = this.getType();
	int q_block_133_line_2170 = Token.BLOCK;
	boolean node_1_expr238_line_2170 = node_1_expr239_line_2170 == q_block_133_line_2170;
	int PROBE_END_LINE_2170 = 2170;
	return node_1_expr238_line_2170;
  }

  public boolean isBreak() {
    return this.getType() == Token.BREAK;
  }

  public boolean isCall() {
    int PROBE_START_LINE_2178 = 2178;
	int node_1_expr242_line_2178 = this.getType();
	int q_call_133_line_2178 = Token.CALL;
	boolean node_1_expr241_line_2178 = node_1_expr242_line_2178 == q_call_133_line_2178;
	int PROBE_END_LINE_2178 = 2178;
	return node_1_expr241_line_2178;
  }

  public boolean isCase() {
    return this.getType() == Token.CASE;
  }

  public boolean isCast() {
    return this.getType() == Token.CAST;
  }

  public boolean isCatch() {
    return this.getType() == Token.CATCH;
  }

  public boolean isComma() {
    return this.getType() == Token.COMMA;
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
    return this.getType() == Token.EMPTY;
  }

  public boolean isExprResult() {
    return this.getType() == Token.EXPR_RESULT;
  }

  public boolean isFalse() {
    return this.getType() == Token.FALSE;
  }

  public boolean isFor() {
    return this.getType() == Token.FOR;
  }

  public boolean isFunction() {
    int PROBE_START_LINE_2238 = 2238;
	int node_1_expr245_line_2238 = this.getType();
	int q_function_133_line_2238 = Token.FUNCTION;
	boolean node_1_expr244_line_2238 = node_1_expr245_line_2238 == q_function_133_line_2238;
	int PROBE_END_LINE_2238 = 2238;
	return node_1_expr244_line_2238;
  }

  public boolean isGetterDef() {
    return this.getType() == Token.GETTER_DEF;
  }

  public boolean isGetElem() {
    int PROBE_START_LINE_2246 = 2246;
	int node_1_expr248_line_2246 = this.getType();
	int q_getelem_133_line_2246 = Token.GETELEM;
	boolean node_1_expr247_line_2246 = node_1_expr248_line_2246 == q_getelem_133_line_2246;
	int PROBE_END_LINE_2246 = 2246;
	return node_1_expr247_line_2246;
  }

  public boolean isGetProp() {
    int PROBE_START_LINE_2250 = 2250;
	int node_1_expr251_line_2250 = this.getType();
	int q_getprop_134_line_2250 = Token.GETPROP;
	boolean node_1_expr250_line_2250 = node_1_expr251_line_2250 == q_getprop_134_line_2250;
	int PROBE_END_LINE_2250 = 2250;
	return node_1_expr250_line_2250;
  }

  public boolean isHook() {
    return this.getType() == Token.HOOK;
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
    int PROBE_START_LINE_2282 = 2282;
	int node_1_expr254_line_2282 = this.getType();
	int q_name_135_line_2282 = Token.NAME;
	boolean node_1_expr253_line_2282 = node_1_expr254_line_2282 == q_name_135_line_2282;
	int PROBE_END_LINE_2282 = 2282;
	return node_1_expr253_line_2282;
  }

  public boolean isNE() {
    return this.getType() == Token.NE;
  }

  public boolean isNew() {
    int PROBE_START_LINE_2290 = 2290;
	int node_1_expr257_line_2290 = this.getType();
	int q_new_135_line_2290 = Token.NEW;
	boolean node_1_expr256_line_2290 = node_1_expr257_line_2290 == q_new_135_line_2290;
	int PROBE_END_LINE_2290 = 2290;
	return node_1_expr256_line_2290;
  }

  public boolean isNot() {
    return this.getType() == Token.NOT;
  }

  public boolean isNull() {
    return this.getType() == Token.NULL;
  }

  public boolean isNumber() {
    return this.getType() == Token.NUMBER;
  }

  public boolean isObjectLit() {
    int PROBE_START_LINE_2306 = 2306;
	int node_1_expr260_line_2306 = this.getType();
	int q_objectlit_136_line_2306 = Token.OBJECTLIT;
	boolean node_1_expr259_line_2306 = node_1_expr260_line_2306 == q_objectlit_136_line_2306;
	int PROBE_END_LINE_2306 = 2306;
	return node_1_expr259_line_2306;
  }

  public boolean isOr() {
    return this.getType() == Token.OR;
  }

  public boolean isParamList() {
    int PROBE_START_LINE_2314 = 2314;
	int node_1_expr263_line_2314 = this.getType();
	int q_param_list_137_line_2314 = Token.PARAM_LIST;
	boolean node_1_expr262_line_2314 = node_1_expr263_line_2314 == q_param_list_137_line_2314;
	int PROBE_END_LINE_2314 = 2314;
	return node_1_expr262_line_2314;
  }

  public boolean isRegExp() {
    return this.getType() == Token.REGEXP;
  }

  public boolean isReturn() {
    int PROBE_START_LINE_2322 = 2322;
	int node_1_expr266_line_2322 = this.getType();
	int q_return_137_line_2322 = Token.RETURN;
	boolean node_1_expr265_line_2322 = node_1_expr266_line_2322 == q_return_137_line_2322;
	int PROBE_END_LINE_2322 = 2322;
	return node_1_expr265_line_2322;
  }

  public boolean isScript() {
    int PROBE_START_LINE_2326 = 2326;
	int node_1_expr269_line_2326 = this.getType();
	int q_script_138_line_2326 = Token.SCRIPT;
	boolean node_1_expr268_line_2326 = node_1_expr269_line_2326 == q_script_138_line_2326;
	int PROBE_END_LINE_2326 = 2326;
	return node_1_expr268_line_2326;
  }

  public boolean isSetterDef() {
    return this.getType() == Token.SETTER_DEF;
  }

  public boolean isString() {
    return this.getType() == Token.STRING;
  }

  public boolean isStringKey() {
    return this.getType() == Token.STRING_KEY;
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
    return this.getType() == Token.TRUE;
  }

  public boolean isTry() {
    int PROBE_START_LINE_2358 = 2358;
	int node_1_expr272_line_2358 = this.getType();
	int q_try_138_line_2358 = Token.TRY;
	boolean node_1_expr271_line_2358 = node_1_expr272_line_2358 == q_try_138_line_2358;
	int PROBE_END_LINE_2358 = 2358;
	return node_1_expr271_line_2358;
  }

  public boolean isTypeOf() {
    return this.getType() == Token.TYPEOF;
  }

  public boolean isVar() {
    int PROBE_START_LINE_2366 = 2366;
	int node_1_expr275_line_2366 = this.getType();
	int q_var_139_line_2366 = Token.VAR;
	boolean node_1_expr274_line_2366 = node_1_expr275_line_2366 == q_var_139_line_2366;
	int PROBE_END_LINE_2366 = 2366;
	return node_1_expr274_line_2366;
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
