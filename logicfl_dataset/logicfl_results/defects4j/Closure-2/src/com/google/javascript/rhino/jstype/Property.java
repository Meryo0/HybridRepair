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
 *   Nick Santos
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

import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;

import java.io.Serializable;

/**
 * A property slot of an object.
 * @author nicksantos@google.com (Nick Santos)
 */
public final class Property
    implements Serializable, StaticSlot<JSType>, StaticReference<JSType> {
  private static final long serialVersionUID = 1L;

  /**
   * Property's name.
   */
  private final String name;

  /**
   * Property's type.
   */
  private JSType type;

  /**
   * Whether the property's type is inferred.
   */
  private final boolean inferred;

  /**
   * The node corresponding to this property, e.g., a GETPROP node that
   * declares this property.
   */
  private Node propertyNode;

  /**  The JSDocInfo for this property. */
  private JSDocInfo docInfo = null;

  Property(String name, JSType type, boolean inferred,
      Node propertyNode) {
    int PROBE_START_LINE_81 = 81;
		String p_name_5338_line_81 = name;
		int PROBE_END_LINE_81 = 81;
	this.name = p_name_5338_line_81;
    int PROBE_START_LINE_82 = 82;
	com.google.javascript.rhino.jstype.JSType p_type_5339_line_82 = type;
	int PROBE_END_LINE_82 = 82;
	this.type = p_type_5339_line_82;
    int PROBE_START_LINE_83 = 83;
	boolean p_inferred_5340_line_83 = inferred;
	int PROBE_END_LINE_83 = 83;
	this.inferred = p_inferred_5340_line_83;
    int PROBE_START_LINE_84 = 84;
	com.google.javascript.rhino.Node p_property_node_5341_line_84 = propertyNode;
	int PROBE_END_LINE_84 = 84;
	this.propertyNode = p_property_node_5341_line_84;
  }

  @Override
      public String getName() {
    return name;
  }

  @Override
      public Node getNode() {
    return propertyNode;
  }

  @Override
      public StaticSourceFile getSourceFile() {
    return propertyNode == null ? null : propertyNode.getStaticSourceFile();
  }

  @Override
      public Property getSymbol() {
    return this;
  }

  @Override
      public Property getDeclaration() {
    return propertyNode == null ? null : this;
  }

  @Override
      public JSType getType() {
    int PROBE_START_LINE_114 = 114;
		com.google.javascript.rhino.jstype.JSType f_type_5343_line_114 = type;
		int PROBE_END_LINE_114 = 114;
	return f_type_5343_line_114;
  }

  @Override
      public boolean isTypeInferred() {
    return inferred;
  }

  boolean isFromExterns() {
    return propertyNode == null ? false : propertyNode.isFromExterns();
  }

  void setType(JSType type) {
    int PROBE_START_LINE_127 = 127;
	com.google.javascript.rhino.jstype.JSType p_type_5346_line_127 = type;
	int PROBE_END_LINE_127 = 127;
	this.type = p_type_5346_line_127;
  }

  @Override public JSDocInfo getJSDocInfo() {
    return this.docInfo;
  }

  void setJSDocInfo(JSDocInfo info) {
    this.docInfo = info;
  }

  public void setNode(Node n) {
    int PROBE_START_LINE_139 = 139;
	com.google.javascript.rhino.Node p_n_5348_line_139 = n;
	int PROBE_END_LINE_139 = 139;
	this.propertyNode = p_n_5348_line_139;
  }
}
