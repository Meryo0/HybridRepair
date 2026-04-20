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
  int PROBE_START_LINE_35 = 35;

	private static final String js_ast_1_expr2_line_35 = JsAst.class.getName();
	private static final java.util.logging.Logger js_ast_1_expr1_line_35 = Logger.getLogger(js_ast_1_expr2_line_35);

	int PROBE_END_LINE_35 = 35;

private static final Logger logger_ = js_ast_1_expr1_line_35;
  private static final long serialVersionUID = 1L;

  private transient InputId inputId;
  private transient SourceFile sourceFile;
  private String fileName;
  private Node root;

  public JsAst(SourceFile sourceFile) {
    int PROBE_START_LINE_44 = 44;
	com.google.javascript.jscomp.SourceFile p_source_file_1589_line_44 = sourceFile;
	String js_ast_1_expr8_line_44 = p_source_file_1589_line_44.getName();
	int PROBE_END_LINE_44 = 44;
	this.inputId = new InputId(js_ast_1_expr8_line_44);
    int PROBE_START_LINE_45 = 45;
	com.google.javascript.jscomp.SourceFile p_source_file_1589_line_45 = sourceFile;
	int PROBE_END_LINE_45 = 45;
	this.sourceFile = p_source_file_1589_line_45;
    int PROBE_START_LINE_46 = 46;
	com.google.javascript.jscomp.SourceFile p_source_file_1589_line_46 = sourceFile;
	String js_ast_1_expr14_line_46 = p_source_file_1589_line_46.getName();
	int PROBE_END_LINE_46 = 46;
	this.fileName = js_ast_1_expr14_line_46;
  }

  @Override
  public Node getAstRoot(AbstractCompiler compiler) {
    int PROBE_START_LINE_51 = 54;
	com.google.javascript.rhino.Node f_root_1594_line_51 = root;
	boolean js_ast_1_expr16_line_51 = f_root_1594_line_51 == null;
	int PROBE_END_LINE_51 = 54;
	if (js_ast_1_expr16_line_51) {
      int PROBE_START_LINE_52 = 52;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1593_line_52 = compiler;
		int PROBE_END_LINE_52 = 52;
	parse(p_compiler_1593_line_52);
      int PROBE_START_LINE_53 = 53;
	com.google.javascript.rhino.Node f_root_1594_line_53 = root;
	com.google.javascript.rhino.InputId f_input_id_1590_line_53 = inputId;
	int PROBE_END_LINE_53 = 53;
	f_root_1594_line_53.setInputId(f_input_id_1590_line_53);
    }
    int PROBE_START_LINE_55 = 55;
	com.google.javascript.rhino.Node f_root_1594_line_55 = root;
	int PROBE_END_LINE_55 = 55;
	return f_root_1594_line_55;
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
    int PROBE_START_LINE_69 = 69;
	com.google.javascript.rhino.InputId f_input_id_1590_line_69 = inputId;
	int PROBE_END_LINE_69 = 69;
	return f_input_id_1590_line_69;
  }

  @Override
  public SourceFile getSourceFile() {
    int PROBE_START_LINE_74 = 74;
	com.google.javascript.jscomp.SourceFile f_source_file_1591_line_74 = sourceFile;
	int PROBE_END_LINE_74 = 74;
	return f_source_file_1591_line_74;
  }

  @Override
  public void setSourceFile(SourceFile file) {
    Preconditions.checkState(fileName.equals(file.getName()));
    sourceFile = file;
  }

  private void parse(AbstractCompiler compiler) {
    try {
      int PROBE_START_LINE_85 = 85;
		java.util.logging.Logger f_logger___1588_line_85 = logger_;
		com.google.javascript.jscomp.SourceFile f_source_file_1591_line_85 = sourceFile;
		String js_ast_1_expr21_line_85 = f_source_file_1591_line_85.getName();
		String js_ast_1_expr20_line_85 = "Parsing: " + js_ast_1_expr21_line_85;
		int PROBE_END_LINE_85 = 85;
	f_logger___1588_line_85.fine(js_ast_1_expr20_line_85);
      int PROBE_START_LINE_86 = 89;
	com.google.javascript.jscomp.SourceFile f_source_file_1591_line_86 = sourceFile;
	com.google.javascript.jscomp.SourceFile f_source_file_1591_line_86_v1 = sourceFile;
	String js_ast_1_expr23_line_86 = f_source_file_1591_line_86_v1.getCode();
	ParserRunner.ParseResult js_ast_1_expr22_line_86 = ParserRunner.parse(f_source_file_1591_line_86,
			js_ast_1_expr23_line_86, compiler.getParserConfig(), compiler.getDefaultErrorReporter(), logger_);
	int PROBE_END_LINE_86 = 89;
	ParserRunner.ParseResult result = js_ast_1_expr22_line_86;
      int PROBE_START_LINE_90 = 90;
	com.google.javascript.jscomp.parsing.ParserRunner.ParseResult v_result_1597_line_90 = result;
	com.google.javascript.rhino.Node q_ast_51_line_90 = v_result_1597_line_90.ast;
	int PROBE_END_LINE_90 = 90;
	root = q_ast_51_line_90;
      int PROBE_START_LINE_91 = 91;
	com.google.javascript.jscomp.AbstractCompiler p_compiler_1596_line_91 = compiler;
	com.google.javascript.jscomp.SourceFile f_source_file_1591_line_91 = sourceFile;
	String js_ast_1_expr28_line_91 = f_source_file_1591_line_91.getName();
	com.google.javascript.jscomp.parsing.ParserRunner.ParseResult v_result_1597_line_91 = result;
	com.google.javascript.rhino.head.ast.AstRoot q_old_ast_52_line_91 = v_result_1597_line_91.oldAst;
	int PROBE_END_LINE_91 = 91;
	p_compiler_1596_line_91.setOldParseTree(js_ast_1_expr28_line_91, q_old_ast_52_line_91);
    } catch (IOException e) {
      compiler.report(
          JSError.make(AbstractCompiler.READ_ERROR, sourceFile.getName()));
    }

    int PROBE_START_LINE_97 = 102;
	com.google.javascript.rhino.Node f_root_1594_line_97 = root;
	boolean js_ast_1_expr30_line_97 = f_root_1594_line_97 == null;
	boolean js_ast_1_expr31_line_97 = false;
	if (!js_ast_1_expr30_line_97) {
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1596_line_97 = compiler;
		js_ast_1_expr31_line_97 = p_compiler_1596_line_97.hasHaltingErrors();
	}
	boolean js_ast_1_expr29_line_97 = js_ast_1_expr30_line_97 || js_ast_1_expr31_line_97;
	int PROBE_END_LINE_97 = 102;
	if (js_ast_1_expr29_line_97) {
      // There was a parse error or IOException, so use a dummy block.
      root = IR.script();
    } else {
      int PROBE_START_LINE_101 = 101;
		com.google.javascript.jscomp.AbstractCompiler p_compiler_1596_line_101 = compiler;
		com.google.javascript.rhino.Node f_root_1594_line_101 = root;
		int PROBE_END_LINE_101 = 101;
	p_compiler_1596_line_101.prepareAst(f_root_1594_line_101);
    }

    int PROBE_START_LINE_106 = 106;
	com.google.javascript.rhino.Node f_root_1594_line_106 = root;
	com.google.javascript.jscomp.SourceFile f_source_file_1591_line_106 = sourceFile;
	int PROBE_END_LINE_106 = 106;
	// Set the source name so that the compiler passes can track
    // the source file and module.
    f_root_1594_line_106.setStaticSourceFile(f_source_file_1591_line_106);
  }
}
