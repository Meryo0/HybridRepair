/*
 * Copyright 2008 The Closure Compiler Authors.
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

package com.google.javascript.jscomp;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.List;

/**
 * Group a set of related diagnostic types together, so that they can
 * be toggled on and off as one unit.
 * @author nicksantos@google.com (Nick Santos)
 */
public class DiagnosticGroup implements Serializable {
  private static final long serialVersionUID = 1;

  // The set of types represented by this group, hashed by key.
  private final Set<DiagnosticType> types;

  // A human-readable name for the group.
  private final String name;

  /**
   * Create a group that matches all errors of the given types.
   */
  DiagnosticGroup(String name, DiagnosticType ...types) {
    int PROBE_START_LINE_46 = 46;
	String p_name_1211_line_46 = name;
	int PROBE_END_LINE_46 = 46;
	this.name = p_name_1211_line_46;
    int PROBE_START_LINE_47 = 47;
	com.google.javascript.jscomp.DiagnosticType[] p_types_1212_line_47 = types;
	List<com.google.javascript.jscomp.DiagnosticType> diagnostic_group_1_expr8_line_47 = Arrays
			.asList(p_types_1212_line_47);
	ImmutableSet<com.google.javascript.jscomp.DiagnosticType> diagnostic_group_1_expr6_line_47 = ImmutableSet
			.copyOf(diagnostic_group_1_expr8_line_47);
	int PROBE_END_LINE_47 = 47;
	this.types = diagnostic_group_1_expr6_line_47;
  }

  /**
   * Create a group that matches all errors of the given types.
   */
  public DiagnosticGroup(DiagnosticType ...types) {
    this(null, types);
  }

  /**
   * Create a diagnostic group with no name that only matches the given type.
   */
  private DiagnosticGroup(DiagnosticType type) {
    this.name = null;
    this.types = ImmutableSet.of(type);
  }

  // DiagnosticGroups with only a single DiagnosticType.
  private static final Map<DiagnosticType, DiagnosticGroup> singletons =
      Maps.newHashMap();

  /** Create a diagnostic group that matches only the given type. */
  public static DiagnosticGroup forType(DiagnosticType type) {
    if (!singletons.containsKey(type)) {
      singletons.put(type, new DiagnosticGroup(type));
    }
    return singletons.get(type);
  }

  /**
   * Create a composite group.
   */
  public DiagnosticGroup(DiagnosticGroup ...groups) {
    this(null, groups);
  }

  /**
   * Create a composite group.
   */
  public DiagnosticGroup(String name, DiagnosticGroup ...groups) {
    int PROBE_START_LINE_88 = 88;
	Set<DiagnosticType> diagnostic_group_1_expr11_line_88 = Sets.newHashSet();
	int PROBE_END_LINE_88 = 88;
	Set<DiagnosticType> set = diagnostic_group_1_expr11_line_88;

    int PROBE_START_LINE_90 = 92;
	com.google.javascript.jscomp.DiagnosticGroup[] p_groups_1221_line_90 = groups;
	int PROBE_END_LINE_90 = 92;
	for (DiagnosticGroup group : p_groups_1221_line_90) {
      int PROBE_START_LINE_91 = 91;
		Set<com.google.javascript.jscomp.DiagnosticType> v_set_1222_line_91 = set;
		com.google.javascript.jscomp.DiagnosticGroup v_group_1223_line_91 = group;
		Set<com.google.javascript.jscomp.DiagnosticType> q_types_48_line_91 = v_group_1223_line_91.types;
		int PROBE_END_LINE_91 = 91;
	v_set_1222_line_91.addAll(q_types_48_line_91);
    }

    int PROBE_START_LINE_94 = 94;
	String p_name_1220_line_94 = name;
	int PROBE_END_LINE_94 = 94;
	this.name = p_name_1220_line_94;
    int PROBE_START_LINE_95 = 95;
	Set<com.google.javascript.jscomp.DiagnosticType> v_set_1222_line_95 = set;
	ImmutableSet<com.google.javascript.jscomp.DiagnosticType> diagnostic_group_1_expr18_line_95 = ImmutableSet
			.copyOf(v_set_1222_line_95);
	int PROBE_END_LINE_95 = 95;
	this.types = diagnostic_group_1_expr18_line_95;
  }

  /**
   * Returns whether the given error's type matches a type
   * in this group.
   */
  public boolean matches(JSError error) {
    int PROBE_START_LINE_103 = 103;
	com.google.javascript.jscomp.JSError p_error_1224_line_103 = error;
	com.google.javascript.jscomp.DiagnosticType diagnostic_group_1_expr21_line_103 = p_error_1224_line_103.getType();
	boolean diagnostic_group_1_expr20_line_103 = matches(diagnostic_group_1_expr21_line_103);
	int PROBE_END_LINE_103 = 103;
	return diagnostic_group_1_expr20_line_103;
  }

  /**
   * Returns whether the given type matches a type in this group.
   */
  public boolean matches(DiagnosticType type) {
    int PROBE_START_LINE_110 = 110;
	Set<com.google.javascript.jscomp.DiagnosticType> f_types_1214_line_110 = types;
	com.google.javascript.jscomp.DiagnosticType p_type_1225_line_110 = type;
	boolean diagnostic_group_1_expr22_line_110 = f_types_1214_line_110.contains(p_type_1225_line_110);
	int PROBE_END_LINE_110 = 110;
	return diagnostic_group_1_expr22_line_110;
  }

  /**
   * Returns whether all of the types in the given group are in this group.
   */
  boolean isSubGroup(DiagnosticGroup group) {
    for (DiagnosticType type : group.types) {
      if (!matches(type)) {
        return false;
      }
    }
    return true;
  }

  /**
   * Returns an iterable over all the types in this group.
   */
  public Iterable<DiagnosticType> getTypes() {
    int PROBE_START_LINE_129 = 129;
	Set<com.google.javascript.jscomp.DiagnosticType> f_types_1214_line_129 = types;
	int PROBE_END_LINE_129 = 129;
	return f_types_1214_line_129;
  }

  @Override
  public String toString() {
    return name == null ? super.toString() : "DiagnosticGroup<" + name + ">";
  }
}
