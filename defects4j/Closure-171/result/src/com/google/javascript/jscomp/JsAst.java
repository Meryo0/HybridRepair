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
import com.google.javascript.jscomp.parsing.ParserRunner;
import com.google.javascript.rhino.IR;
import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.Node;

import java.io.IOException;
import java.util.logging.Logger;
import com.google.javascript.rhino.head.ast.AstRoot;

/**
 * Generates an AST for a JavaScript source file.
 *
 */
public class JsAst implements SourceAst {
  int PROBE_START_LINE_33 = 33;

	private static final String js_ast_1_expr2_line_33 = JsAst.class.getName();
	private static final java.util.logging.Logger js_ast_1_expr1_line_33 = Logger.getLogger(js_ast_1_expr2_line_33);

	int PROBE_END_LINE_33 = 33;

private static final Logger logger_ = js_ast_1_expr1_line_33;
  private static final long serialVersionUID = 1L;

  private transient InputId inputId;
  private transient SourceFile sourceFile;
  private String fileName;
  private Node root;

  public JsAst(SourceFile sourceFile) {
    int PROBE_START_LINE_42 = 42;
	com.google.javascript.jscomp.SourceFile p_source_file_1974_line_42 = sourceFile;
	String js_ast_1_expr8_line_42 = p_source_file_1974_line_42.getName();
	int PROBE_END_LINE_42 = 42;
	this.inputId = new InputId(js_ast_1_expr8_line_42);
    int PROBE_START_LINE_43 = 43;
	com.google.javascript.jscomp.SourceFile p_source_file_1974_line_43 = sourceFile;
	int PROBE_END_LINE_43 = 43;
	this.sourceFile = p_source_file_1974_line_43;
    int PROBE_START_LINE_44 = 44;
	com.google.javascript.jscomp.SourceFile p_source_file_1974_line_44 = sourceFile;
	String js_ast_1_expr14_line_44 = p_source_file_1974_line_44.getName();
	int PROBE_END_LINE_44 = 44;
	this.fileName = js_ast_1_expr14_line_44;
  }

  @Override
  public Node getAstRoot(AbstractCompiler compiler) {
    int PROBE_START_LINE_49 = 52;
	com.google.javascript.rhino.Node f_root_1979_line_49 = root;
	boolean js_ast_1_expr16_line_49 = f_root_1979_line_49 == null;
	int PROBE_END_LINE_49 = 52;
	if (js_ast_1_expr16_line_49) {
      int PROBE_START_LINE_50 = 50;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1978_line_50 = compiler;
		int PROBE_END_LINE_50 = 50;
	parse(p_compiler_1978_line_50);
      int PROBE_START_LINE_51 = 51;
	com.google.javascript.rhino.Node f_root_1979_line_51 = root;
	com.google.javascript.rhino.InputId f_input_id_1975_line_51 = inputId;
	int PROBE_END_LINE_51 = 51;
	f_root_1979_line_51.setInputId(f_input_id_1975_line_51);
    }
    int PROBE_START_LINE_53 = 53;
	com.google.javascript.rhino.Node f_root_1979_line_53 = root;
	int PROBE_END_LINE_53 = 53;
	return f_root_1979_line_53;
  }

  @Override
  public void clearAst() {
    root = null;
    // While we're at it, clear out any saved text in the source file on
    // the assumption that if we're dumping the parse tree, then we probably
    // assume regenerating everything else is a smart idea also.
    sourceFile.clearCachedSource();
  }

  @Override
  public InputId getInputId() {
    int PROBE_START_LINE_67 = 67;
	com.google.javascript.rhino.InputId f_input_id_1975_line_67 = inputId;
	int PROBE_END_LINE_67 = 67;
	return f_input_id_1975_line_67;
  }

  @Override
  public SourceFile getSourceFile() {
    int PROBE_START_LINE_72 = 72;
	com.google.javascript.jscomp.SourceFile f_source_file_1976_line_72 = sourceFile;
	int PROBE_END_LINE_72 = 72;
	return f_source_file_1976_line_72;
  }

  @Override
  public void setSourceFile(SourceFile file) {
    Preconditions.checkState(fileName.equals(file.getName()));
    sourceFile = file;
  }

  private void parse(AbstractCompiler compiler) {
    try {
      int PROBE_START_LINE_83 = 83;
		java.util.logging.Logger f_logger___1973_line_83 = logger_;
		com.google.javascript.jscomp.SourceFile f_source_file_1976_line_83 = sourceFile;
		String js_ast_1_expr21_line_83 = f_source_file_1976_line_83.getName();
		String js_ast_1_expr20_line_83 = "Parsing: " + js_ast_1_expr21_line_83;
		int PROBE_END_LINE_83 = 83;
	f_logger___1973_line_83.fine(js_ast_1_expr20_line_83);
      int PROBE_START_LINE_84 = 87;
	com.google.javascript.jscomp.SourceFile f_source_file_1976_line_84 = sourceFile;
	com.google.javascript.jscomp.SourceFile f_source_file_1976_line_84_v1 = sourceFile;
	String js_ast_1_expr23_line_84 = f_source_file_1976_line_84_v1.getCode();
	ParserRunner.ParseResult js_ast_1_expr22_line_84 = ParserRunner.parse(f_source_file_1976_line_84,
			js_ast_1_expr23_line_84, compiler.getParserConfig(), compiler.getDefaultErrorReporter(), logger_);
	int PROBE_END_LINE_84 = 87;
	ParserRunner.ParseResult result = js_ast_1_expr22_line_84;
      int PROBE_START_LINE_88 = 88;
	com.google.javascript.jscomp.parsing.ParserRunner.ParseResult v_result_1982_line_88 = result;
	com.google.javascript.rhino.Node q_ast_71_line_88 = v_result_1982_line_88.ast;
	int PROBE_END_LINE_88 = 88;
	root = q_ast_71_line_88;
      int PROBE_START_LINE_89 = 89;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1981_line_89 = compiler;
	com.google.javascript.jscomp.SourceFile f_source_file_1976_line_89 = sourceFile;
	String js_ast_1_expr28_line_89 = f_source_file_1976_line_89.getName();
	com.google.javascript.jscomp.parsing.ParserRunner.ParseResult v_result_1982_line_89 = result;
	com.google.javascript.rhino.head.ast.AstRoot q_old_ast_72_line_89 = v_result_1982_line_89.oldAst;
	int PROBE_END_LINE_89 = 89;
	p_compiler_1981_line_89.setOldParseTree(js_ast_1_expr28_line_89, q_old_ast_72_line_89);
    } catch (IOException e) {
      compiler.report(
          JSError.make(AbstractCompiler.READ_ERROR, sourceFile.getName()));
    }

    int PROBE_START_LINE_95 = 100;
	com.google.javascript.rhino.Node f_root_1979_line_95 = root;
	boolean js_ast_1_expr30_line_95 = f_root_1979_line_95 == null;
	boolean js_ast_1_expr31_line_95 = false;
	if (!js_ast_1_expr30_line_95) {
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1981_line_95 = compiler;
		js_ast_1_expr31_line_95 = p_compiler_1981_line_95.hasHaltingErrors();
	}
	boolean js_ast_1_expr29_line_95 = js_ast_1_expr30_line_95 || js_ast_1_expr31_line_95;
	int PROBE_END_LINE_95 = 100;
	if (js_ast_1_expr29_line_95) {
      // There was a parse error or IOException, so use a dummy block.
      root = IR.script();
    } else {
      int PROBE_START_LINE_99 = 99;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1981_line_99 = compiler;
		com.google.javascript.rhino.Node f_root_1979_line_99 = root;
		int PROBE_END_LINE_99 = 99;
	p_compiler_1981_line_99.prepareAst(f_root_1979_line_99);
    }

    int PROBE_START_LINE_104 = 104;
	com.google.javascript.rhino.Node f_root_1979_line_104 = root;
	com.google.javascript.jscomp.SourceFile f_source_file_1976_line_104 = sourceFile;
	int PROBE_END_LINE_104 = 104;
	// Set the source name so that the compiler passes can track
    // the source file and module.
    f_root_1979_line_104.setStaticSourceFile(f_source_file_1976_line_104);
  }
}
