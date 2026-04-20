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

import com.google.common.collect.ImmutableList;
import com.google.javascript.rhino.Node;

/**
 * A builder class for function and arrow types.
 *
 * If you need to build an interface constructor,
 * use {@link JSTypeRegistry#createInterfaceType}.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
public final class FunctionBuilder {
  private final JSTypeRegistry registry;
  private String name = null;
  private Node sourceNode = null;
  private Node parametersNode = null;
  private JSType returnType = null;
  private JSType typeOfThis = null;
  private TemplateTypeMap templateTypeMap = null;
  private boolean inferredReturnType = false;
  private boolean isConstructor = false;
  private boolean isNativeType = false;

  public FunctionBuilder(JSTypeRegistry registry) {
    int PROBE_START_LINE_66 = 66;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5377_line_66 = registry;
	int PROBE_END_LINE_66 = 66;
	this.registry = p_registry_5377_line_66;
  }

  /** Set the name of the function type. */
  public FunctionBuilder withName(String name) {
    int PROBE_START_LINE_71 = 71;
	String p_name_5379_line_71 = name;
	int PROBE_END_LINE_71 = 71;
	this.name = p_name_5379_line_71;
    return this;
  }

  /** Set the source node of the function type. */
  public FunctionBuilder withSourceNode(Node sourceNode) {
    int PROBE_START_LINE_77 = 77;
	com.google.javascript.rhino.Node p_source_node_5380_line_77 = sourceNode;
	int PROBE_END_LINE_77 = 77;
	this.sourceNode = p_source_node_5380_line_77;
    return this;
  }

  /** Set the parameters of the function type from a FunctionParamBuilder. */
  public FunctionBuilder withParams(FunctionParamBuilder params) {
    this.parametersNode = params.build();
    return this;
  }

  /**
   * Set the parameters of the function type with a specially-formatted node.
   */
  public FunctionBuilder withParamsNode(Node parametersNode) {
    int PROBE_START_LINE_91 = 91;
	com.google.javascript.rhino.Node p_parameters_node_5382_line_91 = parametersNode;
	int PROBE_END_LINE_91 = 91;
	this.parametersNode = p_parameters_node_5382_line_91;
    return this;
  }

  /** Set the return type. */
  public FunctionBuilder withReturnType(JSType returnType) {
    int PROBE_START_LINE_97 = 97;
	com.google.javascript.rhino.jstype.JSType p_return_type_5383_line_97 = returnType;
	int PROBE_END_LINE_97 = 97;
	this.returnType = p_return_type_5383_line_97;
    return this;
  }

  /** Set the return type and whether it's inferred. */
  public FunctionBuilder withReturnType(JSType returnType, boolean inferred) {
    int PROBE_START_LINE_103 = 103;
	com.google.javascript.rhino.jstype.JSType p_return_type_5384_line_103 = returnType;
	int PROBE_END_LINE_103 = 103;
	this.returnType = p_return_type_5384_line_103;
    int PROBE_START_LINE_104 = 104;
	boolean p_inferred_5385_line_104 = inferred;
	int PROBE_END_LINE_104 = 104;
	this.inferredReturnType = p_inferred_5385_line_104;
    return this;
  }

  /** Sets an inferred return type. */
  public FunctionBuilder withInferredReturnType(JSType returnType) {
    this.returnType = returnType;
    this.inferredReturnType = true;
    return this;
  }

  /** Set the "this" type. */
  public FunctionBuilder withTypeOfThis(JSType typeOfThis) {
    int PROBE_START_LINE_117 = 117;
	com.google.javascript.rhino.jstype.JSType p_type_of_this_5387_line_117 = typeOfThis;
	int PROBE_END_LINE_117 = 117;
	this.typeOfThis = p_type_of_this_5387_line_117;
    return this;
  }

  /** Set the template name. */
  public FunctionBuilder withTemplateKeys(
      ImmutableList<TemplateType> templateKeys) {
    int PROBE_START_LINE_124 = 124;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5378_line_124 = registry;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> p_template_keys_5388_line_124 = templateKeys;
		com.google.javascript.rhino.jstype.TemplateTypeMap function_builder_1_expr33_line_124 = f_registry_5378_line_124
				.createTemplateTypeMap(p_template_keys_5388_line_124, null);
		int PROBE_END_LINE_124 = 124;
	this.templateTypeMap = function_builder_1_expr33_line_124;
    return this;
  }

  /** Make this a constructor. */
  public FunctionBuilder forConstructor() {
    this.isConstructor = true;
    return this;
  }

  /** Set whether this is a constructor. */
  public FunctionBuilder setIsConstructor(boolean isConstructor) {
    this.isConstructor = isConstructor;
    return this;
  }

  /** Make this a native type. */
  FunctionBuilder forNativeType() {
    this.isNativeType = true;
    return this;
  }

  /** Copies all the information from another function type. */
  public FunctionBuilder copyFromOtherFunction(FunctionType otherType) {
    this.name = otherType.getReferenceName();
    this.sourceNode = otherType.getSource();
    this.parametersNode = otherType.getParametersNode();
    this.returnType = otherType.getReturnType();
    this.typeOfThis = otherType.getTypeOfThis();
    this.templateTypeMap = otherType.getTemplateTypeMap();
    this.isConstructor = otherType.isConstructor();
    this.isNativeType = otherType.isNativeObjectType();
    return this;
  }

  /** Construct a new function type. */
  public FunctionType build() {
    int PROBE_START_LINE_161 = 163;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5378_line_161 = registry;
	String f_name_5368_line_161 = name;
	com.google.javascript.rhino.Node f_source_node_5369_line_161 = sourceNode;
	int PROBE_END_LINE_161 = 163;
	return new FunctionType(f_registry_5378_line_161, f_name_5368_line_161, f_source_node_5369_line_161,
        new ArrowType(registry, parametersNode, returnType, inferredReturnType),
        typeOfThis, templateTypeMap, isConstructor, isNativeType);
  }
}
