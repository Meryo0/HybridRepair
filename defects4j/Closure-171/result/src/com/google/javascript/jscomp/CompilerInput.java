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
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.google.javascript.jscomp.deps.DependencyInfo;
import com.google.javascript.jscomp.deps.JsFileParser;
import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.Node;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.HashSet;

/**
 * A class for the internal representation of an input to the compiler.
 * Wraps a {@link SourceAst} and maintain state such as module for the input and
 * whether the input is an extern. Also calculates provided and required types.
 *
 */
public class CompilerInput
    implements SourceAst, DependencyInfo {

  private static final long serialVersionUID = 1L;

  // Info about where the file lives.
  private JSModule module;
  private final InputId id;

  // The AST.
  private final SourceAst ast;

  int PROBE_START_LINE_53 = 53;

private final HashSet<String> compiler_input_1_expr1_line_53 = Sets.newHashSet();

int PROBE_END_LINE_53 = 53;

// Provided and required symbols.
  private final Set<String> provides = compiler_input_1_expr1_line_53;
  int PROBE_START_LINE_54 = 54;

private final HashSet<String> compiler_input_1_expr2_line_54 = Sets.newHashSet();

int PROBE_END_LINE_54 = 54;

private final Set<String> requires = compiler_input_1_expr2_line_54;
  private boolean generatedDependencyInfoFromSource = false;

  // An AbstractCompiler for doing parsing.
  // We do not want to persist this across serialized state.
  private transient AbstractCompiler compiler;

  public CompilerInput(SourceAst ast) {
    this(ast, ast.getSourceFile().getName(), false);
  }

  public CompilerInput(SourceAst ast, boolean isExtern) {
    this(ast, ast.getInputId(), isExtern);
  }

  public CompilerInput(SourceAst ast, String inputId, boolean isExtern) {
    this(ast, new InputId(inputId), isExtern);
  }

  public CompilerInput(SourceAst ast, InputId inputId, boolean isExtern) {
    int PROBE_START_LINE_74 = 74;
	com.google.javascript.jscomp.SourceAst p_ast_1005_line_74 = ast;
	int PROBE_END_LINE_74 = 74;
	this.ast = p_ast_1005_line_74;
    int PROBE_START_LINE_75 = 75;
	com.google.javascript.rhino.InputId p_input_id_1006_line_75 = inputId;
	int PROBE_END_LINE_75 = 75;
	this.id = p_input_id_1006_line_75;

    int PROBE_START_LINE_79 = 81;
	com.google.javascript.jscomp.SourceAst p_ast_1005_line_79 = ast;
	boolean compiler_input_1_expr12_line_79 = p_ast_1005_line_79 != null;
	boolean compiler_input_1_expr13_line_79 = true;
	if (compiler_input_1_expr12_line_79) {
		com.google.javascript.jscomp.SourceAst p_ast_1005_line_79_v1 = ast;
		com.google.javascript.jscomp.SourceFile compiler_input_1_expr14_line_79 = p_ast_1005_line_79_v1.getSourceFile();
		compiler_input_1_expr13_line_79 = compiler_input_1_expr14_line_79 != null;
	}
	boolean compiler_input_1_expr11_line_79 = compiler_input_1_expr12_line_79 && compiler_input_1_expr13_line_79;
	int PROBE_END_LINE_79 = 81;
	// TODO(nicksantos): Add a precondition check here. People are passing
    // in null, but they should not be.
    if (compiler_input_1_expr11_line_79) {
      int PROBE_START_LINE_80 = 80;
		com.google.javascript.jscomp.SourceAst p_ast_1005_line_80 = ast;
		com.google.javascript.jscomp.SourceFile compiler_input_1_expr16_line_80 = p_ast_1005_line_80.getSourceFile();
		boolean p_is_extern_1007_line_80 = isExtern;
		int PROBE_END_LINE_80 = 80;
	compiler_input_1_expr16_line_80.setIsExtern(p_is_extern_1007_line_80);
    }
  }

  public CompilerInput(SourceFile file) {
    this(file, false);
  }

  public CompilerInput(SourceFile file, boolean isExtern) {
    this(new JsAst(file), isExtern);
  }

  /** Returns a name for this input. Must be unique across all inputs. */
  @Override
  public InputId getInputId() {
    int PROBE_START_LINE_95 = 95;
	com.google.javascript.rhino.InputId f_id_1009_line_95 = id;
	int PROBE_END_LINE_95 = 95;
	return f_id_1009_line_95;
  }

  /** Returns a name for this input. Must be unique across all inputs. */
  @Override
  public String getName() {
    int PROBE_START_LINE_101 = 101;
	com.google.javascript.rhino.InputId f_id_1009_line_101 = id;
	String compiler_input_1_expr20_line_101 = f_id_1009_line_101.getIdName();
	int PROBE_END_LINE_101 = 101;
	return compiler_input_1_expr20_line_101;
  }

  public SourceAst getAst() {
    return ast;
  }

  /** Gets the path relative to closure-base, if one is available. */
  @Override
  public String getPathRelativeToClosureBase() {
    // TODO(nicksantos): Implement me.
    throw new UnsupportedOperationException();
  }

  @Override
  public Node getAstRoot(AbstractCompiler compiler) {
    int PROBE_START_LINE_117 = 117;
	com.google.javascript.jscomp.SourceAst f_ast_1008_line_117 = ast;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1013_line_117 = compiler;
	Node compiler_input_1_expr21_line_117 = f_ast_1008_line_117.getAstRoot(p_compiler_1013_line_117);
	int PROBE_END_LINE_117 = 117;
	Node root = compiler_input_1_expr21_line_117;
    int PROBE_START_LINE_119 = 122;
	com.google.javascript.rhino.Node v_root_1014_line_119 = root;
	boolean compiler_input_1_expr22_line_119 = v_root_1014_line_119 != null;
	int PROBE_END_LINE_119 = 122;
	// The root maybe null if the AST can not be created.
    if (compiler_input_1_expr22_line_119) {
      int PROBE_START_LINE_120 = 120;
		com.google.javascript.rhino.Node v_root_1014_line_120 = root;
		boolean compiler_input_1_expr24_line_120 = v_root_1014_line_120.isScript();
		int PROBE_END_LINE_120 = 120;
	Preconditions.checkState(compiler_input_1_expr24_line_120);
      int PROBE_START_LINE_121 = 121;
	com.google.javascript.rhino.Node v_root_1014_line_121 = root;
	com.google.javascript.rhino.InputId compiler_input_1_expr26_line_121 = v_root_1014_line_121.getInputId();
	int PROBE_END_LINE_121 = 121;
	Preconditions.checkNotNull(compiler_input_1_expr26_line_121);
    }
    int PROBE_START_LINE_123 = 123;
	com.google.javascript.rhino.Node v_root_1014_line_123 = root;
	int PROBE_END_LINE_123 = 123;
	return v_root_1014_line_123;
  }

  @Override
  public void clearAst() {
    ast.clearAst();
  }

  @Override
  public SourceFile getSourceFile() {
    return ast.getSourceFile();
  }

  @Override
  public void setSourceFile(SourceFile file) {
    ast.setSourceFile(file);
  }

  /** Returns the SourceAst object on which this input is based. */
  public SourceAst getSourceAst() {
    return ast;
  }

  /** Sets an abstract compiler for doing parsing. */
  public void setCompiler(AbstractCompiler compiler) {
    int PROBE_START_LINE_148 = 148;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1016_line_148 = compiler;
	int PROBE_END_LINE_148 = 148;
	this.compiler = p_compiler_1016_line_148;
  }

  private void checkErrorManager() {
    Preconditions.checkNotNull(compiler,
        "Expected setCompiler to be called first: " + this);
    Preconditions.checkNotNull(compiler.getErrorManager(),
        "Expected compiler to call an error manager: " + this);
  }

  /** Gets a list of types depended on by this input. */
  @Override
  public Collection<String> getRequires() {
    checkErrorManager();
    try {
      regenerateDependencyInfoIfNecessary();
      return Collections.<String>unmodifiableSet(requires);
    } catch (IOException e) {
      compiler.getErrorManager().report(CheckLevel.ERROR,
          JSError.make(AbstractCompiler.READ_ERROR, getName()));
      return ImmutableList.<String>of();
    }
  }

  /** Gets a list of types provided by this input. */
  @Override
  public Collection<String> getProvides() {
    checkErrorManager();
    try {
      regenerateDependencyInfoIfNecessary();
      return Collections.<String>unmodifiableSet(provides);
    } catch (IOException e) {
      compiler.getErrorManager().report(CheckLevel.ERROR,
          JSError.make(AbstractCompiler.READ_ERROR, getName()));
      return ImmutableList.<String>of();
    }
  }

  // TODO(nicksantos): Remove addProvide/addRequire/removeRequire once
  // there is better support for discovering non-closure dependencies.
  void addProvide(String provide) {
    getProvides();
    provides.add(provide);
  }

  void addRequire(String require) {
    getRequires();
    requires.add(require);
  }

  public void removeRequire(String require) {
    getRequires();
    requires.remove(require);
  }

  /**
   * Regenerates the provides/requires if we need to do so.
   */
  private void regenerateDependencyInfoIfNecessary() throws IOException {
    // If the code is NOT a JsAst, then it was not originally JS code.
    // Look at the Ast for dependency info.
    if (!(ast instanceof JsAst)) {
      Preconditions.checkNotNull(compiler,
          "Expected setCompiler to be called first");
      DepsFinder finder = new DepsFinder();
      Node root = getAstRoot(compiler);
      if (root == null) {
        return;
      }

      finder.visitTree(getAstRoot(compiler));

      // TODO(nicksantos|user): This caching behavior is a bit
      // odd, and only works if you assume the exact call flow that
      // clients are currently using.  In that flow, they call
      // getProvides(), then remove the goog.provide calls from the
      // AST, and then call getProvides() again.
      //
      // This won't work for any other call flow, or any sort of incremental
      // compilation scheme. The API needs to be fixed so callers aren't
      // doing weird things like this, and then we should get rid of the
      // multiple-scan strategy.

      provides.addAll(finder.provides);
      requires.addAll(finder.requires);
    } else {
      // Otherwise, look at the source code.
      if (!generatedDependencyInfoFromSource) {
        // Note: it's OK to use getName() instead of
        // getPathRelativeToClosureBase() here because we're not using
        // this to generate deps files. (We're only using it for
        // symbol dependencies.)
        DependencyInfo info =
            (new JsFileParser(compiler.getErrorManager()))
            .setIncludeGoogBase(true)
            .parseFile(getName(), getName(), getCode());

        provides.addAll(info.getProvides());
        requires.addAll(info.getRequires());

        generatedDependencyInfoFromSource = true;
      }
    }
  }

  private static class DepsFinder {
    private final List<String> provides = Lists.newArrayList();
    private final List<String> requires = Lists.newArrayList();
    private final CodingConvention codingConvention =
        new ClosureCodingConvention();

    void visitTree(Node n) {
      visitSubtree(n, null);
    }

    void visitSubtree(Node n, Node parent) {
      if (n.isCall()) {
        String require =
            codingConvention.extractClassNameIfRequire(n, parent);
        if (require != null) {
          requires.add(require);
        }

        String provide =
            codingConvention.extractClassNameIfProvide(n, parent);
        if (provide != null) {
          provides.add(provide);
        }
        return;
      } else if (parent != null &&
          !parent.isExprResult() &&
          !parent.isScript()) {
        return;
      }

      for (Node child = n.getFirstChild();
           child != null; child = child.getNext()) {
        visitSubtree(child, n);
      }
    }
  }

  /**
   * Gets the source line for the indicated line number.
   *
   * @param lineNumber the line number, 1 being the first line of the file.
   * @return The line indicated. Does not include the newline at the end
   *     of the file. Returns {@code null} if it does not exist,
   *     or if there was an IO exception.
   */
  public String getLine(int lineNumber) {
    return getSourceFile().getLine(lineNumber);
  }

  /**
   * Get a region around the indicated line number. The exact definition of a
   * region is implementation specific, but it must contain the line indicated
   * by the line number. A region must not start or end by a carriage return.
   *
   * @param lineNumber the line number, 1 being the first line of the file.
   * @return The line indicated. Returns {@code null} if it does not exist,
   *     or if there was an IO exception.
   */
  public Region getRegion(int lineNumber) {
    return getSourceFile().getRegion(lineNumber);
  }

  public String getCode() throws IOException {
    return getSourceFile().getCode();
  }

  /** Returns the module to which the input belongs. */
  public JSModule getModule() {
    return module;
  }

  /** Sets the module to which the input belongs. */
  public void setModule(JSModule module) {
    // An input may only belong to one module.
    Preconditions.checkArgument(
        module == null || this.module == null || this.module == module);
    int PROBE_START_LINE_329 = 329;
	com.google.javascript.jscomp.JSModule p_module_1026_line_329 = module;
	int PROBE_END_LINE_329 = 329;
	this.module = p_module_1026_line_329;
  }

  /** Overrides the module to which the input belongs. */
  void overrideModule(JSModule module) {
    this.module = module;
  }

  public boolean isExtern() {
    int PROBE_START_LINE_338 = 340;
	com.google.javascript.jscomp.SourceAst f_ast_1008_line_338 = ast;
	boolean compiler_input_1_expr36_line_338 = f_ast_1008_line_338 == null;
	boolean compiler_input_1_expr37_line_338 = false;
	if (!compiler_input_1_expr36_line_338) {
		com.google.javascript.jscomp.SourceAst f_ast_1008_line_338_v1 = ast;
		com.google.javascript.jscomp.SourceFile compiler_input_1_expr38_line_338 = f_ast_1008_line_338_v1
				.getSourceFile();
		compiler_input_1_expr37_line_338 = compiler_input_1_expr38_line_338 == null;
	}
	boolean compiler_input_1_expr35_line_338 = compiler_input_1_expr36_line_338 || compiler_input_1_expr37_line_338;
	int PROBE_END_LINE_338 = 340;
	if (compiler_input_1_expr35_line_338) {
      return false;
    }
    int PROBE_START_LINE_341 = 341;
	com.google.javascript.jscomp.SourceAst f_ast_1008_line_341 = ast;
	com.google.javascript.jscomp.SourceFile compiler_input_1_expr40_line_341 = f_ast_1008_line_341.getSourceFile();
	boolean compiler_input_1_expr39_line_341 = compiler_input_1_expr40_line_341.isExtern();
	int PROBE_END_LINE_341 = 341;
	return compiler_input_1_expr39_line_341;
  }

  void setIsExtern(boolean isExtern) {
    if (ast == null || ast.getSourceFile() == null) {
      return;
    }
    ast.getSourceFile().setIsExtern(isExtern);
  }

  public int getLineOffset(int lineno) {
    return ast.getSourceFile().getLineOffset(lineno);
  }

  /** @return The number of lines in this input. */
  public int getNumLines() {
    return ast.getSourceFile().getNumLines();
  }

  @Override
  public String toString() {
    return getName();
  }
}
