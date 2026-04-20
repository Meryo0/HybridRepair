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

import static com.google.javascript.rhino.jstype.JSTypeNative.ALL_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.CHECKED_UNKNOWN_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.NO_TYPE;
import static com.google.javascript.rhino.jstype.JSTypeNative.UNKNOWN_TYPE;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

/**
 * A builder for union types.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
class UnionTypeBuilder implements Serializable {
  private static final long serialVersionUID = 1L;

  // If the best we can do is say "this object is one of twenty things",
  // then we should just give up and admit that we have no clue.
  private static final int DEFAULT_MAX_UNION_SIZE = 20;

  private final JSTypeRegistry registry;
  int PROBE_START_LINE_70 = 70;

private final ArrayList<com.google.javascript.rhino.jstype.JSType> union_type_builder_1_expr1_line_70 = Lists
		.newArrayList();

int PROBE_END_LINE_70 = 70;

private final List<JSType> alternates = union_type_builder_1_expr1_line_70;
  private boolean isAllType = false;
  private boolean isNativeUnknownType = false;
  private boolean areAllUnknownsChecked = true;
  private final int maxUnionSize;

  int PROBE_START_LINE_94 = 94;

private int union_type_builder_1_expr2_line_94 = -1;

int PROBE_END_LINE_94 = 94;

// Every UnionType may have at most one structural function in it.
  //
  // NOTE(nicksantos): I've read some literature that says that type-inferenced
  // languages are fundamentally incompatible with union types. I refuse
  // to believe this. But they do make the type lattice much more complicated.
  //
  // For this reason, when we deal with function types, we actually merge some
  // nodes on the lattice, and treat them as fundamentally equivalent.
  // For example, we treat
  // function(): string | function(): number
  // as equivalent to
  // function(): (string|number)
  // and normalize the first type into the second type.
  //
  // To perform this normalization, we've modified UnionTypeBuilder to disallow
  // multiple structural functions in a union. We always delegate to
  // FunctionType::getLeastSupertype, which either merges the functions into
  // one structural function, or just bails out and uses the top function type.
  private int functionTypePosition = union_type_builder_1_expr2_line_94;

  // Memoize the result, in case build() is called multiple times.
  private JSType result = null;

  UnionTypeBuilder(JSTypeRegistry registry) {
    this(registry, DEFAULT_MAX_UNION_SIZE);
  }

  UnionTypeBuilder(JSTypeRegistry registry, int maxUnionSize) {
    int PROBE_START_LINE_104 = 104;
	com.google.javascript.rhino.jstype.JSTypeRegistry p_registry_5479_line_104 = registry;
	int PROBE_END_LINE_104 = 104;
	this.registry = p_registry_5479_line_104;
    int PROBE_START_LINE_105 = 105;
	int p_max_union_size_5480_line_105 = maxUnionSize;
	int PROBE_END_LINE_105 = 105;
	this.maxUnionSize = p_max_union_size_5480_line_105;
  }

  Iterable<JSType> getAlternates() {
    JSType specialCaseType = reduceAlternatesWithoutUnion();
    if (specialCaseType != null) {
      return ImmutableList.of(specialCaseType);
    }
    return Collections.unmodifiableList(alternates);
  }

  /**
   * Adds an alternate to the union type under construction. Returns this
   * for easy chaining.
   */
  UnionTypeBuilder addAlternate(JSType alternate) {
    int PROBE_START_LINE_123 = 125;
	com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_123 = alternate;
	boolean union_type_builder_1_expr10_line_123 = p_alternate_5483_line_123.isNoType();
	int PROBE_END_LINE_123 = 125;
	// build() returns the bottom type by default, so we can
    // just bail out early here.
    if (union_type_builder_1_expr10_line_123) {
      return this;
    }

    int PROBE_START_LINE_127 = 127;
	boolean f_is_all_type_5472_line_127 = isAllType;
	boolean union_type_builder_1_expr14_line_127 = false;
	if (!f_is_all_type_5472_line_127) {
		com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_127 = alternate;
		union_type_builder_1_expr14_line_127 = p_alternate_5483_line_127.isAllType();
	}
	boolean union_type_builder_1_expr13_line_127 = f_is_all_type_5472_line_127 || union_type_builder_1_expr14_line_127;
	int PROBE_END_LINE_127 = 127;
	isAllType = union_type_builder_1_expr13_line_127;

    int PROBE_START_LINE_129 = 129;
	com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_129 = alternate;
	boolean union_type_builder_1_expr15_line_129 = p_alternate_5483_line_129 instanceof UnknownType;
	int PROBE_END_LINE_129 = 129;
	boolean isAlternateUnknown = union_type_builder_1_expr15_line_129;
    int PROBE_START_LINE_130 = 130;
	boolean f_is_native_unknown_type_5473_line_130 = isNativeUnknownType;
	boolean v_is_alternate_unknown_5484_line_130 = false;
	if (!f_is_native_unknown_type_5473_line_130) {
		v_is_alternate_unknown_5484_line_130 = isAlternateUnknown;
	}
	boolean union_type_builder_1_expr17_line_130 = f_is_native_unknown_type_5473_line_130
			|| v_is_alternate_unknown_5484_line_130;
	int PROBE_END_LINE_130 = 130;
	isNativeUnknownType = union_type_builder_1_expr17_line_130;
    int PROBE_START_LINE_131 = 134;
	boolean v_is_alternate_unknown_5484_line_131 = isAlternateUnknown;
	int PROBE_END_LINE_131 = 134;
	if (v_is_alternate_unknown_5484_line_131) {
      areAllUnknownsChecked = areAllUnknownsChecked &&
          alternate.isCheckedUnknownType();
    }
    int PROBE_START_LINE_135 = 279;
	boolean f_is_all_type_5472_line_135 = isAllType;
	boolean union_type_builder_1_expr19_line_135 = !f_is_all_type_5472_line_135;
	boolean union_type_builder_1_expr20_line_135 = true;
	if (union_type_builder_1_expr19_line_135) {
		boolean f_is_native_unknown_type_5473_line_135 = isNativeUnknownType;
		union_type_builder_1_expr20_line_135 = !f_is_native_unknown_type_5473_line_135;
	}
	boolean union_type_builder_1_expr18_line_135 = union_type_builder_1_expr19_line_135
			&& union_type_builder_1_expr20_line_135;
	int PROBE_END_LINE_135 = 279;
	if (union_type_builder_1_expr18_line_135) {
      int PROBE_START_LINE_136 = 276;
		com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_136 = alternate;
		boolean union_type_builder_1_expr21_line_136 = p_alternate_5483_line_136.isUnionType();
		int PROBE_END_LINE_136 = 276;
	if (union_type_builder_1_expr21_line_136) {
        UnionType union = alternate.toMaybeUnionType();
        for (JSType unionAlt : union.getAlternates()) {
          addAlternate(unionAlt);
        }
      } else {
        int PROBE_START_LINE_142 = 144;
		List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_142 = alternates;
		int union_type_builder_1_expr23_line_142 = f_alternates_5471_line_142.size();
		int f_max_union_size_5482_line_142 = maxUnionSize;
		boolean union_type_builder_1_expr22_line_142 = union_type_builder_1_expr23_line_142 > f_max_union_size_5482_line_142;
		int PROBE_END_LINE_142 = 144;
		if (union_type_builder_1_expr22_line_142) {
          return this;
        }

        int PROBE_START_LINE_149 = 158;
		com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_149 = alternate;
		boolean union_type_builder_1_expr25_line_149 = p_alternate_5483_line_149.isFunctionType();
		boolean union_type_builder_1_expr26_line_149 = true;
		if (union_type_builder_1_expr25_line_149) {
			int f_function_type_position_5475_line_149 = functionTypePosition;
			int union_type_builder_1_expr27_line_149 = -1;
			union_type_builder_1_expr26_line_149 = f_function_type_position_5475_line_149 != union_type_builder_1_expr27_line_149;
		}
		boolean union_type_builder_1_expr24_line_149 = union_type_builder_1_expr25_line_149
				&& union_type_builder_1_expr26_line_149;
		int PROBE_END_LINE_149 = 158;
		// Function types are special, because they have their
        // own bizarre sub-lattice. See the comments on
        // FunctionType#supAndInf helper and above at functionTypePosition.
        if (union_type_builder_1_expr24_line_149) {
          // See the comments on functionTypePosition above.
          FunctionType other =
              alternates.get(functionTypePosition).toMaybeFunctionType();
          FunctionType supremum =
              alternate.toMaybeFunctionType().supAndInfHelper(other, true);
          alternates.set(functionTypePosition, supremum);
          result = null;
          return this;
        }

        // Look through the alternates we've got so far,
        // and check if any of them are duplicates of
        // one another.
        int currentIndex = 0;
        int PROBE_START_LINE_164 = 164;
		List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_164 = alternates;
		Iterator<JSType> union_type_builder_1_expr28_line_164 = f_alternates_5471_line_164.iterator();
		int PROBE_END_LINE_164 = 164;
		Iterator<JSType> it = union_type_builder_1_expr28_line_164;
        while (true) {
          int PROBE_START_LINE_165 = 165;
			Iterator<com.google.javascript.rhino.jstype.JSType> v_it_5486_line_165 = it;
			boolean union_type_builder_1_expr29_line_165 = v_it_5486_line_165.hasNext();
			if (!(union_type_builder_1_expr29_line_165)) {
				break;
			}
			int PROBE_END_LINE_165 = 165;
		boolean removeCurrent = false;
          int PROBE_START_LINE_167 = 167;
		Iterator<com.google.javascript.rhino.jstype.JSType> v_it_5486_line_167 = it;
		JSType union_type_builder_1_expr30_line_167 = v_it_5486_line_167.next();
		int PROBE_END_LINE_167 = 167;
		JSType current = union_type_builder_1_expr30_line_167;

          int PROBE_START_LINE_172 = 253;
		com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_172 = alternate;
		boolean union_type_builder_1_expr32_line_172 = p_alternate_5483_line_172.isUnknownType();
		boolean union_type_builder_1_expr31_line_172 = union_type_builder_1_expr32_line_172 || current.isUnknownType()
				|| alternate.isNoResolvedType() || current.isNoResolvedType() || alternate.hasAnyTemplateTypes()
				|| current.hasAnyTemplateTypes();
		int PROBE_END_LINE_172 = 253;
		// Unknown and NoResolved types may just be names that haven't
          // been resolved yet. So keep these in the union, and just use
          // equality checking for simple de-duping.
          if (union_type_builder_1_expr31_line_172) {
            int PROBE_START_LINE_178 = 181;
				com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_178 = alternate;
				com.google.javascript.rhino.jstype.JSType v_current_5488_line_178 = current;
				boolean union_type_builder_1_expr33_line_178 = p_alternate_5483_line_178
						.isEquivalentTo(v_current_5488_line_178);
				int PROBE_END_LINE_178 = 181;
			if (union_type_builder_1_expr33_line_178) {
              // Alternate is unnecessary.
              return this;
            }
          } else {

            // Because "Foo" and "Foo.<?>" are roughly equivalent
            // parameterized types, special care is needed when building the
            // union. For example:
            //   Object is consider a subtype of Object.<string>
            // but we want to leave "Object" not "Object.<string>" when
            // building the subtype.
            //

            int PROBE_START_LINE_192 = 252;
			com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_192 = alternate;
			boolean union_type_builder_1_expr35_line_192 = p_alternate_5483_line_192.isParameterizedType();
			boolean union_type_builder_1_expr36_line_192 = false;
			if (!union_type_builder_1_expr35_line_192) {
				com.google.javascript.rhino.jstype.JSType v_current_5488_line_192 = current;
				union_type_builder_1_expr36_line_192 = v_current_5488_line_192.isParameterizedType();
			}
			boolean union_type_builder_1_expr34_line_192 = union_type_builder_1_expr35_line_192
					|| union_type_builder_1_expr36_line_192;
			int PROBE_END_LINE_192 = 252;
			if (union_type_builder_1_expr34_line_192) {
              // Cases:
              // 1) alternate:Array.<string> and current:Object ==> Object
              // 2) alternate:Array.<string> and current:Array ==> Array
              // 3) alternate:Object.<string> and
              //    current:Array ==> Array|Object.<string>
              // 4) alternate:Object and current:Array.<string> ==> Object
              // 5) alternate:Array and current:Array.<string> ==> Array
              // 6) alternate:Array and
              //    current:Object.<string> ==> Array|Object.<string>
              // 7) alternate:Array.<string> and
              //    current:Array.<number> ==> Array.<?>
              // 8) alternate:Array.<string> and
              //    current:Array.<string> ==> Array.<string>
              // 9) alternate:Array.<string> and
              //    current:Object.<string> ==> Object.<string>|Array.<string>

              if (!current.isParameterizedType()) {
                if (alternate.isSubtype(current)) {
                  // case 1, 2
                  return this;
                }
                // case 3: leave current, add alternate
              } else if (!alternate.isParameterizedType()) {
                if (current.isSubtype(alternate)) {
                  // case 4, 5
                  removeCurrent = true;
                }
                // case 6: leave current, add alternate
              } else {
                Preconditions.checkState(current.isParameterizedType()
                    && alternate.isParameterizedType());
                ParameterizedType parameterizedAlternate = alternate.toMaybeParameterizedType();
                ParameterizedType parameterizedCurrent = current.toMaybeParameterizedType();

                if (parameterizedCurrent.wrapsSameRawType(parameterizedAlternate)) {
                  JSType alternateTypeParameter = parameterizedAlternate.getParameterType();
                  JSType currentTypeParameter = parameterizedCurrent.getParameterType();
                  if (currentTypeParameter.isEquivalentTo(parameterizedCurrent)) {
                    // case 8
                    return this;
                  } else {
                    // TODO(johnlenz): should we leave both types?
                    // case 7: add a merged alternate
                    // We currently merge to the parameterized types to "unknown"
                    // which is equivalent to the raw type.
                    JSType merged = parameterizedCurrent
                        .getReferencedObjTypeInternal();
                    return addAlternate(merged);
                  }
                }
                // case 9: leave current, add alternate
              }
              // Otherwise leave both parameterized types.
            } else {
				int PROBE_START_LINE_246 = 252;
				com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_246 = alternate;
				com.google.javascript.rhino.jstype.JSType v_current_5488_line_246 = current;
				boolean union_type_builder_1_expr37_line_246 = p_alternate_5483_line_246
						.isSubtype(v_current_5488_line_246);
				int PROBE_END_LINE_246 = 252;
				if (union_type_builder_1_expr37_line_246) {
					return this;
				} else {
					int PROBE_START_LINE_249 = 252;
					com.google.javascript.rhino.jstype.JSType v_current_5488_line_249 = current;
					com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_249 = alternate;
					boolean union_type_builder_1_expr39_line_249 = v_current_5488_line_249
							.isSubtype(p_alternate_5483_line_249);
					int PROBE_END_LINE_249 = 252;
					if (union_type_builder_1_expr39_line_249) {
						removeCurrent = true;
					}
				}
			}
          }

          int PROBE_START_LINE_255 = 264;
		boolean v_remove_current_5487_line_255 = removeCurrent;
		int PROBE_END_LINE_255 = 264;
		if (v_remove_current_5487_line_255) {
            it.remove();

            if (currentIndex == functionTypePosition) {
              functionTypePosition = -1;
            } else if (currentIndex < functionTypePosition) {
              functionTypePosition--;
              currentIndex--;
            }
          }
          currentIndex++;
        }

        int PROBE_START_LINE_268 = 272;
		com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_268 = alternate;
		boolean union_type_builder_1_expr41_line_268 = p_alternate_5483_line_268.isFunctionType();
		int PROBE_END_LINE_268 = 272;
		if (union_type_builder_1_expr41_line_268) {
          int PROBE_START_LINE_270 = 270;
			int f_function_type_position_5475_line_270 = functionTypePosition;
			int union_type_builder_1_expr44_line_270 = -1;
			boolean union_type_builder_1_expr43_line_270 = f_function_type_position_5475_line_270 == union_type_builder_1_expr44_line_270;
			int PROBE_END_LINE_270 = 270;
		// See the comments on functionTypePosition above.
          Preconditions.checkState(union_type_builder_1_expr43_line_270);
          int PROBE_START_LINE_271 = 271;
		List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_271 = alternates;
		int union_type_builder_1_expr46_line_271 = f_alternates_5471_line_271.size();
		int PROBE_END_LINE_271 = 271;
		functionTypePosition = union_type_builder_1_expr46_line_271;
        }

        int PROBE_START_LINE_274 = 274;
		List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_274 = alternates;
		com.google.javascript.rhino.jstype.JSType p_alternate_5483_line_274 = alternate;
		int PROBE_END_LINE_274 = 274;
		f_alternates_5471_line_274.add(p_alternate_5483_line_274);
        result = null; // invalidate the memoized result
      }
    } else {
      result = null;
    }
    return this;
  }

  /**
   * Reduce the alternates into a non-union type.
   * If the alternates can't be accurately represented with a non-union
   * type, return null.
   */
  private JSType reduceAlternatesWithoutUnion() {
    int PROBE_START_LINE_289 = 308;
	boolean f_is_all_type_5472_line_289 = isAllType;
	int PROBE_END_LINE_289 = 308;
	if (f_is_all_type_5472_line_289) {
      return registry.getNativeType(ALL_TYPE);
    } else {
		int PROBE_START_LINE_291 = 308;
		boolean f_is_native_unknown_type_5473_line_291 = isNativeUnknownType;
		int PROBE_END_LINE_291 = 308;
		if (f_is_native_unknown_type_5473_line_291) {
			if (areAllUnknownsChecked) {
				return registry.getNativeType(CHECKED_UNKNOWN_TYPE);
			} else {
				return registry.getNativeType(UNKNOWN_TYPE);
			}
		} else {
			int PROBE_START_LINE_298 = 298;
			List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_298 = alternates;
			int union_type_builder_1_expr50_line_298 = f_alternates_5471_line_298.size();
			int PROBE_END_LINE_298 = 298;
			int size = union_type_builder_1_expr50_line_298;
			int PROBE_START_LINE_299 = 307;
			int v_size_5489_line_299 = size;
			int f_max_union_size_5482_line_299 = maxUnionSize;
			boolean union_type_builder_1_expr51_line_299 = v_size_5489_line_299 > f_max_union_size_5482_line_299;
			int PROBE_END_LINE_299 = 307;
			if (union_type_builder_1_expr51_line_299) {
				return registry.getNativeType(UNKNOWN_TYPE);
			} else {
				int PROBE_START_LINE_301 = 307;
				int v_size_5489_line_301 = size;
				boolean union_type_builder_1_expr52_line_301 = v_size_5489_line_301 > 1;
				int PROBE_END_LINE_301 = 307;
				if (union_type_builder_1_expr52_line_301) {
					return null;
				} else {
					int PROBE_START_LINE_303 = 307;
					int v_size_5489_line_303 = size;
					boolean union_type_builder_1_expr53_line_303 = v_size_5489_line_303 == 1;
					int PROBE_END_LINE_303 = 307;
					if (union_type_builder_1_expr53_line_303) {
						int PROBE_START_LINE_304 = 304;
						List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_304 = alternates;
						Iterator<com.google.javascript.rhino.jstype.JSType> union_type_builder_1_expr55_line_304 = f_alternates_5471_line_304
								.iterator();
						com.google.javascript.rhino.jstype.JSType union_type_builder_1_expr54_line_304 = union_type_builder_1_expr55_line_304
								.next();
						int PROBE_END_LINE_304 = 304;
						return union_type_builder_1_expr54_line_304;
					} else {
						return registry.getNativeType(NO_TYPE);
					}
				}
			}
		}
	}
  }

  /**
   * Creates a union.
   * @return A UnionType if it has two or more alternates, the
   *    only alternate if it has one and otherwise {@code NO_TYPE}.
   */
  JSType build() {
    int PROBE_START_LINE_317 = 322;
	com.google.javascript.rhino.jstype.JSType f_result_5476_line_317 = result;
	boolean union_type_builder_1_expr56_line_317 = f_result_5476_line_317 == null;
	int PROBE_END_LINE_317 = 322;
	if (union_type_builder_1_expr56_line_317) {
      int PROBE_START_LINE_318 = 318;
		com.google.javascript.rhino.jstype.JSType union_type_builder_1_expr58_line_318 = reduceAlternatesWithoutUnion();
		int PROBE_END_LINE_318 = 318;
	result = union_type_builder_1_expr58_line_318;
      int PROBE_START_LINE_319 = 321;
	com.google.javascript.rhino.jstype.JSType f_result_5476_line_319 = result;
	boolean union_type_builder_1_expr59_line_319 = f_result_5476_line_319 == null;
	int PROBE_END_LINE_319 = 321;
	if (union_type_builder_1_expr59_line_319) {
        int PROBE_START_LINE_320 = 320;
		com.google.javascript.rhino.jstype.JSTypeRegistry f_registry_5481_line_320 = registry;
		Collection<com.google.javascript.rhino.jstype.JSType> union_type_builder_1_expr62_line_320 = getAlternateListCopy();
		int PROBE_END_LINE_320 = 320;
		result = new UnionType(f_registry_5481_line_320, union_type_builder_1_expr62_line_320);
      }
    }
    int PROBE_START_LINE_323 = 323;
	com.google.javascript.rhino.jstype.JSType f_result_5476_line_323 = result;
	int PROBE_END_LINE_323 = 323;
	return f_result_5476_line_323;
  }

  private Collection<JSType> getAlternateListCopy() {
    int PROBE_START_LINE_327 = 327;
	List<com.google.javascript.rhino.jstype.JSType> f_alternates_5471_line_327 = alternates;
	ImmutableList<com.google.javascript.rhino.jstype.JSType> union_type_builder_1_expr63_line_327 = ImmutableList
			.copyOf(f_alternates_5471_line_327);
	int PROBE_END_LINE_327 = 327;
	return union_type_builder_1_expr63_line_327;
  }
}
