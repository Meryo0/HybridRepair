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

package com.google.javascript.jscomp;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.jstype.StaticSymbolTable;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

/**
 * Memoize a scope creator.
 *
 * This allows you to make multiple passes, without worrying about
 * the expense of generating Scope objects over and over again.
 *
 * On the other hand, you also have to be more aware of what your passes
 * are doing. Scopes are memoized stupidly, so if the underlying tree
 * changes, the scope may be out of sync.
 *
 * @author nicksantos@google.com (Nick Santos)
 */
class MemoizedScopeCreator
    implements ScopeCreator, StaticSymbolTable<Var, Var> {

  int PROBE_START_LINE_49 = 49;

	private final HashMap<com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope> memoized_scope_creator_1_expr1_line_49 = Maps
			.newHashMap();

	int PROBE_END_LINE_49 = 49;

private final Map<Node, Scope> scopes = memoized_scope_creator_1_expr1_line_49;
  private final ScopeCreator delegate;

  /**
   * @param delegate The real source of Scope objects.
   */
  MemoizedScopeCreator(ScopeCreator delegate) {
    int PROBE_START_LINE_56 = 56;
	com.google.javascript.jscomp.ScopeCreator p_delegate_1730_line_56 = delegate;
	int PROBE_END_LINE_56 = 56;
	this.delegate = p_delegate_1730_line_56;
  }

  @Override
  public Iterable<Var> getReferences(Var var) {
    return ImmutableList.of(var);
  }

  @Override
  public Scope getScope(Var var) {
    return var.scope;
  }

  @Override
  public Iterable<Var> getAllSymbols() {
    List<Var> vars = Lists.newArrayList();
    for (Scope s : scopes.values()) {
      Iterables.addAll(vars, s.getAllSymbols());
    }
    return vars;
  }

  @Override
  public Scope createScope(Node n, Scope parent) {
    int PROBE_START_LINE_80 = 80;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope> f_scopes_1729_line_80 = scopes;
	com.google.javascript.rhino.Node p_n_1734_line_80 = n;
	Scope memoized_scope_creator_1_expr5_line_80 = f_scopes_1729_line_80.get(p_n_1734_line_80);
	int PROBE_END_LINE_80 = 80;
	Scope scope = memoized_scope_creator_1_expr5_line_80;
    int PROBE_START_LINE_81 = 86;
	com.google.javascript.jscomp.Scope v_scope_1736_line_81 = scope;
	boolean memoized_scope_creator_1_expr6_line_81 = v_scope_1736_line_81 == null;
	int PROBE_END_LINE_81 = 86;
	if (memoized_scope_creator_1_expr6_line_81) {
      int PROBE_START_LINE_82 = 82;
		com.google.javascript.jscomp.ScopeCreator f_delegate_1731_line_82 = delegate;
		com.google.javascript.rhino.Node p_n_1734_line_82 = n;
		com.google.javascript.jscomp.Scope p_parent_1735_line_82 = parent;
		com.google.javascript.jscomp.Scope memoized_scope_creator_1_expr8_line_82 = f_delegate_1731_line_82
				.createScope(p_n_1734_line_82, p_parent_1735_line_82);
		int PROBE_END_LINE_82 = 82;
	scope = memoized_scope_creator_1_expr8_line_82;
      int PROBE_START_LINE_83 = 83;
	Map<com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope> f_scopes_1729_line_83 = scopes;
	com.google.javascript.rhino.Node p_n_1734_line_83 = n;
	com.google.javascript.jscomp.Scope v_scope_1736_line_83 = scope;
	int PROBE_END_LINE_83 = 83;
	f_scopes_1729_line_83.put(p_n_1734_line_83, v_scope_1736_line_83);
    } else {
      int PROBE_START_LINE_85 = 85;
		com.google.javascript.jscomp.Scope p_parent_1735_line_85 = parent;
		com.google.javascript.jscomp.Scope v_scope_1736_line_85 = scope;
		com.google.javascript.jscomp.Scope memoized_scope_creator_1_expr12_line_85 = v_scope_1736_line_85.getParent();
		boolean memoized_scope_creator_1_expr11_line_85 = p_parent_1735_line_85 == memoized_scope_creator_1_expr12_line_85;
		int PROBE_END_LINE_85 = 85;
	Preconditions.checkState(memoized_scope_creator_1_expr11_line_85);
    }
    int PROBE_START_LINE_87 = 87;
	com.google.javascript.jscomp.Scope v_scope_1736_line_87 = scope;
	int PROBE_END_LINE_87 = 87;
	return v_scope_1736_line_87;
  }

  Collection<Scope> getAllMemoizedScopes() {
    return Collections.unmodifiableCollection(scopes.values());
  }

  Scope getScopeIfMemoized(Node n) {
    return scopes.get(n);
  }

  /**
   * Removes all scopes with root nodes from a given script file.
   *
   * @param scriptName the name of the script file to remove nodes for.
   */
  void removeScopesForScript(String scriptName) {
    for (Node scopeRoot : ImmutableSet.copyOf(scopes.keySet())) {
      if (scriptName.equals(scopeRoot.getSourceFileName())) {
        scopes.remove(scopeRoot);
      }
    }
  }
}
