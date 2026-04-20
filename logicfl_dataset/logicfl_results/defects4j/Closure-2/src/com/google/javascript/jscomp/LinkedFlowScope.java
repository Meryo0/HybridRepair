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

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.jscomp.type.FlowScope;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.jstype.JSType;
import com.google.javascript.rhino.jstype.SimpleSlot;
import com.google.javascript.rhino.jstype.StaticScope;
import com.google.javascript.rhino.jstype.StaticSlot;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;
import java.util.HashMap;

/**
 * A flow scope that tries to store as little symbol information as possible,
 * instead delegating to its parents. Optimized for low memory use.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
class LinkedFlowScope implements FlowScope {
  // The closest flow scope cache.
  private final FlatFlowScopeCache cache;

  // The parent flow scope.
  private final LinkedFlowScope parent;

  // The distance between this flow scope and the closest flat flow scope.
  private int depth;

  static final int MAX_DEPTH = 250;

  // A FlatFlowScopeCache equivalent to this scope.
  private FlatFlowScopeCache flattened;

  // Flow scopes assume that all their ancestors are immutable.
  // So once a child scope is created, this flow scope may not be modified.
  private boolean frozen = false;

  // The last slot defined in this flow instruction, and the head of the
  // linked list of slots.
  private LinkedFlowSlot lastSlot;

  private LinkedFlowScope(FlatFlowScopeCache cache,
      LinkedFlowScope directParent) {
    int PROBE_START_LINE_66 = 66;
		com.google.javascript.jscomp.LinkedFlowScope.FlatFlowScopeCache p_cache_1683_line_66 = cache;
		int PROBE_END_LINE_66 = 66;
	this.cache = p_cache_1683_line_66;
    int PROBE_START_LINE_67 = 75;
	com.google.javascript.jscomp.LinkedFlowScope p_direct_parent_1684_line_67 = directParent;
	boolean linked_flow_scope_1_expr4_line_67 = p_direct_parent_1684_line_67 == null;
	int PROBE_END_LINE_67 = 75;
	if (linked_flow_scope_1_expr4_line_67) {
      this.lastSlot = null;
      this.depth = 0;
      int PROBE_START_LINE_70 = 70;
	com.google.javascript.jscomp.LinkedFlowScope.FlatFlowScopeCache p_cache_1683_line_70 = cache;
	com.google.javascript.jscomp.LinkedFlowScope q_linked_equivalent_53_line_70 = p_cache_1683_line_70.linkedEquivalent;
	int PROBE_END_LINE_70 = 70;
	this.parent = q_linked_equivalent_53_line_70;
    } else {
      int PROBE_START_LINE_72 = 72;
		com.google.javascript.jscomp.LinkedFlowScope p_direct_parent_1684_line_72 = directParent;
		com.google.javascript.jscomp.LinkedFlowScope.LinkedFlowSlot q_last_slot_54_line_72 = p_direct_parent_1684_line_72.lastSlot;
		int PROBE_END_LINE_72 = 72;
	this.lastSlot = q_last_slot_54_line_72;
      int PROBE_START_LINE_73 = 73;
	com.google.javascript.jscomp.LinkedFlowScope p_direct_parent_1684_line_73 = directParent;
	int q_depth_55_line_73 = p_direct_parent_1684_line_73.depth;
	int linked_flow_scope_1_expr19_line_73 = q_depth_55_line_73 + 1;
	int PROBE_END_LINE_73 = 73;
	this.depth = linked_flow_scope_1_expr19_line_73;
      int PROBE_START_LINE_74 = 74;
	com.google.javascript.jscomp.LinkedFlowScope p_direct_parent_1684_line_74 = directParent;
	int PROBE_END_LINE_74 = 74;
	this.parent = p_direct_parent_1684_line_74;
    }
  }

  LinkedFlowScope(FlatFlowScopeCache cache) {
    this(cache, null);
  }

  LinkedFlowScope(LinkedFlowScope directParent) {
    this(directParent.cache, directParent);
  }

  /** Gets the function scope for this flow scope. */
  private Scope getFunctionScope() {
    int PROBE_START_LINE_88 = 88;
	com.google.javascript.jscomp.LinkedFlowScope.FlatFlowScopeCache f_cache_1685_line_88 = cache;
	com.google.javascript.jscomp.Scope q_function_scope_57_line_88 = f_cache_1685_line_88.functionScope;
	int PROBE_END_LINE_88 = 88;
	return q_function_scope_57_line_88;
  }

  /** Whether this flows from a bottom scope. */
  private boolean flowsFromBottom() {
    return getFunctionScope().isBottom();
  }

  /**
   * Creates an entry lattice for the flow.
   */
  public static LinkedFlowScope createEntryLattice(Scope scope) {
    int PROBE_START_LINE_100 = 100;
	com.google.javascript.jscomp.Scope p_scope_1691_line_100 = scope;
	int PROBE_END_LINE_100 = 100;
	return new LinkedFlowScope(new FlatFlowScopeCache(p_scope_1691_line_100));
  }

  @Override
  public void inferSlotType(String symbol, JSType type) {
    Preconditions.checkState(!frozen);
    lastSlot = new LinkedFlowSlot(symbol, type, lastSlot);
    depth++;
    cache.dirtySymbols.add(symbol);
  }

  @Override
  public void inferQualifiedSlot(Node node, String symbol, JSType bottomType,
      JSType inferredType) {
    Scope functionScope = getFunctionScope();
    if (functionScope.isLocal()) {
      if (functionScope.getVar(symbol) == null && !functionScope.isBottom()) {
        functionScope.declare(symbol, node, bottomType, null);
      }

      inferSlotType(symbol, inferredType);
    }
  }

  @Override
  public JSType getTypeOfThis() {
    return cache.functionScope.getTypeOfThis();
  }

  @Override
  public Node getRootNode() {
    return getFunctionScope().getRootNode();
  }

  @Override
  public StaticScope<JSType> getParentScope() {
    return getFunctionScope().getParentScope();
  }

  /**
   * Get the slot for the given symbol.
   */
  @Override
  public StaticSlot<JSType> getSlot(String name) {
    if (cache.dirtySymbols.contains(name)) {
      for (LinkedFlowSlot slot = lastSlot;
           slot != null; slot = slot.parent) {
        if (slot.getName().equals(name)) {
          return slot;
        }
      }
    }
    return cache.getSlot(name);
  }

  @Override
  public StaticSlot<JSType> getOwnSlot(String name) {
    throw new UnsupportedOperationException();
  }

  @Override
  public FlowScope createChildFlowScope() {
    frozen = true;

    int PROBE_START_LINE_164 = 169;
	int f_depth_1687_line_164 = depth;
	int f_max_depth_1700_line_164 = MAX_DEPTH;
	boolean linked_flow_scope_1_expr29_line_164 = f_depth_1687_line_164 > f_max_depth_1700_line_164;
	int PROBE_END_LINE_164 = 169;
	if (linked_flow_scope_1_expr29_line_164) {
      if (flattened == null) {
        flattened = new FlatFlowScopeCache(this);
      }
      return new LinkedFlowScope(flattened);
    }

    return new LinkedFlowScope(this);
  }

  /**
   * Iterate through all the linked flow scopes before this one.
   * If there's one and only one slot defined between this scope
   * and the blind scope, return it.
   */
  @Override
  public StaticSlot<JSType> findUniqueRefinedSlot(FlowScope blindScope) {
    StaticSlot<JSType> result = null;

    for (LinkedFlowScope currentScope = this;
         currentScope != blindScope;
         currentScope = currentScope.parent) {
      for (LinkedFlowSlot currentSlot = currentScope.lastSlot;
           currentSlot != null &&
           (currentScope.parent == null ||
            currentScope.parent.lastSlot != currentSlot);
           currentSlot = currentSlot.parent) {
        if (result == null) {
          result = currentSlot;
        } else if (!currentSlot.getName().equals(result.getName())) {
          return null;
        }
      }
    }

    return result;
  }

  /**
   * Look through the given scope, and try to find slots where it doesn't
   * have enough type information. Then fill in that type information
   * with stuff that we've inferred in the local flow.
   */
  @Override
  public void completeScope(StaticScope<JSType> staticScope) {
    Scope scope = (Scope) staticScope;
    for (Iterator<Var> it = scope.getVars(); it.hasNext();) {
      Var var = it.next();
      if (var.isTypeInferred()) {
        JSType type = var.getType();
        if (type == null || type.isUnknownType()) {
          JSType flowType = getSlot(var.getName()).getType();
          var.setType(flowType);
        }
      }
    }
  }

  /**
   * Remove flow scopes that add nothing to the flow.
   */
  // NOTE(nicksantos): This function breaks findUniqueRefinedSlot, because
  // findUniqueRefinedSlot assumes that this scope is a direct descendant
  // of blindScope. This is not necessarily true if this scope has been
  // optimize()d and blindScope has not. This should be fixed. For now,
  // we only use optimize() where we know that we won't have to do
  // a findUniqueRefinedSlot on it.
  @Override
  public LinkedFlowScope optimize() {
    LinkedFlowScope current = null;
    int PROBE_START_LINE_233 = 233;
	boolean FOR_STMT_TOGGLE_LINE_234 = false;
	int PROBE_END_LINE_233 = 233;
	for (current = this;
         true;) {
			int PROBE_START_LINE_237 = 237;
			if (FOR_STMT_TOGGLE_LINE_234) {
				com.google.javascript.jscomp.LinkedFlowScope v_current_1703_line_237 = current;
				com.google.javascript.jscomp.LinkedFlowScope q_parent_59_line_237 = v_current_1703_line_237.parent;
				current = q_parent_59_line_237;
			} else {
				FOR_STMT_TOGGLE_LINE_234 = true;
			}
			com.google.javascript.jscomp.LinkedFlowScope v_current_1703_line_235 = current;
			com.google.javascript.jscomp.LinkedFlowScope q_parent_58_line_235 = v_current_1703_line_235.parent;
			boolean linked_flow_scope_1_expr35_line_235 = q_parent_58_line_235 != null;
			boolean linked_flow_scope_1_expr34_line_235 = linked_flow_scope_1_expr35_line_235
					&& current.lastSlot == current.parent.lastSlot;
			if (!(linked_flow_scope_1_expr34_line_235)) {
				break;
			}
			int PROBE_END_LINE_237 = 237;}
    int PROBE_START_LINE_238 = 238;
	com.google.javascript.jscomp.LinkedFlowScope v_current_1703_line_238 = current;
	int PROBE_END_LINE_238 = 238;
	return v_current_1703_line_238;
  }

  /** Join the two FlowScopes. */
  static class FlowScopeJoinOp extends JoinOp.BinaryJoinOp<FlowScope> {
    @SuppressWarnings("unchecked")
    @Override
    public FlowScope apply(FlowScope a, FlowScope b) {
      // To join the two scopes, we have to
      LinkedFlowScope linkedA = (LinkedFlowScope) a;
      LinkedFlowScope linkedB = (LinkedFlowScope) b;
      linkedA.frozen = true;
      linkedB.frozen = true;
      if (linkedA.optimize() == linkedB.optimize()) {
        return linkedA.createChildFlowScope();
      }
      return new LinkedFlowScope(new FlatFlowScopeCache(linkedA, linkedB));
    }
  }

  @Override
  public boolean equals(Object other) {
    int PROBE_START_LINE_260 = 306;
	Object p_other_1706_line_260 = other;
	boolean linked_flow_scope_1_expr37_line_260 = p_other_1706_line_260 instanceof LinkedFlowScope;
	int PROBE_END_LINE_260 = 306;
	if (linked_flow_scope_1_expr37_line_260) {
      int PROBE_START_LINE_261 = 261;
		Object p_other_1706_line_261 = other;
		int PROBE_END_LINE_261 = 261;
	LinkedFlowScope that = (LinkedFlowScope) p_other_1706_line_261;
      int PROBE_START_LINE_262 = 264;
	com.google.javascript.jscomp.LinkedFlowScope linked_flow_scope_1_expr40_line_262 = this.optimize();
	com.google.javascript.jscomp.LinkedFlowScope v_that_1707_line_262 = that;
	com.google.javascript.jscomp.LinkedFlowScope linked_flow_scope_1_expr42_line_262 = v_that_1707_line_262.optimize();
	boolean linked_flow_scope_1_expr39_line_262 = linked_flow_scope_1_expr40_line_262 == linked_flow_scope_1_expr42_line_262;
	int PROBE_END_LINE_262 = 264;
	if (linked_flow_scope_1_expr39_line_262) {
        return true;
      }

      int PROBE_START_LINE_274 = 276;
	com.google.javascript.jscomp.Scope linked_flow_scope_1_expr44_line_274 = this.getFunctionScope();
	com.google.javascript.jscomp.LinkedFlowScope v_that_1707_line_274 = that;
	com.google.javascript.jscomp.Scope linked_flow_scope_1_expr46_line_274 = v_that_1707_line_274.getFunctionScope();
	boolean linked_flow_scope_1_expr43_line_274 = linked_flow_scope_1_expr44_line_274 != linked_flow_scope_1_expr46_line_274;
	int PROBE_END_LINE_274 = 276;
	// If two flow scopes are in the same function, then they could have
      // two possible function scopes: the real one and the BOTTOM scope.
      // If they have different function scopes, we *should* iterate through all
      // the variables in each scope and compare. However, 99.9% of the time,
      // they're not equal. And the other .1% of the time, we can pretend
      // they're equal--this just means that data flow analysis will have
      // to propagate the entry lattice a little bit further than it
      // really needs to. Everything will still come out ok.
      if (linked_flow_scope_1_expr43_line_274) {
        return false;
      }

      if (cache == that.cache) {
        // If the two flow scopes have the same cache, then we can check
        // equality a lot faster: by just looking at the "dirty" elements
        // in the cache, and comparing them in both scopes.
        for (String name : cache.dirtySymbols) {
          if (diffSlots(getSlot(name), that.getSlot(name))) {
            return false;
          }
        }

        return true;
      }

      Map<String, StaticSlot<JSType>> myFlowSlots = allFlowSlots();
      Map<String, StaticSlot<JSType>> otherFlowSlots = that.allFlowSlots();

      for (StaticSlot<JSType> slot : myFlowSlots.values()) {
        if (diffSlots(slot, otherFlowSlots.get(slot.getName()))) {
          return false;
        }
        otherFlowSlots.remove(slot.getName());
      }
      for (StaticSlot<JSType> slot : otherFlowSlots.values()) {
        if (diffSlots(slot, myFlowSlots.get(slot.getName()))) {
          return false;
        }
      }
      return true;
    }
    return false;
  }

  /**
   * Determines whether two slots are meaningfully different for the
   * purposes of data flow analysis.
   */
  private boolean diffSlots(StaticSlot<JSType> slotA,
                            StaticSlot<JSType> slotB) {
    boolean aIsNull = slotA == null || slotA.getType() == null;
    boolean bIsNull = slotB == null || slotB.getType() == null;
    if (aIsNull && bIsNull) {
      return false;
    } else if (aIsNull ^ bIsNull) {
      return true;
    }

    // Both slots and types must be non-null.
    return slotA.getType().differsFrom(slotB.getType());
  }

  /**
   * Gets all the symbols that have been defined before this point
   * in the current flow. Does not return slots that have not changed during
   * the flow.
   *
   * For example, consider the code:
   * <code>
   * var x = 3;
   * function f() {
   *   var y = 5;
   *   y = 6; // FLOW POINT
   *   var z = y;
   *   return z;
   * }
   * </code>
   * A FlowScope at FLOW POINT will return a slot for y, but not
   * a slot for x or z.
   */
  private Map<String, StaticSlot<JSType>> allFlowSlots() {
    Map<String, StaticSlot<JSType>> slots = Maps.newHashMap();
    for (LinkedFlowSlot slot = lastSlot;
         slot != null; slot = slot.parent) {
      if (!slots.containsKey(slot.getName())) {
        slots.put(slot.getName(), slot);
      }
    }

    for (Map.Entry<String, StaticSlot<JSType>> symbolEntry : cache.symbols.entrySet()) {
      if (!slots.containsKey(symbolEntry.getKey())) {
        slots.put(symbolEntry.getKey(), symbolEntry.getValue());
      }
    }

    return slots;
  }

  /**
   * A static slot that can be used in a linked list.
   */
  private static class LinkedFlowSlot extends SimpleSlot {
    final LinkedFlowSlot parent;

    LinkedFlowSlot(String name, JSType type, LinkedFlowSlot parent) {
      super(name, type, true);
      this.parent = parent;
    }
  }

  /**
   * A map that tries to cache as much symbol table information
   * as possible in a map. Optimized for fast lookup.
   */
  private static class FlatFlowScopeCache {
    // The Scope for the entire function or for the global scope.
    private final Scope functionScope;

    // The linked flow scope that this cache represents.
    private final LinkedFlowScope linkedEquivalent;

    int PROBE_START_LINE_389 = 389;

	private HashMap<String, StaticSlot<com.google.javascript.rhino.jstype.JSType>> linked_flow_scope_1_expr47_line_389 = Maps
			.newHashMap();

	int PROBE_END_LINE_389 = 389;

	// All the symbols defined before this point in the local flow.
    // May not include lazily declared qualified names.
    private Map<String, StaticSlot<JSType>> symbols = linked_flow_scope_1_expr47_line_389;

    int PROBE_START_LINE_399 = 399;

	final HashSet<String> linked_flow_scope_1_expr48_line_399 = Sets.newHashSet();

	int PROBE_END_LINE_399 = 399;

	// Used to help make lookup faster for LinkedFlowScopes by recording
    // symbols that may be redefined "soon", for an arbitrary definition
    // of "soon". ;)
    //
    // More rigorously, if a symbol is redefined in a LinkedFlowScope,
    // and this is the closest FlatFlowScopeCache, then that symbol is marked
    // "dirty". In this way, we don't waste time looking in the LinkedFlowScope
    // list for symbols that aren't defined anywhere nearby.
    final Set<String> dirtySymbols = linked_flow_scope_1_expr48_line_399;

    // The cache at the bottom of the lattice.
    FlatFlowScopeCache(Scope functionScope) {
      int PROBE_START_LINE_403 = 403;
		com.google.javascript.jscomp.Scope p_function_scope_1715_line_403 = functionScope;
		int PROBE_END_LINE_403 = 403;
	this.functionScope = p_function_scope_1715_line_403;
      int PROBE_START_LINE_404 = 404;
	ImmutableMap<String, StaticSlot<com.google.javascript.rhino.jstype.JSType>> linked_flow_scope_1_expr53_line_404 = ImmutableMap
			.of();
	int PROBE_END_LINE_404 = 404;
	symbols = linked_flow_scope_1_expr53_line_404;
      linkedEquivalent = null;
    }

    // A cache in the middle of a long scope chain.
    FlatFlowScopeCache(LinkedFlowScope directParent) {
      FlatFlowScopeCache cache = directParent.cache;

      functionScope = cache.functionScope;
      symbols = directParent.allFlowSlots();
      linkedEquivalent = directParent;
    }

    // A cache at the join of two scope chains.
    FlatFlowScopeCache(LinkedFlowScope joinedScopeA,
        LinkedFlowScope joinedScopeB) {
      linkedEquivalent = null;

      // Always prefer the "real" function scope to the faked-out
      // bottom scope.
      functionScope = joinedScopeA.flowsFromBottom() ?
          joinedScopeB.getFunctionScope() : joinedScopeA.getFunctionScope();

      Map<String, StaticSlot<JSType>> slotsA = joinedScopeA.allFlowSlots();
      Map<String, StaticSlot<JSType>> slotsB = joinedScopeB.allFlowSlots();

      symbols = slotsA;

      // There are 5 different join cases:
      // 1) The type is declared in joinedScopeA, not in joinedScopeB,
      //    and not in functionScope. Just use the one in A.
      // 2) The type is declared in joinedScopeB, not in joinedScopeA,
      //    and not in functionScope. Just use the one in B.
      // 3) The type is declared in functionScope and joinedScopeA, but
      //    not in joinedScopeB. Join the two types.
      // 4) The type is declared in functionScope and joinedScopeB, but
      //    not in joinedScopeA. Join the two types.
      // 5) The type is declared in joinedScopeA and joinedScopeB. Join
      //    the two types.
      Set<String> symbolNames = Sets.newHashSet(symbols.keySet());
      symbolNames.addAll(slotsB.keySet());

      for (String name : symbolNames) {
        StaticSlot<JSType> slotA = slotsA.get(name);
        StaticSlot<JSType> slotB = slotsB.get(name);

        JSType joinedType = null;
        if (slotB == null || slotB.getType() == null) {
          StaticSlot<JSType> fnSlot
              = joinedScopeB.getFunctionScope().getSlot(name);
          JSType fnSlotType = fnSlot == null ? null : fnSlot.getType();
          if (fnSlotType == null) {
            // Case #1 -- already inserted.
          } else {
            // Case #3
            joinedType = slotA.getType().getLeastSupertype(fnSlotType);
          }
        } else if (slotA == null || slotA.getType() == null) {
          StaticSlot<JSType> fnSlot
              = joinedScopeA.getFunctionScope().getSlot(name);
          JSType fnSlotType = fnSlot == null ? null : fnSlot.getType();
          if (fnSlotType == null) {
            // Case #2
            symbols.put(name, slotB);
          } else {
            // Case #4
            joinedType = slotB.getType().getLeastSupertype(fnSlotType);
          }
        } else {
          // Case #5
          joinedType =
              slotA.getType().getLeastSupertype(slotB.getType());
        }

        if (joinedType != null) {
          symbols.put(name, new SimpleSlot(name, joinedType, true));
        }
      }
    }

    /**
     * Get the slot for the given symbol.
     */
    public StaticSlot<JSType> getSlot(String name) {
      if (symbols.containsKey(name)) {
        return symbols.get(name);
      } else {
        return functionScope.getSlot(name);
      }
    }
  }
}
