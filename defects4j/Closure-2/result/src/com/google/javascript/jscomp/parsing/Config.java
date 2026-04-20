/*
 * Copyright 2009 The Closure Compiler Authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.google.javascript.jscomp.parsing;

import com.google.common.collect.ImmutableMap;

import java.util.Map;
import java.util.Set;
import com.google.common.collect.ImmutableMap.Builder;

/**
 * Configuration for the AST factory. Should be shared across AST creation
 * for all files of a compilation process.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
public class Config {

  public enum LanguageMode {
    ECMASCRIPT3,
    ECMASCRIPT5,
    ECMASCRIPT5_STRICT,
  }

  /**
   * Whether to parse the descriptions of JsDoc comments.
   */
  final boolean parseJsDocDocumentation;

  /**
   * Whether we're in IDE mode.
   */
  final boolean isIdeMode;

  /**
   * Recognized JSDoc annotations, mapped from their name to their internal
   * representation.
   */
  final Map<String, Annotation> annotationNames;

  /**
   * Recognized names in a {@code @suppress} tag.
   */
  final Set<String> suppressionNames;

  /**
   * Accept ECMAScript5 syntax, such as getter/setter.
   */
  final LanguageMode languageMode;

  /**
   * Accept `const' keyword.
   */
  final boolean acceptConstKeyword;

  /**
   * Annotation names.
   */

  Config(Set<String> annotationWhitelist, Set<String> suppressionNames,
      boolean isIdeMode, LanguageMode languageMode,
      boolean acceptConstKeyword) {
    int PROBE_START_LINE_76 = 76;
		Set<String> p_annotation_whitelist_3550_line_76 = annotationWhitelist;
		Map<String, com.google.javascript.jscomp.parsing.Annotation> config_1_expr3_line_76 = buildAnnotationNames(
				p_annotation_whitelist_3550_line_76);
		int PROBE_END_LINE_76 = 76;
	this.annotationNames = config_1_expr3_line_76;
    int PROBE_START_LINE_77 = 77;
	boolean p_is_ide_mode_3552_line_77 = isIdeMode;
	int PROBE_END_LINE_77 = 77;
	this.parseJsDocDocumentation = p_is_ide_mode_3552_line_77;
    int PROBE_START_LINE_78 = 78;
	Set<String> p_suppression_names_3551_line_78 = suppressionNames;
	int PROBE_END_LINE_78 = 78;
	this.suppressionNames = p_suppression_names_3551_line_78;
    int PROBE_START_LINE_79 = 79;
	boolean p_is_ide_mode_3552_line_79 = isIdeMode;
	int PROBE_END_LINE_79 = 79;
	this.isIdeMode = p_is_ide_mode_3552_line_79;
    int PROBE_START_LINE_80 = 80;
	com.google.javascript.jscomp.parsing.Config.LanguageMode p_language_mode_3553_line_80 = languageMode;
	int PROBE_END_LINE_80 = 80;
	this.languageMode = p_language_mode_3553_line_80;
    int PROBE_START_LINE_81 = 81;
	boolean p_accept_const_keyword_3554_line_81 = acceptConstKeyword;
	int PROBE_END_LINE_81 = 81;
	this.acceptConstKeyword = p_accept_const_keyword_3554_line_81;
  }

  /**
   * Create the annotation names from the user-specified
   * annotation whitelist.
   */
  private static Map<String, Annotation> buildAnnotationNames(
      Set<String> annotationWhitelist) {
    ImmutableMap.Builder<String, Annotation> annotationBuilder =
        ImmutableMap.builder();
    int PROBE_START_LINE_92 = 92;
	com.google.common.collect.ImmutableMap.Builder<String, com.google.javascript.jscomp.parsing.Annotation> v_annotation_builder_3562_line_92 = annotationBuilder;
	Map<String, com.google.javascript.jscomp.parsing.Annotation> q_recognized_annotations_82_line_92 = Annotation.recognizedAnnotations;
	int PROBE_END_LINE_92 = 92;
	v_annotation_builder_3562_line_92.putAll(q_recognized_annotations_82_line_92);
    int PROBE_START_LINE_93 = 99;
	Set<String> p_annotation_whitelist_3561_line_93 = annotationWhitelist;
	int PROBE_END_LINE_93 = 99;
	for (String unrecognizedAnnotation : p_annotation_whitelist_3561_line_93) {
      int PROBE_START_LINE_94 = 98;
		Map<String, com.google.javascript.jscomp.parsing.Annotation> q_recognized_annotations_83_line_94 = Annotation.recognizedAnnotations;
		boolean config_1_expr23_line_94 = q_recognized_annotations_83_line_94.containsKey(unrecognizedAnnotation);
		boolean config_1_expr22_line_94 = !config_1_expr23_line_94;
		int PROBE_END_LINE_94 = 98;
	if (config_1_expr22_line_94) {
        int PROBE_START_LINE_96 = 97;
				com.google.common.collect.ImmutableMap.Builder<String, com.google.javascript.jscomp.parsing.Annotation> v_annotation_builder_3562_line_96 = annotationBuilder;
				int PROBE_END_LINE_96 = 97;
		v_annotation_builder_3562_line_96.put(
            unrecognizedAnnotation, Annotation.NOT_IMPLEMENTED);
      }
    }
    int PROBE_START_LINE_100 = 100;
	com.google.common.collect.ImmutableMap.Builder<String, com.google.javascript.jscomp.parsing.Annotation> v_annotation_builder_3562_line_100 = annotationBuilder;
	ImmutableMap<String, com.google.javascript.jscomp.parsing.Annotation> config_1_expr25_line_100 = v_annotation_builder_3562_line_100
			.build();
	int PROBE_END_LINE_100 = 100;
	return config_1_expr25_line_100;
  }
}
