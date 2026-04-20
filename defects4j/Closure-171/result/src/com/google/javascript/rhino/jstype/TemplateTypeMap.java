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

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;

import java.io.Serializable;
import java.util.Arrays;
import com.google.common.collect.ImmutableList.Builder;

/**
 * Manages a mapping from TemplateType to its resolved JSType. Provides utility
 * methods for cloning/extending the map.
 *
 * @author izaakr@google.com (Izaak Rubin)
 */
public class TemplateTypeMap implements Serializable {
  // The TemplateType keys of the map.
  private final ImmutableList<TemplateType> templateKeys;
  // The JSType values, which are index-aligned with their corresponding keys.
  // These values are left as specified in the TemplateTypeMap constructor; they
  // may refer to TemplateTypes that are keys in this TemplateTypeMap, requiring
  // iterative type resolution to find their true, resolved type.
  private final ImmutableList<JSType> templateValues;
  // The JSType values, which are index-aligned with their corresponding keys.
  // These values have been iteratively type-resolved using this TemplateTypeMap
  // instance. These fully-resolved values are necessary for determining the
  // equivalence of two TemplateTypeMap instances.
  private final ImmutableList<JSType> resolvedTemplateValues;
  final JSTypeRegistry registry;

  TemplateTypeMap(JSTypeRegistry registry,
                  ImmutableList<TemplateType> templateKeys,
                  ImmutableList<JSType> templateValues) {
    int PROBE_START_LINE_72 = 72;
					ImmutableList<com.google.javascript.rhino.jstype.TemplateType> p_template_keys_6086_line_72 = templateKeys;
					int PROBE_END_LINE_72 = 72;
	Preconditions.checkNotNull(p_template_keys_6086_line_72);
    int PROBE_START_LINE_73 = 73;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> p_template_values_6087_line_73 = templateValues;
	int PROBE_END_LINE_73 = 73;
	Preconditions.checkNotNull(p_template_values_6087_line_73);

    int PROBE_START_LINE_75 = 75;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_6085_line_75 = registry;
	int PROBE_END_LINE_75 = 75;
	this.registry = p_registry_6085_line_75;
    int PROBE_START_LINE_76 = 76;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> p_template_keys_6086_line_76 = templateKeys;
	int PROBE_END_LINE_76 = 76;
	this.templateKeys = p_template_keys_6086_line_76;

    int PROBE_START_LINE_78 = 78;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> p_template_keys_6086_line_78 = templateKeys;
	int template_type_map_1_expr9_line_78 = p_template_keys_6086_line_78.size();
	int PROBE_END_LINE_78 = 78;
	int nKeys = template_type_map_1_expr9_line_78;
    int PROBE_START_LINE_79 = 80;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> p_template_values_6087_line_79 = templateValues;
	int template_type_map_1_expr16_line_79 = p_template_values_6087_line_79.size();
	int v_n_keys_6090_line_79 = nKeys;
	boolean template_type_map_1_expr14_line_79 = template_type_map_1_expr16_line_79 > v_n_keys_6090_line_79;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> template_type_map_1_expr12_line_79 = template_type_map_1_expr14_line_79
			? templateValues.subList(0, nKeys)
			: templateValues;
	int PROBE_END_LINE_79 = 80;
	this.templateValues = template_type_map_1_expr12_line_79;

    // Iteratively resolve any JSType values that refer to the TemplateType keys
    // of this TemplateTypeMap.
    TemplateTypeMapReplacer replacer = new TemplateTypeMapReplacer(
        registry, this);
    int PROBE_START_LINE_86 = 86;
	ImmutableList.Builder<JSType> template_type_map_1_expr19_line_86 = ImmutableList.builder();
	int PROBE_END_LINE_86 = 86;
	ImmutableList.Builder<JSType> builder = template_type_map_1_expr19_line_86;
    int PROBE_START_LINE_87 = 89;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> f_template_values_6091_line_87 = this.templateValues;
	int PROBE_END_LINE_87 = 89;
	for (JSType templateValue : f_template_values_6091_line_87) {
      int PROBE_START_LINE_88 = 88;
		com.google.common.collect.ImmutableList.Builder<com.google.javascript.rhino.jstype.JSType> v_builder_6093_line_88 = builder;
		com.google.javascript.rhino.jstype.JSType v_template_value_6094_line_88 = templateValue;
		com.google.javascript.rhino.jstype.TemplateTypeMapReplacer v_replacer_6092_line_88 = replacer;
		com.google.javascript.rhino.jstype.JSType template_type_map_1_expr23_line_88 = v_template_value_6094_line_88
				.visit(v_replacer_6092_line_88);
		int PROBE_END_LINE_88 = 88;
	v_builder_6093_line_88.add(template_type_map_1_expr23_line_88);
    }
    int PROBE_START_LINE_90 = 90;
	com.google.common.collect.ImmutableList.Builder<com.google.javascript.rhino.jstype.JSType> v_builder_6093_line_90 = builder;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> template_type_map_1_expr26_line_90 = v_builder_6093_line_90
			.build();
	int PROBE_END_LINE_90 = 90;
	this.resolvedTemplateValues = template_type_map_1_expr26_line_90;
  }

  /**
   * Returns true if the map is empty; false otherwise.
   */
  public boolean isEmpty() {
    return templateKeys.isEmpty();
  }

  /**
   * Returns a list of all template keys.
   */
  public ImmutableList<TemplateType> getTemplateKeys() {
    int PROBE_START_LINE_104 = 104;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> f_template_keys_6089_line_104 = templateKeys;
	int PROBE_END_LINE_104 = 104;
	return f_template_keys_6089_line_104;
  }

  /**
   * Returns true if this map contains the specified template key, false
   * otherwise.
   */
  public boolean hasTemplateKey(TemplateType templateKey) {
    // Note: match by identity, not equality
    for (TemplateType entry : templateKeys) {
      if (entry == templateKey) {
        return true;
      }
    }
    return false;
  }

  /**
   * Returns the number of template keys in this map that do not have a
   * corresponding JSType value.
   */
  int numUnfilledTemplateKeys() {
    int PROBE_START_LINE_126 = 126;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> f_template_keys_6089_line_126 = templateKeys;
	int template_type_map_1_expr29_line_126 = f_template_keys_6089_line_126.size();
	ImmutableList<com.google.javascript.rhino.jstype.JSType> f_template_values_6091_line_126 = templateValues;
	int template_type_map_1_expr30_line_126 = f_template_values_6091_line_126.size();
	int template_type_map_1_expr28_line_126 = template_type_map_1_expr29_line_126 - template_type_map_1_expr30_line_126;
	int PROBE_END_LINE_126 = 126;
	return template_type_map_1_expr28_line_126;
  }

  /**
   * Returns a list of template keys in this map that do not have corresponding
   * JSType values.
   */
  ImmutableList<TemplateType> getUnfilledTemplateKeys() {
    return templateKeys.subList(templateValues.size(), templateKeys.size());
  }

  /**
   * Returns true if there is a JSType value associated with the specified
   * template key; false otherwise.
   */
  public boolean hasTemplateType(TemplateType key) {
    return getTemplateTypeIndex(key) != -1;
  }

  /**
   * Returns the JSType value associated with the specified template key. If no
   * JSType value is associated, returns UNKNOWN_TYPE.
   */
  public JSType getTemplateType(TemplateType key) {
    int PROBE_START_LINE_150 = 150;
	com.google.javascript.rhino.jstype.TemplateType p_key_6098_line_150 = key;
	int template_type_map_1_expr31_line_150 = getTemplateTypeIndex(p_key_6098_line_150);
	int PROBE_END_LINE_150 = 150;
	int index = template_type_map_1_expr31_line_150;
    int PROBE_START_LINE_151 = 152;
	int v_index_6099_line_151 = index;
	int template_type_map_1_expr37_line_151 = -1;
	boolean template_type_map_1_expr36_line_151 = v_index_6099_line_151 == template_type_map_1_expr37_line_151;
	boolean template_type_map_1_expr33_line_151 = (template_type_map_1_expr36_line_151);
	com.google.javascript.rhino.jstype.JSType template_type_map_1_expr34_line_151 = null;
	if (template_type_map_1_expr33_line_151) {
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_6088_line_151 = registry;
		com.google.javascript.rhino.jstype.JSTypeNative q_unknown_type_260_line_151 = JSTypeNative.UNKNOWN_TYPE;
		template_type_map_1_expr34_line_151 = f_registry_6088_line_151.getNativeType(q_unknown_type_260_line_151);
	}
	com.google.javascript.rhino.jstype.JSType template_type_map_1_expr32_line_151 = template_type_map_1_expr33_line_151
			? template_type_map_1_expr34_line_151
			: templateValues.get(index);
	int PROBE_END_LINE_151 = 152;
	return template_type_map_1_expr32_line_151;
  }

  public TemplateType getTemplateTypeKeyByName(String keyName) {
    int PROBE_START_LINE_156 = 160;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> f_template_keys_6089_line_156 = templateKeys;
	int PROBE_END_LINE_156 = 160;
	for (TemplateType key : f_template_keys_6089_line_156) {
      if (key.getReferenceName().equals(keyName)) {
        return key;
      }
    }
    return null;
  }

  /**
   * Returns the index of the JSType value associated with the specified
   * template key. If no JSType value is associated, returns -1.
   */
  private int getTemplateTypeIndex(TemplateType key) {
    int PROBE_START_LINE_169 = 169;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> f_template_keys_6089_line_169 = templateKeys;
	int template_type_map_1_expr39_line_169 = f_template_keys_6089_line_169.size();
	ImmutableList<com.google.javascript.rhino.jstype.JSType> f_template_values_6091_line_169 = templateValues;
	int template_type_map_1_expr40_line_169 = f_template_values_6091_line_169.size();
	int template_type_map_1_expr38_line_169 = Math.min(template_type_map_1_expr39_line_169,
			template_type_map_1_expr40_line_169);
	int maxIndex = template_type_map_1_expr38_line_169;
    boolean FOR_STMT_TOGGLE_LINE_170 = false;
	int PROBE_END_LINE_169 = 169;
	for (int i = 0; true;) {
      int PROBE_START_LINE_171 = 173;
		if (!FOR_STMT_TOGGLE_LINE_170) {
			FOR_STMT_TOGGLE_LINE_170 = true;
			int v_max_index_6103_line_170 = maxIndex;
			int template_type_map_1_expr42_line_170 = v_max_index_6103_line_170 - 1;
			i = template_type_map_1_expr42_line_170;
		} else {
			if (FOR_STMT_TOGGLE_LINE_170) {
				i--;
			} else {
				FOR_STMT_TOGGLE_LINE_170 = true;
			}
		}
		int v_i_6104_line_170 = i;
		boolean template_type_map_1_expr43_line_170 = v_i_6104_line_170 >= 0;
		if (!(template_type_map_1_expr43_line_170)) {
			break;
		}
		int PROBE_END_LINE_171 = 173;
	if (templateKeys.get(i) == key) {
        return i;
      }
    }
    int PROBE_START_LINE_175 = 175;
	int template_type_map_1_expr45_line_175 = -1;
	int PROBE_END_LINE_175 = 175;
	return template_type_map_1_expr45_line_175;
  }

  private JSType getResolvedTemplateType(TemplateType key) {
    int PROBE_START_LINE_179 = 179;
	com.google.javascript.rhino.jstype.TemplateType p_key_6105_line_179 = key;
	int template_type_map_1_expr46_line_179 = getTemplateTypeIndex(p_key_6105_line_179);
	int PROBE_END_LINE_179 = 179;
	int index = template_type_map_1_expr46_line_179;
    int PROBE_START_LINE_180 = 181;
	int v_index_6106_line_180 = index;
	int template_type_map_1_expr52_line_180 = -1;
	boolean template_type_map_1_expr51_line_180 = v_index_6106_line_180 == template_type_map_1_expr52_line_180;
	boolean template_type_map_1_expr48_line_180 = (template_type_map_1_expr51_line_180);
	com.google.javascript.rhino.jstype.JSType template_type_map_1_expr49_line_180 = null;
	if (template_type_map_1_expr48_line_180) {
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_6088_line_180 = registry;
		com.google.javascript.rhino.jstype.JSTypeNative q_unknown_type_260_line_180 = JSTypeNative.UNKNOWN_TYPE;
		template_type_map_1_expr49_line_180 = f_registry_6088_line_180.getNativeType(q_unknown_type_260_line_180);
	}
	com.google.javascript.rhino.jstype.JSType template_type_map_1_expr47_line_180 = template_type_map_1_expr48_line_180
			? template_type_map_1_expr49_line_180
			: resolvedTemplateValues.get(index);
	int PROBE_END_LINE_180 = 181;
	return template_type_map_1_expr47_line_180;
  }

  /**
   * An enum tracking the three different equivalence match states for a
   * template key-value pair.
   */
  private enum EquivalenceMatch {
    NO_KEY_MATCH, VALUE_MISMATCH, VALUE_MATCH
  }

  /**
   * Determines if this map and the specified map have equivalent template
   * types.
   */
  public boolean checkEquivalenceHelper(
      TemplateTypeMap that, EquivalenceMethod eqMethod) {
    int PROBE_START_LINE_198 = 198;
		ImmutableList<TemplateType> template_type_map_1_expr53_line_198 = getTemplateKeys();
		int PROBE_END_LINE_198 = 198;
	ImmutableList<TemplateType> thisKeys = template_type_map_1_expr53_line_198;
    int PROBE_START_LINE_199 = 199;
	com.google.javascript.rhino.jstype.TemplateTypeMap p_that_6110_line_199 = that;
	ImmutableList<TemplateType> template_type_map_1_expr54_line_199 = p_that_6110_line_199.getTemplateKeys();
	int PROBE_END_LINE_199 = 199;
	ImmutableList<TemplateType> thatKeys = template_type_map_1_expr54_line_199;

    int PROBE_START_LINE_201 = 201;
	ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_that_keys_6113_line_201 = thatKeys;
	int template_type_map_1_expr56_line_201 = v_that_keys_6113_line_201.size();
	int PROBE_END_LINE_201 = 201;
	EquivalenceMatch[] thatMatches = new EquivalenceMatch[template_type_map_1_expr56_line_201];
    int PROBE_START_LINE_202 = 202;
	com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch[] v_that_matches_6114_line_202 = thatMatches;
	com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch q_no_key_match_260_line_202 = EquivalenceMatch.NO_KEY_MATCH;
	int PROBE_END_LINE_202 = 202;
	Arrays.fill(v_that_matches_6114_line_202, q_no_key_match_260_line_202);

    for (int i = 0; true; i++) {
      int PROBE_START_LINE_205 = 205;
		int v_i_6115_line_204 = i;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_this_keys_6112_line_204 = thisKeys;
		int template_type_map_1_expr60_line_204 = v_this_keys_6112_line_204.size();
		boolean template_type_map_1_expr59_line_204 = v_i_6115_line_204 < template_type_map_1_expr60_line_204;
		if (!(template_type_map_1_expr59_line_204)) {
			break;
		}
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_this_keys_6112_line_205 = thisKeys;
		int v_i_6115_line_205 = i;
		TemplateType template_type_map_1_expr62_line_205 = v_this_keys_6112_line_205.get(v_i_6115_line_205);
		int PROBE_END_LINE_205 = 205;
	TemplateType thisKey = template_type_map_1_expr62_line_205;
      int PROBE_START_LINE_206 = 206;
	com.google.javascript.rhino.jstype.TemplateType v_this_key_6116_line_206 = thisKey;
	JSType template_type_map_1_expr63_line_206 = getResolvedTemplateType(v_this_key_6116_line_206);
	int PROBE_END_LINE_206 = 206;
	JSType thisType = template_type_map_1_expr63_line_206;
      int PROBE_START_LINE_207 = 207;
	EquivalenceMatch q_no_key_match_261_line_207 = EquivalenceMatch.NO_KEY_MATCH;
	int PROBE_END_LINE_207 = 207;
	EquivalenceMatch thisMatch = q_no_key_match_261_line_207;

      for (int j = 0; true; j++) {
        int PROBE_START_LINE_210 = 210;
		int v_j_6119_line_209 = j;
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_that_keys_6113_line_209 = thatKeys;
		int template_type_map_1_expr66_line_209 = v_that_keys_6113_line_209.size();
		boolean template_type_map_1_expr65_line_209 = v_j_6119_line_209 < template_type_map_1_expr66_line_209;
		if (!(template_type_map_1_expr65_line_209)) {
			break;
		}
		ImmutableList<com.google.javascript.rhino.jstype.TemplateType> v_that_keys_6113_line_210 = thatKeys;
		int v_j_6119_line_210 = j;
		TemplateType template_type_map_1_expr68_line_210 = v_that_keys_6113_line_210.get(v_j_6119_line_210);
		int PROBE_END_LINE_210 = 210;
		TemplateType thatKey = template_type_map_1_expr68_line_210;
        int PROBE_START_LINE_211 = 211;
		com.google.javascript.rhino.jstype.TemplateTypeMap p_that_6110_line_211 = that;
		com.google.javascript.rhino.jstype.TemplateType v_that_key_6120_line_211 = thatKey;
		JSType template_type_map_1_expr69_line_211 = p_that_6110_line_211
				.getResolvedTemplateType(v_that_key_6120_line_211);
		int PROBE_END_LINE_211 = 211;
		JSType thatType = template_type_map_1_expr69_line_211;

        int PROBE_START_LINE_216 = 228;
		com.google.javascript.rhino.jstype.TemplateType v_this_key_6116_line_216 = thisKey;
		com.google.javascript.rhino.jstype.TemplateType v_that_key_6120_line_216 = thatKey;
		boolean template_type_map_1_expr70_line_216 = v_this_key_6116_line_216 == v_that_key_6120_line_216;
		int PROBE_END_LINE_216 = 228;
		// Cross-compare every key-value pair in this TemplateTypeMap with
        // those in that TemplateTypeMap. Update the Equivalence match for both
        // key-value pairs involved.
        if (template_type_map_1_expr70_line_216) {
          EquivalenceMatch newMatchType = EquivalenceMatch.VALUE_MISMATCH;
          if (thisType.checkEquivalenceHelper(thatType, eqMethod)) {
            newMatchType = EquivalenceMatch.VALUE_MATCH;
          }

          if (thisMatch != EquivalenceMatch.VALUE_MATCH) {
            thisMatch = newMatchType;
          }
          if (thatMatches[j] != EquivalenceMatch.VALUE_MATCH) {
            thatMatches[j] = newMatchType;
          }
        }
      }

      int PROBE_START_LINE_231 = 233;
	com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch v_this_match_6118_line_231 = thisMatch;
	com.google.javascript.rhino.jstype.EquivalenceMethod p_eq_method_6111_line_231 = eqMethod;
	boolean template_type_map_1_expr71_line_231 = failedEquivalenceCheck(v_this_match_6118_line_231,
			p_eq_method_6111_line_231);
	int PROBE_END_LINE_231 = 233;
	if (template_type_map_1_expr71_line_231) {
        return false;
      }
    }

    for (int i = 0; true; i++) {
      int PROBE_START_LINE_237 = 239;
		int v_i_6122_line_236 = i;
		com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch[] v_that_matches_6114_line_236 = thatMatches;
		int q_length_261_line_236 = v_that_matches_6114_line_236.length;
		boolean template_type_map_1_expr73_line_236 = v_i_6122_line_236 < q_length_261_line_236;
		if (!(template_type_map_1_expr73_line_236)) {
			break;
		}
		com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch[] v_that_matches_6114_line_237 = thatMatches;
		int v_i_6122_line_237 = i;
		com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch template_type_map_1_expr76_line_237 = v_that_matches_6114_line_237[v_i_6122_line_237];
		com.google.javascript.rhino.jstype.EquivalenceMethod p_eq_method_6111_line_237 = eqMethod;
		boolean template_type_map_1_expr75_line_237 = failedEquivalenceCheck(template_type_map_1_expr76_line_237,
				p_eq_method_6111_line_237);
		int PROBE_END_LINE_237 = 239;
	if (template_type_map_1_expr75_line_237) {
        return false;
      }
    }

    return true;
  }

  /**
   * Determines if the specified EquivalenceMatch is considered a failing
   * condition for an equivalence check, given the EquivalenceMethod used for
   * the check.
   */
  private boolean failedEquivalenceCheck(
      EquivalenceMatch eqMatch, EquivalenceMethod eqMethod) {
    int PROBE_START_LINE_252 = 254;
		com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch p_eq_match_6123_line_252 = eqMatch;
		com.google.javascript.rhino.jstype.TemplateTypeMap.EquivalenceMatch q_value_mismatch_262_line_252 = EquivalenceMatch.VALUE_MISMATCH;
		boolean template_type_map_1_expr78_line_252 = p_eq_match_6123_line_252 == q_value_mismatch_262_line_252;
		boolean template_type_map_1_expr77_line_252 = template_type_map_1_expr78_line_252
				|| (eqMatch == EquivalenceMatch.NO_KEY_MATCH && eqMethod != EquivalenceMethod.INVARIANT);
		int PROBE_END_LINE_252 = 254;
	return template_type_map_1_expr77_line_252;
  }

  /**
   * Extends this TemplateTypeMap with the contents of the specified map.
   * UNKNOWN_TYPE will be used as the value for any missing values in the
   * specified map.
   */
  TemplateTypeMap extend(TemplateTypeMap thatMap) {
    int PROBE_START_LINE_263 = 263;
	com.google.javascript.rhino.jstype.TemplateTypeMap p_that_map_6125_line_263 = thatMap;
	com.google.javascript.rhino.jstype.TemplateTypeMap template_type_map_1_expr80_line_263 = p_that_map_6125_line_263
			.addUnknownValues();
	int PROBE_END_LINE_263 = 263;
	thatMap = template_type_map_1_expr80_line_263;
    int PROBE_START_LINE_264 = 266;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_6088_line_264 = registry;
	com.google.javascript.rhino.jstype.TemplateTypeMap template_type_map_1_expr81_line_264 = f_registry_6088_line_264
			.createTemplateTypeMap(concatImmutableLists(thatMap.templateKeys, templateKeys),
					concatImmutableLists(thatMap.templateValues, templateValues));
	int PROBE_END_LINE_264 = 266;
	return template_type_map_1_expr81_line_264;
  }

  /**
   * Returns a new TemplateTypeMap whose values have been extended with the
   * specified list.
   */
  TemplateTypeMap addValues(ImmutableList<JSType> newValues) {
    int PROBE_START_LINE_276 = 276;
	int template_type_map_1_expr84_line_276 = numUnfilledTemplateKeys();
	int PROBE_END_LINE_276 = 276;
	// Ignore any new template values that will not align with an existing
    // template key.
    int numUnfilledKeys = template_type_map_1_expr84_line_276;
    int PROBE_START_LINE_277 = 279;
	int v_num_unfilled_keys_6127_line_277 = numUnfilledKeys;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> p_new_values_6126_line_277 = newValues;
	int template_type_map_1_expr86_line_277 = p_new_values_6126_line_277.size();
	boolean template_type_map_1_expr85_line_277 = v_num_unfilled_keys_6127_line_277 < template_type_map_1_expr86_line_277;
	int PROBE_END_LINE_277 = 279;
	if (template_type_map_1_expr85_line_277) {
      newValues = newValues.subList(0, numUnfilledKeys);
    }

    int PROBE_START_LINE_281 = 282;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_6088_line_281 = registry;
	com.google.javascript.rhino.jstype.TemplateTypeMap template_type_map_1_expr87_line_281 = f_registry_6088_line_281
			.createTemplateTypeMap(templateKeys, concatImmutableLists(templateValues, newValues));
	int PROBE_END_LINE_281 = 282;
	return template_type_map_1_expr87_line_281;
  }

  /**
   * Returns a new TemplateTypeMap, where all unfilled values have been filled
   * with UNKNOWN_TYPE.
   */
  private TemplateTypeMap addUnknownValues() {
    int PROBE_START_LINE_290 = 290;
	int template_type_map_1_expr89_line_290 = numUnfilledTemplateKeys();
	int PROBE_END_LINE_290 = 290;
	int numUnfilledTemplateKeys = template_type_map_1_expr89_line_290;
    int PROBE_START_LINE_291 = 293;
	int v_num_unfilled_template_keys_6128_line_291 = numUnfilledTemplateKeys;
	boolean template_type_map_1_expr90_line_291 = v_num_unfilled_template_keys_6128_line_291 == 0;
	int PROBE_END_LINE_291 = 293;
	if (template_type_map_1_expr90_line_291) {
      return this;
    }

    int PROBE_START_LINE_295 = 295;
	ImmutableList.Builder<JSType> template_type_map_1_expr92_line_295 = ImmutableList.builder();
	int PROBE_END_LINE_295 = 295;
	ImmutableList.Builder<JSType> builder = template_type_map_1_expr92_line_295;
    for (int i = 0; true; i++) {
      int PROBE_START_LINE_297 = 297;
		int v_i_6130_line_296 = i;
		int v_num_unfilled_template_keys_6128_line_296 = numUnfilledTemplateKeys;
		boolean template_type_map_1_expr94_line_296 = v_i_6130_line_296 < v_num_unfilled_template_keys_6128_line_296;
		if (!(template_type_map_1_expr94_line_296)) {
			break;
		}
		com.google.common.collect.ImmutableList.Builder<com.google.javascript.rhino.jstype.JSType> v_builder_6129_line_297 = builder;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_6088_line_297 = registry;
		com.google.javascript.rhino.jstype.JSTypeNative q_unknown_type_263_line_297 = JSTypeNative.UNKNOWN_TYPE;
		com.google.javascript.rhino.jstype.JSType template_type_map_1_expr97_line_297 = f_registry_6088_line_297
				.getNativeType(q_unknown_type_263_line_297);
		int PROBE_END_LINE_297 = 297;
	v_builder_6129_line_297.add(template_type_map_1_expr97_line_297);
    }
    int PROBE_START_LINE_299 = 299;
	com.google.common.collect.ImmutableList.Builder<com.google.javascript.rhino.jstype.JSType> v_builder_6129_line_299 = builder;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> template_type_map_1_expr99_line_299 = v_builder_6129_line_299
			.build();
	com.google.javascript.rhino.jstype.TemplateTypeMap template_type_map_1_expr98_line_299 = addValues(
			template_type_map_1_expr99_line_299);
	int PROBE_END_LINE_299 = 299;
	return template_type_map_1_expr98_line_299;
  }

  /**
   * Concatenates two ImmutableList instances. If either input is empty, the
   * other is returned; otherwise, a new ImmutableList instance is created that
   * contains the contents of both arguments.
   */
  private <T> ImmutableList<T> concatImmutableLists(
    ImmutableList<T> first, ImmutableList<T> second) {
    int PROBE_START_LINE_309 = 311;
		ImmutableList<T> p_first_6131_line_309 = first;
		boolean template_type_map_1_expr100_line_309 = p_first_6131_line_309.isEmpty();
		int PROBE_END_LINE_309 = 311;
	if (template_type_map_1_expr100_line_309) {
      int PROBE_START_LINE_310 = 310;
		ImmutableList<T> p_second_6132_line_310 = second;
		int PROBE_END_LINE_310 = 310;
	return p_second_6132_line_310;
    }
    int PROBE_START_LINE_312 = 314;
	ImmutableList<T> p_second_6132_line_312 = second;
	boolean template_type_map_1_expr101_line_312 = p_second_6132_line_312.isEmpty();
	int PROBE_END_LINE_312 = 314;
	if (template_type_map_1_expr101_line_312) {
      int PROBE_START_LINE_313 = 313;
		ImmutableList<T> p_first_6131_line_313 = first;
		int PROBE_END_LINE_313 = 313;
	return p_first_6131_line_313;
    }
    ImmutableList.Builder<T> builder = ImmutableList.builder();
    builder.addAll(first);
    builder.addAll(second);
    return builder.build();
  }

  boolean hasAnyTemplateTypesInternal() {
    int PROBE_START_LINE_322 = 326;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> f_template_values_6091_line_322 = templateValues;
	int PROBE_END_LINE_322 = 326;
	for (JSType templateValue : f_template_values_6091_line_322) {
      if (templateValue.hasAnyTemplateTypes()) {
        return true;
      }
    }
    return false;
  }
}
