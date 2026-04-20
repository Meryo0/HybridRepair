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

import java.util.Map;

/**
 * Named groups of DiagnosticTypes exposed by Compiler.
 * @author nicksantos@google.com (Nick Santos)
 */
public class DiagnosticGroups {
  static final DiagnosticType UNUSED =
      DiagnosticType.warning("JSC_UNUSED", "{0}");

  public DiagnosticGroups() {}

  private static final Map<String, DiagnosticGroup> groupsByName =
      Maps.newHashMap();

  static DiagnosticGroup registerDeprecatedGroup(String name) {
    int PROBE_START_LINE_39 = 39;
	String p_name_1237_line_39 = name;
	String p_name_1237_line_39_v1 = name;
	com.google.javascript.jscomp.DiagnosticType f_unused_1235_line_39 = UNUSED;
	com.google.javascript.jscomp.DiagnosticGroup diagnostic_groups_1_expr3_line_39 = registerGroup(p_name_1237_line_39,
			new DiagnosticGroup(p_name_1237_line_39_v1, f_unused_1235_line_39));
	int PROBE_END_LINE_39 = 39;
	return diagnostic_groups_1_expr3_line_39;
  }

  static DiagnosticGroup registerGroup(String name,
      DiagnosticGroup group) {
    int PROBE_START_LINE_44 = 44;
		Map<String, com.google.javascript.jscomp.DiagnosticGroup> f_groups_by_name_1236_line_44 = groupsByName;
		String p_name_1238_line_44 = name;
		com.google.javascript.jscomp.DiagnosticGroup p_group_1239_line_44 = group;
		int PROBE_END_LINE_44 = 44;
	f_groups_by_name_1236_line_44.put(p_name_1238_line_44, p_group_1239_line_44);
    int PROBE_START_LINE_45 = 45;
	com.google.javascript.jscomp.DiagnosticGroup p_group_1239_line_45 = group;
	int PROBE_END_LINE_45 = 45;
	return p_group_1239_line_45;
  }

  static DiagnosticGroup registerGroup(String name,
      DiagnosticType ... types) {
    int PROBE_START_LINE_50 = 50;
		String p_name_1240_line_50 = name;
		com.google.javascript.jscomp.DiagnosticType[] p_types_1241_line_50 = types;
		int PROBE_END_LINE_50 = 50;
	DiagnosticGroup group = new DiagnosticGroup(p_name_1240_line_50, p_types_1241_line_50);
    int PROBE_START_LINE_51 = 51;
	Map<String, com.google.javascript.jscomp.DiagnosticGroup> f_groups_by_name_1236_line_51 = groupsByName;
	String p_name_1240_line_51 = name;
	com.google.javascript.jscomp.DiagnosticGroup v_group_1242_line_51 = group;
	int PROBE_END_LINE_51 = 51;
	f_groups_by_name_1236_line_51.put(p_name_1240_line_51, v_group_1242_line_51);
    int PROBE_START_LINE_52 = 52;
	com.google.javascript.jscomp.DiagnosticGroup v_group_1242_line_52 = group;
	int PROBE_END_LINE_52 = 52;
	return v_group_1242_line_52;
  }

  static DiagnosticGroup registerGroup(String name,
      DiagnosticGroup ... groups) {
    int PROBE_START_LINE_57 = 57;
		String p_name_1243_line_57 = name;
		com.google.javascript.jscomp.DiagnosticGroup[] p_groups_1244_line_57 = groups;
		int PROBE_END_LINE_57 = 57;
	DiagnosticGroup group = new DiagnosticGroup(p_name_1243_line_57, p_groups_1244_line_57);
    int PROBE_START_LINE_58 = 58;
	Map<String, com.google.javascript.jscomp.DiagnosticGroup> f_groups_by_name_1236_line_58 = groupsByName;
	String p_name_1243_line_58 = name;
	com.google.javascript.jscomp.DiagnosticGroup v_group_1245_line_58 = group;
	int PROBE_END_LINE_58 = 58;
	f_groups_by_name_1236_line_58.put(p_name_1243_line_58, v_group_1245_line_58);
    int PROBE_START_LINE_59 = 59;
	com.google.javascript.jscomp.DiagnosticGroup v_group_1245_line_59 = group;
	int PROBE_END_LINE_59 = 59;
	return v_group_1245_line_59;
  }

  /** Get the registered diagnostic groups, indexed by name. */
  protected Map<String, DiagnosticGroup> getRegisteredGroups() {
    int PROBE_START_LINE_64 = 64;
	Map<String, com.google.javascript.jscomp.DiagnosticGroup> f_groups_by_name_1236_line_64 = groupsByName;
	ImmutableMap<String, com.google.javascript.jscomp.DiagnosticGroup> diagnostic_groups_1_expr10_line_64 = ImmutableMap
			.copyOf(f_groups_by_name_1236_line_64);
	int PROBE_END_LINE_64 = 64;
	return diagnostic_groups_1_expr10_line_64;
  }

  /** Find the diagnostic group registered under the given name. */
  public DiagnosticGroup forName(String name) {
    return groupsByName.get(name);
  }

  // A bit of a hack to display the available groups on the command-line.
  // New groups should be added to this list if they are public and should
  // be listed on the command-line as an available option.
  //
  // If a group is suppressible on a per-file basis, it should be added
  // to parser/ParserConfig.properties
  static final String DIAGNOSTIC_GROUP_NAMES =
      "accessControls, ambiguousFunctionDecl, cast, checkRegExp, " +
      "checkTypes, checkVars, const, constantProperty, deprecated, " +
      "duplicateMessage, " +
      "es5Strict, externsValidation, fileoverviewTags, globalThis, " +
      "internetExplorerChecks, invalidCasts, misplacedTypeAnnotation, " +
      "missingProperties, " +
      "nonStandardJsDocs, suspiciousCode, strictModuleDepCheck, " +
      "typeInvalidation, " +
      "undefinedNames, undefinedVars, unknownDefines, uselessCode, " +
      "visibility";

  public static final DiagnosticGroup GLOBAL_THIS =
      DiagnosticGroups.registerGroup("globalThis",
          CheckGlobalThis.GLOBAL_THIS);

  public static final DiagnosticGroup DEPRECATED =
      DiagnosticGroups.registerGroup("deprecated",
          CheckAccessControls.DEPRECATED_NAME,
          CheckAccessControls.DEPRECATED_NAME_REASON,
          CheckAccessControls.DEPRECATED_PROP,
          CheckAccessControls.DEPRECATED_PROP_REASON,
          CheckAccessControls.DEPRECATED_CLASS,
          CheckAccessControls.DEPRECATED_CLASS_REASON);

  public static final DiagnosticGroup VISIBILITY =
      DiagnosticGroups.registerGroup("visibility",
          CheckAccessControls.BAD_PRIVATE_GLOBAL_ACCESS,
          CheckAccessControls.BAD_PRIVATE_PROPERTY_ACCESS,
          CheckAccessControls.BAD_PROTECTED_PROPERTY_ACCESS,
          CheckAccessControls.PRIVATE_OVERRIDE,
          CheckAccessControls.VISIBILITY_MISMATCH);

  public static final DiagnosticGroup CONSTANT_PROPERTY =
      DiagnosticGroups.registerGroup("constantProperty",
          CheckAccessControls.CONST_PROPERTY_DELETED,
          CheckAccessControls.CONST_PROPERTY_REASSIGNED_VALUE);

  public static final DiagnosticGroup NON_STANDARD_JSDOC =
      DiagnosticGroups.registerGroup("nonStandardJsDocs",
          RhinoErrorReporter.BAD_JSDOC_ANNOTATION);

  public static final DiagnosticGroup ACCESS_CONTROLS =
      DiagnosticGroups.registerGroup("accessControls",
          DEPRECATED, VISIBILITY);

  public static final DiagnosticGroup INVALID_CASTS =
      DiagnosticGroups.registerGroup("invalidCasts",
          TypeValidator.INVALID_CAST);

  public static final DiagnosticGroup FILEOVERVIEW_JSDOC =
      DiagnosticGroups.registerDeprecatedGroup("fileoverviewTags");

  public static final DiagnosticGroup STRICT_MODULE_DEP_CHECK =
      DiagnosticGroups.registerGroup("strictModuleDepCheck",
          VarCheck.STRICT_MODULE_DEP_ERROR,
          CheckGlobalNames.STRICT_MODULE_DEP_QNAME);

  public static final DiagnosticGroup VIOLATED_MODULE_DEP =
      DiagnosticGroups.registerGroup("violatedModuleDep",
          VarCheck.VIOLATED_MODULE_DEP_ERROR);

  public static final DiagnosticGroup EXTERNS_VALIDATION =
      DiagnosticGroups.registerGroup("externsValidation",
          VarCheck.NAME_REFERENCE_IN_EXTERNS_ERROR,
          VarCheck.UNDEFINED_EXTERN_VAR_ERROR);

  public static final DiagnosticGroup AMBIGUOUS_FUNCTION_DECL =
      DiagnosticGroups.registerGroup("ambiguousFunctionDecl",
          VariableReferenceCheck.AMBIGUOUS_FUNCTION_DECL);

  public static final DiagnosticGroup UNKNOWN_DEFINES =
      DiagnosticGroups.registerGroup("unknownDefines",
          ProcessDefines.UNKNOWN_DEFINE_WARNING);

  public static final DiagnosticGroup TWEAKS =
      DiagnosticGroups.registerGroup("tweakValidation",
          ProcessTweaks.INVALID_TWEAK_DEFAULT_VALUE_WARNING,
          ProcessTweaks.TWEAK_WRONG_GETTER_TYPE_WARNING,
          ProcessTweaks.UNKNOWN_TWEAK_WARNING);

  public static final DiagnosticGroup MISSING_PROPERTIES =
      DiagnosticGroups.registerGroup("missingProperties",
          TypeCheck.INEXISTENT_PROPERTY);

  public static final DiagnosticGroup INTERNET_EXPLORER_CHECKS =
      DiagnosticGroups.registerGroup("internetExplorerChecks",
          RhinoErrorReporter.TRAILING_COMMA);

  public static final DiagnosticGroup UNDEFINED_VARIABLES =
      DiagnosticGroups.registerGroup("undefinedVars",
          VarCheck.UNDEFINED_VAR_ERROR);

  public static final DiagnosticGroup UNDEFINED_NAMES =
      DiagnosticGroups.registerGroup("undefinedNames",
          CheckGlobalNames.UNDEFINED_NAME_WARNING);

  public static final DiagnosticGroup DEBUGGER_STATEMENT_PRESENT =
      DiagnosticGroups.registerGroup("checkDebuggerStatement",
          CheckDebuggerStatement.DEBUGGER_STATEMENT_PRESENT);

  public static final DiagnosticGroup CHECK_REGEXP =
      DiagnosticGroups.registerGroup("checkRegExp",
          CheckRegExp.REGEXP_REFERENCE,
          CheckRegExp.MALFORMED_REGEXP);

  public static final DiagnosticGroup CHECK_TYPES =
      DiagnosticGroups.registerGroup("checkTypes",
          TypeValidator.ALL_DIAGNOSTICS,
          TypeCheck.ALL_DIAGNOSTICS);

  public static final DiagnosticGroup CHECK_VARIABLES =
      DiagnosticGroups.registerGroup("checkVars",
          VarCheck.UNDEFINED_VAR_ERROR,
          SyntacticScopeCreator.VAR_MULTIPLY_DECLARED_ERROR);

  public static final DiagnosticGroup CHECK_USELESS_CODE =
      DiagnosticGroups.registerGroup("uselessCode",
          CheckSideEffects.USELESS_CODE_ERROR,
          CheckUnreachableCode.UNREACHABLE_CODE);

  public static final DiagnosticGroup CONST =
      DiagnosticGroups.registerGroup("const",
          CheckAccessControls.CONST_PROPERTY_DELETED,
          CheckAccessControls.CONST_PROPERTY_REASSIGNED_VALUE,
          ConstCheck.CONST_REASSIGNED_VALUE_ERROR);

  public static final DiagnosticGroup TYPE_INVALIDATION =
      DiagnosticGroups.registerGroup("typeInvalidation",
          DisambiguateProperties.Warnings.INVALIDATION);

  public static final DiagnosticGroup DUPLICATE_VARS =
      DiagnosticGroups.registerGroup("duplicate",
          SyntacticScopeCreator.VAR_MULTIPLY_DECLARED_ERROR,
          TypeValidator.DUP_VAR_DECLARATION);

  public static final DiagnosticGroup ES5_STRICT =
      DiagnosticGroups.registerGroup("es5Strict",
          ControlStructureCheck.USE_OF_WITH,
          StrictModeCheck.UNKNOWN_VARIABLE,
          StrictModeCheck.EVAL_DECLARATION,
          StrictModeCheck.EVAL_ASSIGNMENT,
          StrictModeCheck.ARGUMENTS_DECLARATION,
          StrictModeCheck.ARGUMENTS_ASSIGNMENT,
          StrictModeCheck.DELETE_VARIABLE,
          StrictModeCheck.DUPLICATE_OBJECT_KEY);

  public static final DiagnosticGroup CHECK_PROVIDES =
      DiagnosticGroups.registerGroup("checkProvides",
          CheckProvides.MISSING_PROVIDE_WARNING);

  public static final DiagnosticGroup DUPLICATE_MESSAGE =
      DiagnosticGroups.registerGroup("duplicateMessage",
          JsMessageVisitor.MESSAGE_DUPLICATE_KEY);

  public static final DiagnosticGroup MISPLACED_TYPE_ANNOTATION =
      DiagnosticGroups.registerGroup("misplacedTypeAnnotation",
          RhinoErrorReporter.MISPLACED_TYPE_ANNOTATION);

  public static final DiagnosticGroup CAST =
      DiagnosticGroups.registerGroup("cast",
          TypeValidator.INVALID_CAST);

  public static final DiagnosticGroup SUSPICIOUS_CODE =
      DiagnosticGroups.registerGroup("suspiciousCode",
          CheckSuspiciousCode.SUSPICIOUS_SEMICOLON,
          CheckSuspiciousCode.SUSPICIOUS_COMPARISON_WITH_NAN);

  /**
   * Adds warning levels by name.
   */
  void setWarningLevel(CompilerOptions options,
      String name, CheckLevel level) {
    DiagnosticGroup group = forName(name);
    Preconditions.checkNotNull(group, "No warning class for name: %s", name);
    options.setWarningLevel(group, level);
  }
}
