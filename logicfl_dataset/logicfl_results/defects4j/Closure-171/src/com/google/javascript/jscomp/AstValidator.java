/*
 * Copyright 2011 The Closure Compiler Authors.
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

import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;

/**
 * This class walks the AST and validates that the structure is correct.
 *
 * @author johnlenz@google.com (John Lenz)
 */
public class AstValidator implements CompilerPass {

  // Possible enhancements:
  // * verify NAME, LABEL_NAME, GETPROP property name and unquoted
  // object-literal keys are valid JavaScript identifiers.
  // * optionally verify every node has source location information.
  // * optionally verify every node has an assigned JSType
  //

  /** Violation handler */
  public interface ViolationHandler {
    void handleViolation(String message, Node n);
  }

  private final ViolationHandler violationHandler;

  public AstValidator(ViolationHandler handler) {
    this.violationHandler = handler;
  }

  public AstValidator() {
    this.violationHandler = new ViolationHandler() {
      @Override
      public void handleViolation(String message, Node n) {
        throw new IllegalStateException(
            message + " Reference node " + n.toString());
      }
    };
  }

  @Override
  public void process(Node externs, Node root) {
    if (externs != null) {
      validateCodeRoot(externs);
    }
    if (root != null) {
      validateCodeRoot(root);
    }
  }

  public void validateRoot(Node n) {
    int PROBE_START_LINE_69 = 69;
	int q_block_4_line_69 = Token.BLOCK;
	com.google.javascript.rhino.Node p_n_64_line_69 = n;
	int PROBE_END_LINE_69 = 69;
	validateNodeType(q_block_4_line_69, p_n_64_line_69);
    int PROBE_START_LINE_70 = 70;
	com.google.javascript.rhino.Node p_n_64_line_70 = n;
	int PROBE_END_LINE_70 = 70;
	validateIsSynthetic(p_n_64_line_70);
    int PROBE_START_LINE_71 = 71;
	com.google.javascript.rhino.Node p_n_64_line_71 = n;
	int PROBE_END_LINE_71 = 71;
	validateChildCount(p_n_64_line_71, 2);
    int PROBE_START_LINE_72 = 72;
	com.google.javascript.rhino.Node p_n_64_line_72 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr9_line_72 = p_n_64_line_72.getFirstChild();
	int PROBE_END_LINE_72 = 72;
	validateCodeRoot(ast_validator_1_expr9_line_72);
    int PROBE_START_LINE_73 = 73;
	com.google.javascript.rhino.Node p_n_64_line_73 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr11_line_73 = p_n_64_line_73.getLastChild();
	int PROBE_END_LINE_73 = 73;
	validateCodeRoot(ast_validator_1_expr11_line_73);
  }

  public void validateCodeRoot(Node n) {
    int PROBE_START_LINE_77 = 77;
	int q_block_5_line_77 = Token.BLOCK;
	com.google.javascript.rhino.Node p_n_65_line_77 = n;
	int PROBE_END_LINE_77 = 77;
	validateNodeType(q_block_5_line_77, p_n_65_line_77);
    int PROBE_START_LINE_78 = 78;
	com.google.javascript.rhino.Node p_n_65_line_78 = n;
	validateIsSynthetic(p_n_65_line_78);
    boolean FOR_STMT_TOGGLE_LINE_79 = false;
	int PROBE_END_LINE_78 = 78;
	for (Node c = null; true;) {
      int PROBE_START_LINE_80 = 80;
		if (!FOR_STMT_TOGGLE_LINE_79) {
			FOR_STMT_TOGGLE_LINE_79 = true;
			com.google.javascript.rhino.Node p_n_65_line_79 = n;
			Node ast_validator_1_expr15_line_79 = p_n_65_line_79.getFirstChild();
			c = ast_validator_1_expr15_line_79;
		} else {
			if (FOR_STMT_TOGGLE_LINE_79) {
				com.google.javascript.rhino.Node v_c_66_line_79_v1 = c;
				com.google.javascript.rhino.Node ast_validator_1_expr18_line_79 = v_c_66_line_79_v1.getNext();
				c = ast_validator_1_expr18_line_79;
			} else {
				FOR_STMT_TOGGLE_LINE_79 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_66_line_79 = c;
		boolean ast_validator_1_expr16_line_79 = v_c_66_line_79 != null;
		if (!(ast_validator_1_expr16_line_79)) {
			break;
		}
		com.google.javascript.rhino.Node v_c_66_line_80 = c;
		int PROBE_END_LINE_80 = 80;
	validateScript(v_c_66_line_80);
    }
  }

  public void validateScript(Node n) {
    int PROBE_START_LINE_85 = 85;
	int q_script_5_line_85 = Token.SCRIPT;
	com.google.javascript.rhino.Node p_n_67_line_85 = n;
	int PROBE_END_LINE_85 = 85;
	validateNodeType(q_script_5_line_85, p_n_67_line_85);
    int PROBE_START_LINE_86 = 86;
	com.google.javascript.rhino.Node p_n_67_line_86 = n;
	int PROBE_END_LINE_86 = 86;
	validateHasSourceName(p_n_67_line_86);
    int PROBE_START_LINE_87 = 87;
	com.google.javascript.rhino.Node p_n_67_line_87 = n;
	validateHasInputId(p_n_67_line_87);
    boolean FOR_STMT_TOGGLE_LINE_88 = false;
	int PROBE_END_LINE_87 = 87;
	for (Node c = null; true;) {
      int PROBE_START_LINE_89 = 89;
		if (!FOR_STMT_TOGGLE_LINE_88) {
			FOR_STMT_TOGGLE_LINE_88 = true;
			com.google.javascript.rhino.Node p_n_67_line_88 = n;
			Node ast_validator_1_expr24_line_88 = p_n_67_line_88.getFirstChild();
			c = ast_validator_1_expr24_line_88;
		} else {
			if (FOR_STMT_TOGGLE_LINE_88) {
				com.google.javascript.rhino.Node v_c_68_line_88_v1 = c;
				com.google.javascript.rhino.Node ast_validator_1_expr27_line_88 = v_c_68_line_88_v1.getNext();
				c = ast_validator_1_expr27_line_88;
			} else {
				FOR_STMT_TOGGLE_LINE_88 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_68_line_88 = c;
		boolean ast_validator_1_expr25_line_88 = v_c_68_line_88 != null;
		if (!(ast_validator_1_expr25_line_88)) {
			break;
		}
		com.google.javascript.rhino.Node v_c_68_line_89 = c;
		int PROBE_END_LINE_89 = 89;
	validateStatement(v_c_68_line_89);
    }
  }

  public void validateStatement(Node n) {
    int PROBE_START_LINE_94 = 152;
	com.google.javascript.rhino.Node p_n_69_line_94 = n;
	int ast_validator_1_expr29_line_94 = p_n_69_line_94.getType();
	int PROBE_END_LINE_94 = 152;
	switch (ast_validator_1_expr29_line_94) {
      case Token.LABEL:
        validateLabel(n);
        return;
      case Token.BLOCK:
        validateBlock(n);
        return;
      case Token.FUNCTION:
        validateFunctionStatement(n);
        return;
      case Token.WITH:
        validateWith(n);
        return;
      case Token.FOR:
        validateFor(n);
        return;
      case Token.WHILE:
        validateWhile(n);
        return;
      case Token.DO:
        validateDo(n);
        return;
      case Token.SWITCH:
        validateSwitch(n);
        return;
      case Token.IF:
        validateIf(n);
        return;
      case Token.VAR:
	int PROBE_START_LINE_123 = 123;
	com.google.javascript.rhino.Node p_n_69_line_123 = n;
	int PROBE_END_LINE_123 = 123;
	validateVar(p_n_69_line_123);
        return;
      case Token.EXPR_RESULT:
	int PROBE_START_LINE_126 = 126;
	com.google.javascript.rhino.Node p_n_69_line_126 = n;
	int PROBE_END_LINE_126 = 126;
	validateExprStmt(p_n_69_line_126);
        return;
      case Token.RETURN:
        validateReturn(n);
        return;
      case Token.THROW:
        validateThrow(n);
        return;
      case Token.TRY:
        validateTry(n);
        return;
      case Token.BREAK:
        validateBreak(n);
        return;
      case Token.CONTINUE:
        validateContinue(n);
        return;
      case Token.EMPTY:
        validateChildless(n);
        return;
      case Token.DEBUGGER:
        validateChildless(n);
        return;
      default:
        violation("Expected statement but was "
            + Token.name(n.getType()) + ".", n);
    }
  }

  public void validateExpression(Node n) {
    int PROBE_START_LINE_156 = 275;
	com.google.javascript.rhino.Node p_n_70_line_156 = n;
	int ast_validator_1_expr32_line_156 = p_n_70_line_156.getType();
	int PROBE_END_LINE_156 = 275;
	switch (ast_validator_1_expr32_line_156) {
      // Childless expressions
      case Token.FALSE:
      case Token.NULL:
      case Token.THIS:
      case Token.TRUE:
        validateChildless(n);
        return;

      // General unary ops
      case Token.DELPROP:
      case Token.POS:
      case Token.NEG:
      case Token.NOT:
      case Token.INC:
      case Token.DEC:
      case Token.TYPEOF:
      case Token.VOID:
      case Token.BITNOT:
      case Token.CAST:
        validateUnaryOp(n);
        return;

      // General binary ops
      case Token.COMMA:
      case Token.OR:
      case Token.AND:
      case Token.BITOR:
      case Token.BITXOR:
      case Token.BITAND:
      case Token.EQ:
      case Token.NE:
      case Token.SHEQ:
      case Token.SHNE:
      case Token.LT:
      case Token.GT:
      case Token.LE:
      case Token.GE:
      case Token.INSTANCEOF:
      case Token.IN:
      case Token.LSH:
      case Token.RSH:
      case Token.URSH:
      case Token.SUB:
      case Token.ADD:
      case Token.MUL:
      case Token.MOD:
      case Token.DIV:
        validateBinaryOp(n);
        return;

      // Assignments
      case Token.ASSIGN:
      case Token.ASSIGN_BITOR:
      case Token.ASSIGN_BITXOR:
      case Token.ASSIGN_BITAND:
      case Token.ASSIGN_LSH:
      case Token.ASSIGN_RSH:
      case Token.ASSIGN_URSH:
      case Token.ASSIGN_ADD:
      case Token.ASSIGN_SUB:
      case Token.ASSIGN_MUL:
      case Token.ASSIGN_DIV:
      case Token.ASSIGN_MOD:
	int PROBE_START_LINE_220 = 220;
	com.google.javascript.rhino.Node p_n_70_line_220 = n;
	int PROBE_END_LINE_220 = 220;
	validateAssignmentExpression(p_n_70_line_220);
        return;

      case Token.HOOK:
        validateTrinaryOp(n);
        return;

      // Node types that require special handling
      case Token.STRING:
        validateString(n);
        return;

      case Token.NUMBER:
        validateNumber(n);
        return;

      case Token.NAME:
	int PROBE_START_LINE_237 = 237;
	com.google.javascript.rhino.Node p_n_70_line_237 = n;
	int PROBE_END_LINE_237 = 237;
	validateName(p_n_70_line_237);
        return;

      case Token.GETELEM:
        validateBinaryOp(n);
        return;

      case Token.GETPROP:
	int PROBE_START_LINE_245 = 245;
	com.google.javascript.rhino.Node p_n_70_line_245 = n;
	int PROBE_END_LINE_245 = 245;
	validateGetProp(p_n_70_line_245);
        return;

      case Token.ARRAYLIT:
        validateArrayLit(n);
        return;

      case Token.OBJECTLIT:
	int PROBE_START_LINE_253 = 253;
	com.google.javascript.rhino.Node p_n_70_line_253 = n;
	int PROBE_END_LINE_253 = 253;
	validateObjectLit(p_n_70_line_253);
        return;

      case Token.REGEXP:
        validateRegExpLit(n);
        return;

      case Token.CALL:
        validateCall(n);
        return;

      case Token.NEW:
        validateNew(n);
        return;

      case Token.FUNCTION:
	int PROBE_START_LINE_269 = 269;
	com.google.javascript.rhino.Node p_n_70_line_269 = n;
	int PROBE_END_LINE_269 = 269;
	validateFunctionExpression(p_n_70_line_269);
        return;

      default:
        violation("Expected expression but was "
            + Token.name(n.getType()), n);
    }
  }

  private void validateBlock(Node n) {
    int PROBE_START_LINE_279 = 279;
	int q_block_6_line_279 = Token.BLOCK;
	com.google.javascript.rhino.Node p_n_71_line_279 = n;
	validateNodeType(q_block_6_line_279, p_n_71_line_279);
    boolean FOR_STMT_TOGGLE_LINE_280 = false;
	int PROBE_END_LINE_279 = 279;
	for (Node c = null; true;) {
      int PROBE_START_LINE_281 = 281;
		if (!FOR_STMT_TOGGLE_LINE_280) {
			FOR_STMT_TOGGLE_LINE_280 = true;
			com.google.javascript.rhino.Node p_n_71_line_280 = n;
			Node ast_validator_1_expr40_line_280 = p_n_71_line_280.getFirstChild();
			c = ast_validator_1_expr40_line_280;
		} else {
			if (FOR_STMT_TOGGLE_LINE_280) {
				com.google.javascript.rhino.Node v_c_72_line_280_v1 = c;
				com.google.javascript.rhino.Node ast_validator_1_expr43_line_280 = v_c_72_line_280_v1.getNext();
				c = ast_validator_1_expr43_line_280;
			} else {
				FOR_STMT_TOGGLE_LINE_280 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_72_line_280 = c;
		boolean ast_validator_1_expr41_line_280 = v_c_72_line_280 != null;
		if (!(ast_validator_1_expr41_line_280)) {
			break;
		}
		int PROBE_END_LINE_281 = 281;
	validateStatement(c);
    }
  }

  private void validateSyntheticBlock(Node n) {
    validateNodeType(Token.BLOCK, n);
    validateIsSynthetic(n);
    for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
      validateStatement(c);
    }
  }

  private void validateIsSynthetic(Node n) {
    int PROBE_START_LINE_294 = 296;
	com.google.javascript.rhino.Node p_n_74_line_294 = n;
	int q_synthetic_block_prop_6_line_294 = Node.SYNTHETIC_BLOCK_PROP;
	boolean ast_validator_1_expr45_line_294 = p_n_74_line_294.getBooleanProp(q_synthetic_block_prop_6_line_294);
	boolean ast_validator_1_expr44_line_294 = !ast_validator_1_expr45_line_294;
	int PROBE_END_LINE_294 = 296;
	if (ast_validator_1_expr44_line_294) {
      violation("Missing 'synthetic block' annotation.", n);
    }
  }

  private void validateHasSourceName(Node n) {
    int PROBE_START_LINE_300 = 300;
	com.google.javascript.rhino.Node p_n_75_line_300 = n;
	String ast_validator_1_expr46_line_300 = p_n_75_line_300.getSourceFileName();
	int PROBE_END_LINE_300 = 300;
	String sourceName = ast_validator_1_expr46_line_300;
    int PROBE_START_LINE_301 = 303;
	String v_source_name_76_line_301 = sourceName;
	boolean ast_validator_1_expr48_line_301 = v_source_name_76_line_301 == null;
	boolean ast_validator_1_expr49_line_301 = false;
	if (!ast_validator_1_expr48_line_301) {
		String v_source_name_76_line_301_v1 = sourceName;
		ast_validator_1_expr49_line_301 = v_source_name_76_line_301_v1.isEmpty();
	}
	boolean ast_validator_1_expr47_line_301 = ast_validator_1_expr48_line_301 || ast_validator_1_expr49_line_301;
	int PROBE_END_LINE_301 = 303;
	if (ast_validator_1_expr47_line_301) {
      violation("Missing 'source name' annotation.", n);
    }
  }

  private void validateHasInputId(Node n) {
    int PROBE_START_LINE_307 = 307;
	com.google.javascript.rhino.Node p_n_77_line_307 = n;
	InputId ast_validator_1_expr50_line_307 = p_n_77_line_307.getInputId();
	int PROBE_END_LINE_307 = 307;
	InputId inputId = ast_validator_1_expr50_line_307;
    int PROBE_START_LINE_308 = 310;
	com.google.javascript.rhino.InputId v_input_id_78_line_308 = inputId;
	boolean ast_validator_1_expr51_line_308 = v_input_id_78_line_308 == null;
	int PROBE_END_LINE_308 = 310;
	if (ast_validator_1_expr51_line_308) {
      violation("Missing 'input id' annotation.", n);
    }
  }

  private void validateLabel(Node n) {
    validateNodeType(Token.LABEL, n);
    validateChildCount(n, 2);
    validateLabelName(n.getFirstChild());
    validateStatement(n.getLastChild());
  }

  private void validateLabelName(Node n) {
    validateNodeType(Token.LABEL_NAME, n);
    validateNonEmptyString(n);
    validateChildCount(n, 0);
  }

  private void validateNonEmptyString(Node n) {
    int PROBE_START_LINE_327 = 327;
	com.google.javascript.rhino.Node p_n_81_line_327 = n;
	int PROBE_END_LINE_327 = 327;
	validateNonNullString(p_n_81_line_327);
    int PROBE_START_LINE_328 = 330;
	com.google.javascript.rhino.Node p_n_81_line_328 = n;
	String ast_validator_1_expr54_line_328 = p_n_81_line_328.getString();
	boolean ast_validator_1_expr53_line_328 = ast_validator_1_expr54_line_328.isEmpty();
	int PROBE_END_LINE_328 = 330;
	if (ast_validator_1_expr53_line_328) {
      violation("Expected non-empty string.", n);
    }
  }

  private void validateNonNullString(Node n) {
    int PROBE_START_LINE_334 = 336;
	com.google.javascript.rhino.Node p_n_82_line_334 = n;
	String ast_validator_1_expr56_line_334 = p_n_82_line_334.getString();
	boolean ast_validator_1_expr55_line_334 = ast_validator_1_expr56_line_334 == null;
	int PROBE_END_LINE_334 = 336;
	if (ast_validator_1_expr55_line_334) {
      violation("Expected non-null string.", n);
    }
  }

  private void validateName(Node n) {
    int PROBE_START_LINE_340 = 340;
	int q_name_7_line_340 = Token.NAME;
	com.google.javascript.rhino.Node p_n_83_line_340 = n;
	int PROBE_END_LINE_340 = 340;
	validateNodeType(q_name_7_line_340, p_n_83_line_340);
    int PROBE_START_LINE_341 = 341;
	com.google.javascript.rhino.Node p_n_83_line_341 = n;
	int PROBE_END_LINE_341 = 341;
	validateNonEmptyString(p_n_83_line_341);
    int PROBE_START_LINE_342 = 342;
	com.google.javascript.rhino.Node p_n_83_line_342 = n;
	int PROBE_END_LINE_342 = 342;
	validateChildCount(p_n_83_line_342, 0);
  }

  private void validateOptionalName(Node n) {
    int PROBE_START_LINE_346 = 346;
	int q_name_8_line_346 = Token.NAME;
	com.google.javascript.rhino.Node p_n_84_line_346 = n;
	int PROBE_END_LINE_346 = 346;
	validateNodeType(q_name_8_line_346, p_n_84_line_346);
    int PROBE_START_LINE_347 = 347;
	com.google.javascript.rhino.Node p_n_84_line_347 = n;
	int PROBE_END_LINE_347 = 347;
	validateNonNullString(p_n_84_line_347);
    int PROBE_START_LINE_348 = 348;
	com.google.javascript.rhino.Node p_n_84_line_348 = n;
	int PROBE_END_LINE_348 = 348;
	validateChildCount(p_n_84_line_348, 0);
  }

  private void validateFunctionStatement(Node n) {
    validateNodeType(Token.FUNCTION, n);
    validateChildCount(n, 3);
    validateName(n.getFirstChild());
    validateParameters(n.getChildAtIndex(1));
    validateBlock(n.getLastChild());
  }

  private void validateFunctionExpression(Node n) {
    int PROBE_START_LINE_360 = 360;
	int q_function_8_line_360 = Token.FUNCTION;
	com.google.javascript.rhino.Node p_n_86_line_360 = n;
	int PROBE_END_LINE_360 = 360;
	validateNodeType(q_function_8_line_360, p_n_86_line_360);
    int PROBE_START_LINE_361 = 361;
	com.google.javascript.rhino.Node p_n_86_line_361 = n;
	int PROBE_END_LINE_361 = 361;
	validateChildCount(p_n_86_line_361, 3);
    int PROBE_START_LINE_362 = 362;
	com.google.javascript.rhino.Node p_n_86_line_362 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr66_line_362 = p_n_86_line_362.getFirstChild();
	int PROBE_END_LINE_362 = 362;
	validateOptionalName(ast_validator_1_expr66_line_362);
    int PROBE_START_LINE_363 = 363;
	com.google.javascript.rhino.Node p_n_86_line_363 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr68_line_363 = p_n_86_line_363.getChildAtIndex(1);
	int PROBE_END_LINE_363 = 363;
	validateParameters(ast_validator_1_expr68_line_363);
    int PROBE_START_LINE_364 = 364;
	com.google.javascript.rhino.Node p_n_86_line_364 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr70_line_364 = p_n_86_line_364.getLastChild();
	int PROBE_END_LINE_364 = 364;
	validateBlock(ast_validator_1_expr70_line_364);
  }

  private void validateParameters(Node n) {
    int PROBE_START_LINE_368 = 368;
	int q_param_list_9_line_368 = Token.PARAM_LIST;
	com.google.javascript.rhino.Node p_n_87_line_368 = n;
	validateNodeType(q_param_list_9_line_368, p_n_87_line_368);
    boolean FOR_STMT_TOGGLE_LINE_369 = false;
	int PROBE_END_LINE_368 = 368;
	for (Node c = null; true;) {
      int PROBE_START_LINE_370 = 370;
		if (!FOR_STMT_TOGGLE_LINE_369) {
			FOR_STMT_TOGGLE_LINE_369 = true;
			com.google.javascript.rhino.Node p_n_87_line_369 = n;
			Node ast_validator_1_expr73_line_369 = p_n_87_line_369.getFirstChild();
			c = ast_validator_1_expr73_line_369;
		} else {
			if (FOR_STMT_TOGGLE_LINE_369) {
				com.google.javascript.rhino.Node v_c_88_line_369_v1 = c;
				com.google.javascript.rhino.Node ast_validator_1_expr76_line_369 = v_c_88_line_369_v1.getNext();
				c = ast_validator_1_expr76_line_369;
			} else {
				FOR_STMT_TOGGLE_LINE_369 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_88_line_369 = c;
		boolean ast_validator_1_expr74_line_369 = v_c_88_line_369 != null;
		if (!(ast_validator_1_expr74_line_369)) {
			break;
		}
		int PROBE_END_LINE_370 = 370;
	validateName(c);
    }
  }

  private void validateCall(Node n) {
    validateNodeType(Token.CALL, n);
    validateMinimumChildCount(n, 1);
    for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
      validateExpression(c);
    }
  }

  private void validateNew(Node n) {
    validateNodeType(Token.NEW, n);
    validateMinimumChildCount(n, 1);
    for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
      validateExpression(c);
    }
  }

  private void validateVar(Node n) {
    int PROBE_START_LINE_391 = 391;
	int q_var_10_line_391 = Token.VAR;
	com.google.javascript.rhino.Node p_n_91_line_391 = n;
	int PROBE_END_LINE_391 = 391;
	validateNodeType(q_var_10_line_391, p_n_91_line_391);
    int PROBE_START_LINE_392 = 392;
	com.google.javascript.rhino.Node p_n_91_line_392 = n;
	this.validateMinimumChildCount(p_n_91_line_392, 1);
    boolean FOR_STMT_TOGGLE_LINE_393 = false;
	int PROBE_END_LINE_392 = 392;
	for (Node c = null; true;) {
      int PROBE_START_LINE_396 = 396;
		if (!FOR_STMT_TOGGLE_LINE_393) {
			FOR_STMT_TOGGLE_LINE_393 = true;
			com.google.javascript.rhino.Node p_n_91_line_393 = n;
			Node ast_validator_1_expr81_line_393 = p_n_91_line_393.getFirstChild();
			c = ast_validator_1_expr81_line_393;
		} else {
			if (FOR_STMT_TOGGLE_LINE_393) {
				com.google.javascript.rhino.Node v_c_92_line_393_v1 = c;
				com.google.javascript.rhino.Node ast_validator_1_expr84_line_393 = v_c_92_line_393_v1.getNext();
				c = ast_validator_1_expr84_line_393;
			} else {
				FOR_STMT_TOGGLE_LINE_393 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_92_line_393 = c;
		boolean ast_validator_1_expr82_line_393 = v_c_92_line_393 != null;
		if (!(ast_validator_1_expr82_line_393)) {
			break;
		}
		int q_name_11_line_396 = Token.NAME;
		com.google.javascript.rhino.Node v_c_92_line_396 = c;
		int PROBE_END_LINE_396 = 396;
	// Don't use the validateName here as the NAME is allowed to have
      // a child.
      validateNodeType(q_name_11_line_396, v_c_92_line_396);
      int PROBE_START_LINE_397 = 397;
	com.google.javascript.rhino.Node v_c_92_line_397 = c;
	int PROBE_END_LINE_397 = 397;
	validateNonEmptyString(v_c_92_line_397);
      int PROBE_START_LINE_398 = 398;
	com.google.javascript.rhino.Node v_c_92_line_398 = c;
	int PROBE_END_LINE_398 = 398;
	validateMaximumChildCount(v_c_92_line_398, 1);
      int PROBE_START_LINE_399 = 401;
	com.google.javascript.rhino.Node v_c_92_line_399 = c;
	boolean ast_validator_1_expr88_line_399 = v_c_92_line_399.hasChildren();
	int PROBE_END_LINE_399 = 401;
	if (ast_validator_1_expr88_line_399) {
        int PROBE_START_LINE_400 = 400;
		com.google.javascript.rhino.Node v_c_92_line_400 = c;
		com.google.javascript.rhino.Node ast_validator_1_expr90_line_400 = v_c_92_line_400.getFirstChild();
		int PROBE_END_LINE_400 = 400;
		validateExpression(ast_validator_1_expr90_line_400);
      }
    }
  }

  private void validateFor(Node n) {
    validateNodeType(Token.FOR, n);
    validateMinimumChildCount(n, 3);
    validateMaximumChildCount(n, 4);
    if (NodeUtil.isForIn(n)) {
      // FOR-IN
      validateChildCount(n, 3);
      validateVarOrAssignmentTarget(n.getFirstChild());
      validateExpression(n.getChildAtIndex(1));
    } else {
      // FOR
      validateChildCount(n, 4);
      validateVarOrOptionalExpression(n.getFirstChild());
      validateOptionalExpression(n.getChildAtIndex(1));
      validateOptionalExpression(n.getChildAtIndex(2));
    }
    validateBlock(n.getLastChild());
  }

  private void validateVarOrOptionalExpression(Node n) {
    if (n.isVar()) {
      validateVar(n);
    } else {
      validateOptionalExpression(n);
    }
  }

  private void validateVarOrAssignmentTarget(Node n) {
    if (n.isVar()) {
      // Only one NAME can be declared for FOR-IN expressions.
      this.validateChildCount(n, 1);
      validateVar(n);
    } else {
      validateAssignmentTarget(n);
    }
  }

  private void validateWith(Node n) {
    validateNodeType(Token.WITH, n);
    validateChildCount(n, 2);
    validateExpression(n.getFirstChild());
    validateBlock(n.getLastChild());
  }

  private void validateWhile(Node n) {
    validateNodeType(Token.WHILE, n);
    validateChildCount(n, 2);
    validateExpression(n.getFirstChild());
    validateBlock(n.getLastChild());
  }

  private void validateDo(Node n) {
    validateNodeType(Token.DO, n);
    validateChildCount(n, 2);
    validateBlock(n.getFirstChild());
    validateExpression(n.getLastChild());
  }

  private void validateIf(Node n) {
    validateNodeType(Token.IF, n);
    validateMinimumChildCount(n, 2);
    validateMaximumChildCount(n, 3);
    validateExpression(n.getFirstChild());
    validateBlock(n.getChildAtIndex(1));
    if (n.getChildCount() == 3) {
      validateBlock(n.getLastChild());
    }
  }

  private void validateExprStmt(Node n) {
    int PROBE_START_LINE_475 = 475;
	int q_expr_result_11_line_475 = Token.EXPR_RESULT;
	com.google.javascript.rhino.Node p_n_100_line_475 = n;
	int PROBE_END_LINE_475 = 475;
	validateNodeType(q_expr_result_11_line_475, p_n_100_line_475);
    int PROBE_START_LINE_476 = 476;
	com.google.javascript.rhino.Node p_n_100_line_476 = n;
	int PROBE_END_LINE_476 = 476;
	validateChildCount(p_n_100_line_476, 1);
    int PROBE_START_LINE_477 = 477;
	com.google.javascript.rhino.Node p_n_100_line_477 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr94_line_477 = p_n_100_line_477.getFirstChild();
	int PROBE_END_LINE_477 = 477;
	validateExpression(ast_validator_1_expr94_line_477);
  }

  private void validateReturn(Node n) {
    validateNodeType(Token.RETURN, n);
    validateMaximumChildCount(n, 1);
    if (n.hasChildren()) {
      validateExpression(n.getFirstChild());
    }
  }

  private void validateThrow(Node n) {
    validateNodeType(Token.THROW, n);
    validateChildCount(n, 1);
    validateExpression(n.getFirstChild());
  }

  private void validateBreak(Node n) {
    validateNodeType(Token.BREAK, n);
    validateMaximumChildCount(n, 1);
    if (n.hasChildren()) {
      validateLabelName(n.getFirstChild());
    }
  }

  private void validateContinue(Node n) {
    validateNodeType(Token.CONTINUE, n);
    validateMaximumChildCount(n, 1);
    if (n.hasChildren()) {
      validateLabelName(n.getFirstChild());
    }
  }

  private void validateTry(Node n) {
    validateNodeType(Token.TRY, n);
    validateMinimumChildCount(n, 2);
    validateMaximumChildCount(n, 3);
    validateBlock(n.getFirstChild());

    boolean seenCatchOrFinally = false;

    // Validate catch
    Node catches = n.getChildAtIndex(1);
    validateNodeType(Token.BLOCK, catches);
    validateMaximumChildCount(catches, 1);
    if (catches.hasChildren()) {
      validateCatch(catches.getFirstChild());
      seenCatchOrFinally = true;
    }

    // Validate finally
    if (n.getChildCount() == 3) {
      validateBlock(n.getLastChild());
      seenCatchOrFinally = true;
    }

    if (!seenCatchOrFinally) {
      violation("Missing catch or finally for try statement.", n);
    }
  }

  private void validateCatch(Node n) {
    validateNodeType(Token.CATCH, n);
    validateChildCount(n, 2);
    validateName(n.getFirstChild());
    validateBlock(n.getLastChild());
  }

  private void validateSwitch(Node n) {
    validateNodeType(Token.SWITCH, n);
    validateMinimumChildCount(n, 1);
    validateExpression(n.getFirstChild());
    int defaults = 0;
    for (Node c = n.getFirstChild().getNext(); c != null; c = c.getNext()) {
      validateSwitchMember(n.getLastChild());
      if (c.isDefaultCase()) {
        defaults++;
      }
    }
    if (defaults > 1) {
      violation("Expected at most 1 'default' in switch but was "
          + defaults, n);
    }
  }

  private void validateSwitchMember(Node n) {
    switch (n.getType()) {
      case Token.CASE:
        validateCase(n);
        return;
      case Token.DEFAULT_CASE:
        validateDefault(n);
        return;
      default:
        violation("Expected switch member but was "
            + Token.name(n.getType()), n);
    }
  }

  private void validateDefault(Node n) {
    validateNodeType(Token.DEFAULT_CASE, n);
    validateChildCount(n, 1);
    validateSyntheticBlock(n.getLastChild());
  }

  private void validateCase(Node n) {
    validateNodeType(Token.CASE, n);
    validateChildCount(n, 2);
    validateExpression(n.getFirstChild());
    validateSyntheticBlock(n.getLastChild());
  }

  private void validateOptionalExpression(Node n) {
    if (n.isEmpty()) {
      validateChildless(n);
    } else {
      validateExpression(n);
    }
  }

  private void validateChildless(Node n) {
    validateChildCount(n, 0);
  }

  private void validateAssignmentExpression(Node n) {
    int PROBE_START_LINE_602 = 602;
	com.google.javascript.rhino.Node p_n_113_line_602 = n;
	int PROBE_END_LINE_602 = 602;
	validateChildCount(p_n_113_line_602, 2);
    int PROBE_START_LINE_603 = 603;
	com.google.javascript.rhino.Node p_n_113_line_603 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr97_line_603 = p_n_113_line_603.getFirstChild();
	int PROBE_END_LINE_603 = 603;
	validateAssignmentTarget(ast_validator_1_expr97_line_603);
    int PROBE_START_LINE_604 = 604;
	com.google.javascript.rhino.Node p_n_113_line_604 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr99_line_604 = p_n_113_line_604.getLastChild();
	int PROBE_END_LINE_604 = 604;
	validateExpression(ast_validator_1_expr99_line_604);
  }

  private void validateAssignmentTarget(Node n) {
    int PROBE_START_LINE_608 = 617;
	com.google.javascript.rhino.Node p_n_114_line_608 = n;
	int ast_validator_1_expr100_line_608 = p_n_114_line_608.getType();
	int PROBE_END_LINE_608 = 617;
	switch (ast_validator_1_expr100_line_608) {
      case Token.NAME:
      case Token.GETELEM:
      case Token.GETPROP:
	int PROBE_START_LINE_612 = 612;
	com.google.javascript.rhino.Node p_n_114_line_612 = n;
	int PROBE_END_LINE_612 = 612;
	validateExpression(p_n_114_line_612);
        return;
      default:
        violation("Expected assignment target expression but was "
            + Token.name(n.getType()), n);
    }
  }

  private void validateGetProp(Node n) {
    int PROBE_START_LINE_621 = 621;
	int q_getprop_12_line_621 = Token.GETPROP;
	com.google.javascript.rhino.Node p_n_115_line_621 = n;
	int PROBE_END_LINE_621 = 621;
	validateNodeType(q_getprop_12_line_621, p_n_115_line_621);
    int PROBE_START_LINE_622 = 622;
	com.google.javascript.rhino.Node p_n_115_line_622 = n;
	int PROBE_END_LINE_622 = 622;
	validateChildCount(p_n_115_line_622, 2);
    int PROBE_START_LINE_623 = 623;
	com.google.javascript.rhino.Node p_n_115_line_623 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr105_line_623 = p_n_115_line_623.getFirstChild();
	int PROBE_END_LINE_623 = 623;
	validateExpression(ast_validator_1_expr105_line_623);
    int PROBE_START_LINE_624 = 624;
	com.google.javascript.rhino.Node p_n_115_line_624 = n;
	Node ast_validator_1_expr106_line_624 = p_n_115_line_624.getLastChild();
	int PROBE_END_LINE_624 = 624;
	Node prop = ast_validator_1_expr106_line_624;
    int PROBE_START_LINE_625 = 625;
	int q_string_13_line_625 = Token.STRING;
	com.google.javascript.rhino.Node v_prop_116_line_625 = prop;
	int PROBE_END_LINE_625 = 625;
	validateNodeType(q_string_13_line_625, v_prop_116_line_625);
    int PROBE_START_LINE_626 = 626;
	com.google.javascript.rhino.Node v_prop_116_line_626 = prop;
	int PROBE_END_LINE_626 = 626;
	validateNonEmptyString(v_prop_116_line_626);
  }

  private void validateRegExpLit(Node n) {
    validateNodeType(Token.REGEXP, n);
    validateMinimumChildCount(n, 1);
    validateMaximumChildCount(n, 2);
    for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
      validateString(c);
    }
  }

  private void validateString(Node n) {
    validateNodeType(Token.STRING, n);
    validateChildCount(n, 0);
    try {
      // Validate that getString doesn't throw
      n.getString();
    } catch (UnsupportedOperationException e) {
      violation("Invalid STRING node.", n);
    }
  }

  private void validateNumber(Node n) {
    validateNodeType(Token.NUMBER, n);
    validateChildCount(n, 0);
    try {
      // Validate that getDouble doesn't throw
      n.getDouble();
    } catch (UnsupportedOperationException e) {
      violation("Invalid NUMBER node.", n);
    }
  }

  private void validateArrayLit(Node n) {
    validateNodeType(Token.ARRAYLIT, n);
    for (Node c = n.getFirstChild(); c != null; c = c.getNext()) {
      // EMPTY is allowed to represent empty slots.
      validateOptionalExpression(c);
    }
  }

  private void validateObjectLit(Node n) {
    int PROBE_START_LINE_669 = 669;
	int q_objectlit_14_line_669 = Token.OBJECTLIT;
	com.google.javascript.rhino.Node p_n_121_line_669 = n;
	validateNodeType(q_objectlit_14_line_669, p_n_121_line_669);
    boolean FOR_STMT_TOGGLE_LINE_670 = false;
	int PROBE_END_LINE_669 = 669;
	for (Node c = null; true;) {
      int PROBE_START_LINE_671 = 671;
		if (!FOR_STMT_TOGGLE_LINE_670) {
			FOR_STMT_TOGGLE_LINE_670 = true;
			com.google.javascript.rhino.Node p_n_121_line_670 = n;
			Node ast_validator_1_expr111_line_670 = p_n_121_line_670.getFirstChild();
			c = ast_validator_1_expr111_line_670;
		} else {
			if (FOR_STMT_TOGGLE_LINE_670) {
				com.google.javascript.rhino.Node v_c_122_line_670_v1 = c;
				com.google.javascript.rhino.Node ast_validator_1_expr114_line_670 = v_c_122_line_670_v1.getNext();
				c = ast_validator_1_expr114_line_670;
			} else {
				FOR_STMT_TOGGLE_LINE_670 = true;
			}
		}
		com.google.javascript.rhino.Node v_c_122_line_670 = c;
		boolean ast_validator_1_expr112_line_670 = v_c_122_line_670 != null;
		if (!(ast_validator_1_expr112_line_670)) {
			break;
		}
		com.google.javascript.rhino.Node v_c_122_line_671 = c;
		int PROBE_END_LINE_671 = 671;
	validateObjectLitKey(v_c_122_line_671);
    }
  }

  private void validateObjectLitKey(Node n) {
    int PROBE_START_LINE_676 = 689;
	com.google.javascript.rhino.Node p_n_123_line_676 = n;
	int ast_validator_1_expr116_line_676 = p_n_123_line_676.getType();
	int PROBE_END_LINE_676 = 689;
	switch (ast_validator_1_expr116_line_676) {
      case Token.GETTER_DEF:
        validateObjectLitGetKey(n);
        return;
      case Token.SETTER_DEF:
        validateObjectLitSetKey(n);
        return;
      case Token.STRING_KEY:
	int PROBE_START_LINE_684 = 684;
	com.google.javascript.rhino.Node p_n_123_line_684 = n;
	int PROBE_END_LINE_684 = 684;
	validateObjectLitStringKey(p_n_123_line_684);
        return;
      default:
        violation("Expected object literal key expression but was "
              + Token.name(n.getType()), n);
    }
  }

  private void validateObjectLitGetKey(Node n) {
    validateNodeType(Token.GETTER_DEF, n);
    validateChildCount(n, 1);
    validateObjectLiteralKeyName(n);
    Node function = n.getFirstChild();
    validateFunctionExpression(function);
    // objlit get functions must be nameless, and must have zero parameters.
    if (!function.getFirstChild().getString().isEmpty()) {
      violation("Expected unnamed function expression.", n);
    }
    Node functionParams = function.getChildAtIndex(1);
    if (functionParams.hasChildren()) {
      violation("get methods must not have parameters.", n);
    }
  }

  private void validateObjectLitSetKey(Node n) {
    validateNodeType(Token.SETTER_DEF, n);
    validateChildCount(n, 1);
    validateObjectLiteralKeyName(n);
    Node function = n.getFirstChild();
    validateFunctionExpression(function);
    // objlit set functions must be nameless, and must have 1 parameter.
    if (!function.getFirstChild().getString().isEmpty()) {
      violation("Expected unnamed function expression.", n);
    }
    Node functionParams = function.getChildAtIndex(1);
    if (!functionParams.hasOneChild()) {
      violation("set methods must have exactly one parameter.", n);
    }
  }

  private void validateObjectLitStringKey(Node n) {
    int PROBE_START_LINE_725 = 725;
	int q_string_key_15_line_725 = Token.STRING_KEY;
	com.google.javascript.rhino.Node p_n_126_line_725 = n;
	int PROBE_END_LINE_725 = 725;
	validateNodeType(q_string_key_15_line_725, p_n_126_line_725);
    int PROBE_START_LINE_726 = 726;
	com.google.javascript.rhino.Node p_n_126_line_726 = n;
	int PROBE_END_LINE_726 = 726;
	validateChildCount(p_n_126_line_726, 1);
    int PROBE_START_LINE_727 = 727;
	com.google.javascript.rhino.Node p_n_126_line_727 = n;
	int PROBE_END_LINE_727 = 727;
	validateObjectLiteralKeyName(p_n_126_line_727);
    int PROBE_START_LINE_728 = 728;
	com.google.javascript.rhino.Node p_n_126_line_728 = n;
	com.google.javascript.rhino.Node ast_validator_1_expr122_line_728 = p_n_126_line_728.getFirstChild();
	int PROBE_END_LINE_728 = 728;
	validateExpression(ast_validator_1_expr122_line_728);
  }

  private void validateObjectLiteralKeyName(Node n) {
    int PROBE_START_LINE_732 = 741;
	com.google.javascript.rhino.Node p_n_127_line_732 = n;
	boolean ast_validator_1_expr123_line_732 = p_n_127_line_732.isQuotedString();
	int PROBE_END_LINE_732 = 741;
	if (ast_validator_1_expr123_line_732) {
      try {
        // Validate that getString doesn't throw
        n.getString();
      } catch (UnsupportedOperationException e) {
        violation("getString failed for" + Token.name(n.getType()), n);
      }
    } else {
      int PROBE_START_LINE_740 = 740;
		com.google.javascript.rhino.Node p_n_127_line_740 = n;
		int PROBE_END_LINE_740 = 740;
	validateNonEmptyString(p_n_127_line_740);
    }
  }

  private void validateUnaryOp(Node n) {
    validateChildCount(n, 1);
    validateExpression(n.getFirstChild());
  }

  private void validateBinaryOp(Node n) {
    validateChildCount(n, 2);
    validateExpression(n.getFirstChild());
    validateExpression(n.getLastChild());
  }

  private void validateTrinaryOp(Node n) {
    validateChildCount(n, 3);
    Node first = n.getFirstChild();
    validateExpression(first);
    validateExpression(first.getNext());
    validateExpression(n.getLastChild());
  }

  private void violation(String message, Node n) {
    violationHandler.handleViolation(message, n);
  }

  private void validateNodeType(int type, Node n) {
    int PROBE_START_LINE_768 = 772;
	com.google.javascript.rhino.Node p_n_134_line_768 = n;
	int ast_validator_1_expr126_line_768 = p_n_134_line_768.getType();
	int p_type_133_line_768 = type;
	boolean ast_validator_1_expr125_line_768 = ast_validator_1_expr126_line_768 != p_type_133_line_768;
	int PROBE_END_LINE_768 = 772;
	if (ast_validator_1_expr125_line_768) {
      violation(
          "Expected " + Token.name(type) + " but was "
              + Token.name(n.getType()), n);
    }
  }

  private void validateChildCount(Node n, int i) {
    boolean valid = false;
    int PROBE_START_LINE_777 = 783;
	int p_i_136_line_777 = i;
	boolean ast_validator_1_expr127_line_777 = p_i_136_line_777 == 0;
	int PROBE_END_LINE_777 = 783;
	if (ast_validator_1_expr127_line_777) {
      int PROBE_START_LINE_778 = 778;
		com.google.javascript.rhino.Node p_n_135_line_778 = n;
		boolean ast_validator_1_expr130_line_778 = p_n_135_line_778.hasChildren();
		boolean ast_validator_1_expr129_line_778 = !ast_validator_1_expr130_line_778;
		int PROBE_END_LINE_778 = 778;
	valid = ast_validator_1_expr129_line_778;
    } else {
		int PROBE_START_LINE_779 = 783;
		int p_i_136_line_779 = i;
		boolean ast_validator_1_expr131_line_779 = p_i_136_line_779 == 1;
		int PROBE_END_LINE_779 = 783;
		if (ast_validator_1_expr131_line_779) {
			int PROBE_START_LINE_780 = 780;
			com.google.javascript.rhino.Node p_n_135_line_780 = n;
			boolean ast_validator_1_expr133_line_780 = p_n_135_line_780.hasOneChild();
			int PROBE_END_LINE_780 = 780;
			valid = ast_validator_1_expr133_line_780;
		} else {
			int PROBE_START_LINE_782 = 782;
			com.google.javascript.rhino.Node p_n_135_line_782 = n;
			int ast_validator_1_expr137_line_782 = p_n_135_line_782.getChildCount();
			int p_i_136_line_782 = i;
			boolean ast_validator_1_expr136_line_782 = ast_validator_1_expr137_line_782 == p_i_136_line_782;
			boolean ast_validator_1_expr135_line_782 = (ast_validator_1_expr136_line_782);
			int PROBE_END_LINE_782 = 782;
			valid = ast_validator_1_expr135_line_782;
		}
	}
    int PROBE_START_LINE_784 = 788;
	boolean v_valid_137_line_784 = valid;
	boolean ast_validator_1_expr138_line_784 = !v_valid_137_line_784;
	int PROBE_END_LINE_784 = 788;
	if (ast_validator_1_expr138_line_784) {
      violation(
          "Expected " + i + " children, but was "
              + n.getChildCount(), n);
    }
  }

  private void validateMinimumChildCount(Node n, int i) {
    boolean valid = false;
    int PROBE_START_LINE_793 = 799;
	int p_i_139_line_793 = i;
	boolean ast_validator_1_expr139_line_793 = p_i_139_line_793 == 1;
	int PROBE_END_LINE_793 = 799;
	if (ast_validator_1_expr139_line_793) {
      int PROBE_START_LINE_794 = 794;
		com.google.javascript.rhino.Node p_n_138_line_794 = n;
		boolean ast_validator_1_expr141_line_794 = p_n_138_line_794.hasChildren();
		int PROBE_END_LINE_794 = 794;
	valid = ast_validator_1_expr141_line_794;
    } else if (i == 2) {
      valid = n.hasMoreThanOneChild();
    } else {
      valid = n.getChildCount() >= i;
    }

    int PROBE_START_LINE_801 = 805;
	boolean v_valid_140_line_801 = valid;
	boolean ast_validator_1_expr142_line_801 = !v_valid_140_line_801;
	int PROBE_END_LINE_801 = 805;
	if (ast_validator_1_expr142_line_801) {
      violation(
          "Expected at least " + i + " children, but was "
              + n.getChildCount(), n);
    }
  }

  private void validateMaximumChildCount(Node n, int i) {
    boolean valid = false;
    int PROBE_START_LINE_810 = 814;
	int p_i_142_line_810 = i;
	boolean ast_validator_1_expr143_line_810 = p_i_142_line_810 == 1;
	int PROBE_END_LINE_810 = 814;
	if (ast_validator_1_expr143_line_810) {
      int PROBE_START_LINE_811 = 811;
		com.google.javascript.rhino.Node p_n_141_line_811 = n;
		boolean ast_validator_1_expr146_line_811 = p_n_141_line_811.hasMoreThanOneChild();
		boolean ast_validator_1_expr145_line_811 = !ast_validator_1_expr146_line_811;
		int PROBE_END_LINE_811 = 811;
	valid = ast_validator_1_expr145_line_811;
    } else {
      valid = n.getChildCount() <= i;
    }
    int PROBE_START_LINE_815 = 819;
	boolean v_valid_143_line_815 = valid;
	boolean ast_validator_1_expr147_line_815 = !v_valid_143_line_815;
	int PROBE_END_LINE_815 = 819;
	if (ast_validator_1_expr147_line_815) {
      violation(
          "Expected no more than " + i + " children, but was "
              + n.getChildCount(), n);
    }
  }
}
