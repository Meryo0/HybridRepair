/*
 * Copyright 2004 The Closure Compiler Authors.
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

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.io.CharStreams;
import com.google.javascript.jscomp.CompilerOptions.DevMode;
import com.google.javascript.jscomp.CompilerOptions.LanguageMode;
import com.google.javascript.jscomp.ReferenceCollectingCallback.ReferenceCollection;
import com.google.javascript.jscomp.Scope.Var;
import com.google.javascript.jscomp.deps.SortedDependencies;
import com.google.javascript.jscomp.deps.SortedDependencies.CircularDependencyException;
import com.google.javascript.jscomp.deps.SortedDependencies.MissingProvideException;
import com.google.javascript.jscomp.parsing.Config;
import com.google.javascript.jscomp.parsing.ParserRunner;
import com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter;
import com.google.javascript.jscomp.type.ClosureReverseAbstractInterpreter;
import com.google.javascript.jscomp.type.ReverseAbstractInterpreter;
import com.google.javascript.jscomp.type.SemanticReverseAbstractInterpreter;
import com.google.javascript.rhino.IR;
import com.google.javascript.rhino.InputId;
import com.google.javascript.rhino.JSDocInfo;
import com.google.javascript.rhino.Node;
import com.google.javascript.rhino.Token;
import com.google.javascript.rhino.head.ErrorReporter;
import com.google.javascript.rhino.head.ast.AstRoot;
import com.google.javascript.rhino.jstype.JSTypeRegistry;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.LinkedHashMap;
import java.util.ArrayList;

/**
 * Compiler (and the other classes in this package) does the following:
 * <ul>
 * <li>parses JS code
 * <li>checks for undefined variables
 * <li>performs optimizations such as constant folding and constants inlining
 * <li>renames variables (to short names)
 * <li>outputs compact JavaScript code
 * </ul>
 *
 * External variables are declared in 'externs' files. For instance, the file
 * may include definitions for global javascript/browser objects such as
 * window, document.
 *
 */
public class Compiler extends AbstractCompiler {
  static final String SINGLETON_MODULE_NAME = "[singleton]";

  static final DiagnosticType MODULE_DEPENDENCY_ERROR =
      DiagnosticType.error("JSC_MODULE_DEPENDENCY_ERROR",
          "Bad dependency: {0} -> {1}. "
              + "Modules must be listed in dependency order.");

  int PROBE_START_LINE_91 = 93;

static final com.google.javascript.jscomp.DiagnosticType compiler_1_expr2_line_91 = DiagnosticType
		.error("JSC_MISSING_ENTRY_ERROR", "required entry point \"{0}\" never provided");

int PROBE_END_LINE_91 = 93;

static final DiagnosticType MISSING_ENTRY_ERROR = compiler_1_expr2_line_91;

  int PROBE_START_LINE_95 = 97;

static final com.google.javascript.jscomp.DiagnosticType compiler_1_expr3_line_95 = DiagnosticType
		.error("JSC_MISSING_ENTRY_ERROR", "unknown module \"{0}\" specified in entry point spec");

int PROBE_END_LINE_95 = 97;

static final DiagnosticType MISSING_MODULE_ERROR = compiler_1_expr3_line_95;

  // Used in PerformanceTracker
  static final String PARSING_PASS_NAME = "parseInputs";

  private static final String CONFIG_RESOURCE =
      "com.google.javascript.jscomp.parsing.ParserConfig";

  CompilerOptions options = null;

  private PassConfig passes = null;

  // The externs inputs
  private List<CompilerInput> externs;

  // The JS source modules
  private List<JSModule> modules;

  // The graph of the JS source modules. Must be null if there are less than
  // 2 modules, because we use this as a signal for which passes to run.
  private JSModuleGraph moduleGraph;

  // The JS source inputs
  private List<CompilerInput> inputs;

  // error manager to which error management is delegated
  private ErrorManager errorManager;

  // Warnings guard for filtering warnings.
  private WarningsGuard warningsGuard;

  int PROBE_START_LINE_130 = 130;

private final LinkedHashMap<String, com.google.javascript.rhino.Node> compiler_1_expr4_line_130 = Maps
		.newLinkedHashMap();

int PROBE_END_LINE_130 = 130;

// Compile-time injected libraries. The node points to the last node of
  // the library, so code can be inserted after.
  private final Map<String, Node> injectedLibraries = compiler_1_expr4_line_130;

  // Parse tree root nodes
  Node externsRoot;
  Node jsRoot;
  Node externAndJsRoot;

  private Map<InputId, CompilerInput> inputsById;

  /** The source code map */
  private SourceMap sourceMap;

  /** The externs created from the exports.  */
  private String externExports = null;

  /**
   * Ids for function inlining so that each declared name remains
   * unique.
   */
  private int uniqueNameId = 0;

  /**
   * Whether to assume there are references to the RegExp Global object
   * properties.
   */
  private boolean hasRegExpGlobalReferences = true;

  /** The function information map */
  private FunctionInformationMap functionInformationMap;

  /** Debugging information */
  private final StringBuilder debugLog = new StringBuilder();

  /** Detects Google-specific coding conventions. */
  CodingConvention defaultCodingConvention = new ClosureCodingConvention();

  private JSTypeRegistry typeRegistry;
  private Config parserConfig = null;

  private ReverseAbstractInterpreter abstractInterpreter;
  private TypeValidator typeValidator;
  // The compiler can ask phaseOptimizer for things like which pass is currently
  // running, or which functions have been changed by optimizations
  private PhaseOptimizer phaseOptimizer = null;

  public PerformanceTracker tracker;

  // The oldErrorReporter exists so we can get errors from the JSTypeRegistry.
  private final com.google.javascript.rhino.ErrorReporter oldErrorReporter =
      RhinoErrorReporter.forOldRhino(this);

  // This error reporter gets the messages from the current Rhino parser.
  private final ErrorReporter defaultErrorReporter =
      RhinoErrorReporter.forNewRhino(this);

  int PROBE_START_LINE_185 = 188;

public static final com.google.javascript.jscomp.DiagnosticType compiler_1_expr9_line_186 = DiagnosticType
		.error("JSC_OPTIMIZE_LOOP_ERROR", "Exceeded max number of optimization iterations: {0}");

int PROBE_END_LINE_185 = 188;

/** Error strings used for reporting JSErrors */
  public static final DiagnosticType OPTIMIZE_LOOP_ERROR = compiler_1_expr9_line_186;
  public static final DiagnosticType MOTION_ITERATIONS_ERROR =
      DiagnosticType.error("JSC_OPTIMIZE_LOOP_ERROR",
          "Exceeded max number of code motion iterations: {0}");

  // We use many recursive algorithms that use O(d) memory in the depth
  // of the tree.
  private static final long COMPILER_STACK_SIZE = (1 << 21); // About 2MB

  int PROBE_START_LINE_197 = 210;

private static final java.util.concurrent.ExecutorService compiler_1_expr11_line_206 = Executors
		.newCachedThreadPool(new ThreadFactory() {
			@Override
			public Thread newThread(Runnable r) {
				return new Thread(null, r, "jscompiler", COMPILER_STACK_SIZE);
			}
		});

int PROBE_END_LINE_197 = 210;

/**
   * Under JRE 1.6, the JS Compiler overflows the stack when running on some
   * large or complex JS code. When threads are available, we run all compile
   * jobs on a separate thread with a larger stack.
   *
   * That way, we don't have to increase the stack size for *every* thread
   * (which is what -Xss does).
   */
  private static final ExecutorService compilerExecutor =
      compiler_1_expr11_line_206;

  /**
   * Use a dedicated compiler thread per Compiler instance.
   */
  private Thread compilerThread = null;

  /** Whether to use threads. */
  private boolean useThreads = true;


  /**
   * Logger for the whole com.google.javascript.jscomp domain -
   * setting configuration for this logger affects all loggers
   *  in other classes within the compiler.
   */
  private static final Logger logger =
      Logger.getLogger("com.google.javascript.jscomp");

  private final PrintStream outStream;

  private GlobalVarReferenceMap globalRefMap = null;

  private volatile double progress = 0.0;
  private String lastPassName;

  /**
   * Creates a Compiler that reports errors and warnings to its logger.
   */
  public Compiler() {
    this((PrintStream) null);
  }

  /**
   * Creates a Compiler that reports errors and warnings to an output stream.
   */
  public Compiler(PrintStream stream) {
    int PROBE_START_LINE_247 = 247;
	com.google.javascript.jscomp.RecentChange f_recent_change_802_line_247 = recentChange;
	int PROBE_END_LINE_247 = 247;
	addChangeHandler(f_recent_change_802_line_247);
    int PROBE_START_LINE_248 = 248;
	java.io.PrintStream p_stream_801_line_248 = stream;
	int PROBE_END_LINE_248 = 248;
	outStream = p_stream_801_line_248;
  }

  /**
   * Creates a Compiler that uses a custom error manager.
   */
  public Compiler(ErrorManager errorManager) {
    this();
    setErrorManager(errorManager);
  }

  /**
   * Sets the error manager.
   *
   * @param errorManager the error manager, it cannot be {@code null}
   */
  public void setErrorManager(ErrorManager errorManager) {
    Preconditions.checkNotNull(
        errorManager, "the error manager cannot be null");
    int PROBE_START_LINE_267 = 267;
	com.google.javascript.jscomp.ErrorManager p_error_manager_805_line_267 = errorManager;
	int PROBE_END_LINE_267 = 267;
	this.errorManager = p_error_manager_805_line_267;
  }

  /**
   * Creates a message formatter instance corresponding to the value of
   * {@link CompilerOptions}.
   */
  private MessageFormatter createMessageFormatter() {
    int PROBE_START_LINE_275 = 275;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_275 = options;
	boolean compiler_1_expr22_line_275 = f_options_780_line_275.shouldColorizeErrorOutput();
	int PROBE_END_LINE_275 = 275;
	boolean colorize = compiler_1_expr22_line_275;
    int PROBE_START_LINE_276 = 276;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_276 = options;
	com.google.javascript.jscomp.ErrorFormat q_error_format_30_line_276 = f_options_780_line_276.errorFormat;
	boolean v_colorize_807_line_276 = colorize;
	com.google.javascript.jscomp.MessageFormatter compiler_1_expr23_line_276 = q_error_format_30_line_276
			.toFormatter(this, v_colorize_807_line_276);
	int PROBE_END_LINE_276 = 276;
	return compiler_1_expr23_line_276;
  }

  /**
   * Initialize the compiler options. Only necessary if you're not doing
   * a normal compile() job.
   */
  public void initOptions(CompilerOptions options) {
    int PROBE_START_LINE_284 = 284;
	com.google.javascript.jscomp.CompilerOptions p_options_809_line_284 = options;
	int PROBE_END_LINE_284 = 284;
	this.options = p_options_809_line_284;
    int PROBE_START_LINE_285 = 295;
	com.google.javascript.jscomp.ErrorManager f_error_manager_806_line_285 = errorManager;
	boolean compiler_1_expr28_line_285 = f_error_manager_806_line_285 == null;
	int PROBE_END_LINE_285 = 295;
	if (compiler_1_expr28_line_285) {
      int PROBE_START_LINE_286 = 294;
		java.io.PrintStream f_out_stream_803_line_286 = outStream;
		boolean compiler_1_expr29_line_286 = f_out_stream_803_line_286 == null;
		int PROBE_END_LINE_286 = 294;
	if (compiler_1_expr29_line_286) {
        setErrorManager(
            new LoggerErrorManager(createMessageFormatter(), logger));
      } else {
        PrintStreamErrorManager printer =
            new PrintStreamErrorManager(createMessageFormatter(), outStream);
        printer.setSummaryDetailLevel(options.summaryDetailLevel);
        setErrorManager(printer);
      }
    }

    reconcileOptionsWithGuards();

    int PROBE_START_LINE_300 = 300;
	List<WarningsGuard> compiler_1_expr33_line_300 = Lists.newArrayList();
	int PROBE_END_LINE_300 = 300;
	// Initialize the warnings guard.
    List<WarningsGuard> guards = compiler_1_expr33_line_300;
    int PROBE_START_LINE_301 = 303;
	List<com.google.javascript.jscomp.WarningsGuard> v_guards_810_line_301 = guards;
	int PROBE_END_LINE_301 = 303;
	v_guards_810_line_301.add(
        new SuppressDocWarningsGuard(
            getDiagnosticGroups().getRegisteredGroups()));
    int PROBE_START_LINE_304 = 304;
	List<com.google.javascript.jscomp.WarningsGuard> v_guards_810_line_304 = guards;
	com.google.javascript.jscomp.CompilerOptions p_options_809_line_304 = options;
	com.google.javascript.jscomp.WarningsGuard compiler_1_expr37_line_304 = p_options_809_line_304.getWarningsGuard();
	int PROBE_END_LINE_304 = 304;
	v_guards_810_line_304.add(compiler_1_expr37_line_304);

    int PROBE_START_LINE_306 = 306;
	List<com.google.javascript.jscomp.WarningsGuard> v_guards_810_line_306 = guards;
	int PROBE_END_LINE_306 = 306;
	this.warningsGuard = new ComposeWarningsGuard(v_guards_810_line_306);
  }

  /**
   * When the CompilerOptions and its WarningsGuard overlap, reconcile
   * any discrepencies.
   */
  protected void reconcileOptionsWithGuards() {
    int PROBE_START_LINE_315 = 327;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_315 = options;
	com.google.javascript.jscomp.DiagnosticGroup q_check_types_31_line_315 = DiagnosticGroups.CHECK_TYPES;
	boolean compiler_1_expr42_line_315 = f_options_780_line_315.enables(q_check_types_31_line_315);
	int PROBE_END_LINE_315 = 327;
	// DiagnosticGroups override the plain checkTypes option.
    if (compiler_1_expr42_line_315) {
      options.checkTypes = true;
    } else if (options.disables(DiagnosticGroups.CHECK_TYPES)) {
      options.checkTypes = false;
    } else if (!options.checkTypes) {
      // If DiagnosticGroups did not override the plain checkTypes
      // option, and checkTypes is enabled, then turn off the
      // parser type warnings.
      options.setWarningLevel(
          DiagnosticGroup.forType(
              RhinoErrorReporter.TYPE_PARSE_ERROR),
          CheckLevel.OFF);
    }

    int PROBE_START_LINE_329 = 334;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_329 = options;
	com.google.javascript.jscomp.CheckLevel q_check_global_this_level_33_line_329 = f_options_780_line_329.checkGlobalThisLevel;
	boolean compiler_1_expr45_line_329 = q_check_global_this_level_33_line_329.isOn();
	boolean compiler_1_expr44_line_329 = compiler_1_expr45_line_329 && !options.disables(DiagnosticGroups.GLOBAL_THIS);
	int PROBE_END_LINE_329 = 334;
	if (compiler_1_expr44_line_329) {
      options.setWarningLevel(
          DiagnosticGroups.GLOBAL_THIS,
          options.checkGlobalThisLevel);
    }

    int PROBE_START_LINE_336 = 340;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_336 = options;
	com.google.javascript.jscomp.CompilerOptions.LanguageMode compiler_1_expr47_line_336 = f_options_780_line_336
			.getLanguageIn();
	com.google.javascript.jscomp.CompilerOptions.LanguageMode q_ecmascript5_strict_34_line_336 = LanguageMode.ECMASCRIPT5_STRICT;
	boolean compiler_1_expr46_line_336 = compiler_1_expr47_line_336 == q_ecmascript5_strict_34_line_336;
	int PROBE_END_LINE_336 = 340;
	if (compiler_1_expr46_line_336) {
      options.setWarningLevel(
          DiagnosticGroups.ES5_STRICT,
          CheckLevel.ERROR);
    }

    int PROBE_START_LINE_347 = 351;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_347 = options;
	boolean q_check_symbols_35_line_347 = f_options_780_line_347.checkSymbols;
	boolean compiler_1_expr49_line_347 = !q_check_symbols_35_line_347;
	boolean compiler_1_expr48_line_347 = compiler_1_expr49_line_347
			&& !options.enables(DiagnosticGroups.CHECK_VARIABLES);
	int PROBE_END_LINE_347 = 351;
	// All passes must run the variable check. This synthesizes
    // variables later so that the compiler doesn't crash. It also
    // checks the externs file for validity. If you don't want to warn
    // about missing variable declarations, we shut that specific
    // error off.
    if (compiler_1_expr48_line_347) {
      options.setWarningLevel(
          DiagnosticGroups.CHECK_VARIABLES, CheckLevel.OFF);
    }
  }

  /**
   * Initializes the instance state needed for a compile job.
   * @deprecated Convert your arrays to lists and use the list-based API.
   */
  @Deprecated
  public void init(JSSourceFile[] externs, JSSourceFile[] inputs,
      CompilerOptions options) {
    init(Lists.<JSSourceFile>newArrayList(externs),
        Lists.<JSSourceFile>newArrayList(inputs), options);
  }

  /**
   * Initializes the instance state needed for a compile job.
   */
  public <T1 extends SourceFile, T2 extends SourceFile> void init(
      List<T1> externs,
      List<T2> inputs,
      CompilerOptions options) {
    int PROBE_START_LINE_372 = 372;
		String f_singleton_module_name_820_line_372 = SINGLETON_MODULE_NAME;
		int PROBE_END_LINE_372 = 372;
	JSModule module = new JSModule(f_singleton_module_name_820_line_372);
    int PROBE_START_LINE_373 = 375;
	List<T2> p_inputs_817_line_373 = inputs;
	int PROBE_END_LINE_373 = 375;
	for (SourceFile input : p_inputs_817_line_373) {
      int PROBE_START_LINE_374 = 374;
		com.google.javascript.jscomp.JSModule v_module_819_line_374 = module;
		com.google.javascript.jscomp.SourceFile v_input_821_line_374 = input;
		int PROBE_END_LINE_374 = 374;
	v_module_819_line_374.add(v_input_821_line_374);
    }

    int PROBE_START_LINE_377 = 377;
	List<T1> p_externs_816_line_377 = externs;
	com.google.javascript.jscomp.JSModule v_module_819_line_377 = module;
	ArrayList<com.google.javascript.jscomp.JSModule> compiler_1_expr53_line_377 = Lists
			.newArrayList(v_module_819_line_377);
	com.google.javascript.jscomp.CompilerOptions p_options_818_line_377 = options;
	int PROBE_END_LINE_377 = 377;
	initModules(p_externs_816_line_377, compiler_1_expr53_line_377, p_options_818_line_377);
  }

  /**
   * Initializes the instance state needed for a compile job if the sources
   * are in modules.
   * @deprecated Convert your arrays to lists and use the list-based API.
   */
  @Deprecated
  public void init(JSSourceFile[] externs, JSModule[] modules,
      CompilerOptions options) {
    initModules(Lists.<SourceFile>newArrayList(externs),
         Lists.<JSModule>newArrayList(modules), options);
  }

  /**
   * Initializes the instance state needed for a compile job if the sources
   * are in modules.
   */
  public <T extends SourceFile> void initModules(
      List<T> externs, List<JSModule> modules, CompilerOptions options) {
    int PROBE_START_LINE_398 = 398;
		com.google.javascript.jscomp.CompilerOptions p_options_827_line_398 = options;
		int PROBE_END_LINE_398 = 398;
	initOptions(p_options_827_line_398);

    int PROBE_START_LINE_400 = 400;
	List<com.google.javascript.jscomp.JSModule> p_modules_826_line_400 = modules;
	int PROBE_END_LINE_400 = 400;
	checkFirstModule(p_modules_826_line_400);
    int PROBE_START_LINE_401 = 401;
	List<com.google.javascript.jscomp.JSModule> p_modules_826_line_401 = modules;
	int PROBE_END_LINE_401 = 401;
	fillEmptyModules(p_modules_826_line_401);

    int PROBE_START_LINE_403 = 403;
	List<T> p_externs_825_line_403 = externs;
	List<com.google.javascript.jscomp.CompilerInput> compiler_1_expr59_line_403 = makeCompilerInput(
			p_externs_825_line_403, true);
	int PROBE_END_LINE_403 = 403;
	this.externs = compiler_1_expr59_line_403;

    int PROBE_START_LINE_407 = 407;
	List<com.google.javascript.jscomp.JSModule> p_modules_826_line_407 = modules;
	int PROBE_END_LINE_407 = 407;
	// Generate the module graph, and report any errors in the module
    // specification as errors.
    this.modules = p_modules_826_line_407;
    int PROBE_START_LINE_408 = 420;
	List<com.google.javascript.jscomp.JSModule> p_modules_826_line_408 = modules;
	int compiler_1_expr65_line_408 = p_modules_826_line_408.size();
	boolean compiler_1_expr64_line_408 = compiler_1_expr65_line_408 > 1;
	int PROBE_END_LINE_408 = 420;
	if (compiler_1_expr64_line_408) {
      try {
        this.moduleGraph = new JSModuleGraph(modules);
      } catch (JSModuleGraph.ModuleDependenceException e) {
        // problems with the module format.  Report as an error.  The
        // message gives all details.
        report(JSError.make(MODULE_DEPENDENCY_ERROR,
                e.getModule().getName(), e.getDependentModule().getName()));
        return;
      }
    } else {
      this.moduleGraph = null;
    }

    int PROBE_START_LINE_422 = 422;
	List<com.google.javascript.jscomp.JSModule> p_modules_826_line_422 = modules;
	List<com.google.javascript.jscomp.CompilerInput> compiler_1_expr71_line_422 = getAllInputsFromModules(
			p_modules_826_line_422);
	int PROBE_END_LINE_422 = 422;
	this.inputs = compiler_1_expr71_line_422;
    initBasedOnOptions();

    initInputsByIdMap();
  }

  /**
   * Do any initialization that is dependent on the compiler options.
   */
  private void initBasedOnOptions() {
    int PROBE_START_LINE_433 = 436;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_433 = options;
	String q_source_map_output_path_36_line_433 = f_options_780_line_433.sourceMapOutputPath;
	boolean compiler_1_expr75_line_433 = q_source_map_output_path_36_line_433 != null;
	int PROBE_END_LINE_433 = 436;
	// Create the source map if necessary.
    if (compiler_1_expr75_line_433) {
      sourceMap = options.sourceMapFormat.getInstance();
      sourceMap.setPrefixMappings(options.sourceMapLocationMappings);
    }
  }

  private <T extends SourceFile> List<CompilerInput> makeCompilerInput(
      List<T> files, boolean isExtern) {
    int PROBE_START_LINE_441 = 441;
		List<CompilerInput> compiler_1_expr76_line_441 = Lists.newArrayList();
		int PROBE_END_LINE_441 = 441;
	List<CompilerInput> inputs = compiler_1_expr76_line_441;
    int PROBE_START_LINE_442 = 444;
	List<T> p_files_832_line_442 = files;
	int PROBE_END_LINE_442 = 444;
	for (T file : p_files_832_line_442) {
      int PROBE_START_LINE_443 = 443;
		List<com.google.javascript.jscomp.CompilerInput> v_inputs_834_line_443 = inputs;
		T v_file_835_line_443 = file;
		boolean p_is_extern_833_line_443 = isExtern;
		int PROBE_END_LINE_443 = 443;
	v_inputs_834_line_443.add(new CompilerInput(v_file_835_line_443, p_is_extern_833_line_443));
    }
    int PROBE_START_LINE_445 = 445;
	List<com.google.javascript.jscomp.CompilerInput> v_inputs_834_line_445 = inputs;
	int PROBE_END_LINE_445 = 445;
	return v_inputs_834_line_445;
  }

  private static final DiagnosticType EMPTY_MODULE_LIST_ERROR =
      DiagnosticType.error("JSC_EMPTY_MODULE_LIST_ERROR",
          "At least one module must be provided");

  private static final DiagnosticType EMPTY_ROOT_MODULE_ERROR =
      DiagnosticType.error("JSC_EMPTY_ROOT_MODULE_ERROR",
          "Root module '{0}' must contain at least one source code input");

  /**
   * Verifies that at least one module has been provided and that the first one
   * has at least one source code input.
   */
  private void checkFirstModule(List<JSModule> modules) {
    int PROBE_START_LINE_461 = 467;
	List<com.google.javascript.jscomp.JSModule> p_modules_838_line_461 = modules;
	boolean compiler_1_expr81_line_461 = p_modules_838_line_461.isEmpty();
	int PROBE_END_LINE_461 = 467;
	if (compiler_1_expr81_line_461) {
      report(JSError.make(EMPTY_MODULE_LIST_ERROR));
    } else {
		int PROBE_START_LINE_463 = 467;
		List<com.google.javascript.jscomp.JSModule> p_modules_838_line_463 = modules;
		com.google.javascript.jscomp.JSModule compiler_1_expr85_line_463 = p_modules_838_line_463.get(0);
		List<com.google.javascript.jscomp.CompilerInput> compiler_1_expr84_line_463 = compiler_1_expr85_line_463
				.getInputs();
		boolean compiler_1_expr83_line_463 = compiler_1_expr84_line_463.isEmpty();
		boolean compiler_1_expr86_line_463 = true;
		if (compiler_1_expr83_line_463) {
			List<com.google.javascript.jscomp.JSModule> p_modules_838_line_463_v1 = modules;
			int compiler_1_expr87_line_463 = p_modules_838_line_463_v1.size();
			compiler_1_expr86_line_463 = compiler_1_expr87_line_463 > 1;
		}
		boolean compiler_1_expr82_line_463 = compiler_1_expr83_line_463 && compiler_1_expr86_line_463;
		int PROBE_END_LINE_463 = 467;
		if (compiler_1_expr82_line_463) {
			report(JSError.make(EMPTY_ROOT_MODULE_ERROR, modules.get(0).getName()));
		}
	}
  }

  /**
   * Empty modules get an empty "fill" file, so that we can move code into
   * an empty module.
   */
  static String createFillFileName(String moduleName) {
    return "[" + moduleName + "]";
  }

  /**
   * Fill any empty modules with a place holder file. It makes any cross module
   * motion easier.
   */
  private static void fillEmptyModules(List<JSModule> modules) {
    int PROBE_START_LINE_483 = 488;
	List<com.google.javascript.jscomp.JSModule> p_modules_840_line_483 = modules;
	int PROBE_END_LINE_483 = 488;
	for (JSModule module : p_modules_840_line_483) {
      int PROBE_START_LINE_484 = 487;
		com.google.javascript.jscomp.JSModule v_module_841_line_484 = module;
		List<com.google.javascript.jscomp.CompilerInput> compiler_1_expr89_line_484 = v_module_841_line_484.getInputs();
		boolean compiler_1_expr88_line_484 = compiler_1_expr89_line_484.isEmpty();
		int PROBE_END_LINE_484 = 487;
	if (compiler_1_expr88_line_484) {
        module.add(SourceFile.fromCode(
            createFillFileName(module.getName()), ""));
      }
    }
  }

  /**
   * Rebuilds the internal list of inputs by iterating over all modules.
   * This is necessary if inputs have been added to or removed from a module
   * after the {@link #init(List, List, CompilerOptions)} call.
   */
  public void rebuildInputsFromModules() {
    inputs = getAllInputsFromModules(modules);
    initInputsByIdMap();
  }

  /**
   * Builds a single list of all module inputs. Verifies that it contains no
   * duplicates.
   */
  private static List<CompilerInput> getAllInputsFromModules(
      List<JSModule> modules) {
    int PROBE_START_LINE_507 = 507;
		List<CompilerInput> compiler_1_expr90_line_507 = Lists.newArrayList();
		int PROBE_END_LINE_507 = 507;
	List<CompilerInput> inputs = compiler_1_expr90_line_507;
    int PROBE_START_LINE_508 = 508;
	Map<String, JSModule> compiler_1_expr91_line_508 = Maps.newHashMap();
	int PROBE_END_LINE_508 = 508;
	Map<String, JSModule> inputMap = compiler_1_expr91_line_508;
    int PROBE_START_LINE_509 = 519;
	List<com.google.javascript.jscomp.JSModule> p_modules_842_line_509 = modules;
	int PROBE_END_LINE_509 = 519;
	for (JSModule module : p_modules_842_line_509) {
      int PROBE_START_LINE_510 = 518;
		com.google.javascript.jscomp.JSModule v_module_845_line_510 = module;
		List<com.google.javascript.jscomp.CompilerInput> compiler_1_expr92_line_510 = v_module_845_line_510.getInputs();
		int PROBE_END_LINE_510 = 518;
	for (CompilerInput input : compiler_1_expr92_line_510) {
        int PROBE_START_LINE_511 = 511;
		com.google.javascript.jscomp.CompilerInput v_input_846_line_511 = input;
		String compiler_1_expr93_line_511 = v_input_846_line_511.getName();
		int PROBE_END_LINE_511 = 511;
		String inputName = compiler_1_expr93_line_511;

        int PROBE_START_LINE_516 = 516;
		List<com.google.javascript.jscomp.CompilerInput> v_inputs_843_line_516 = inputs;
		com.google.javascript.jscomp.CompilerInput v_input_846_line_516 = input;
		int PROBE_END_LINE_516 = 516;
		// NOTE(nicksantos): If an input is in more than one module,
        // it will show up twice in the inputs list, and then we
        // will get an error down the line.
        v_inputs_843_line_516.add(v_input_846_line_516);
        int PROBE_START_LINE_517 = 517;
		Map<String, com.google.javascript.jscomp.JSModule> v_input_map_844_line_517 = inputMap;
		String v_input_name_847_line_517 = inputName;
		com.google.javascript.jscomp.JSModule v_module_845_line_517 = module;
		int PROBE_END_LINE_517 = 517;
		v_input_map_844_line_517.put(v_input_name_847_line_517, v_module_845_line_517);
      }
    }
    int PROBE_START_LINE_520 = 520;
	List<com.google.javascript.jscomp.CompilerInput> v_inputs_843_line_520 = inputs;
	int PROBE_END_LINE_520 = 520;
	return v_inputs_843_line_520;
  }

  static final DiagnosticType DUPLICATE_INPUT =
      DiagnosticType.error("JSC_DUPLICATE_INPUT", "Duplicate input: {0}");
  static final DiagnosticType DUPLICATE_EXTERN_INPUT =
      DiagnosticType.error("JSC_DUPLICATE_EXTERN_INPUT",
          "Duplicate extern input: {0}");

  /**
   * Creates a map to make looking up an input by name fast. Also checks for
   * duplicate inputs.
   */
  void initInputsByIdMap() {
    inputsById = new HashMap<InputId, CompilerInput>();
    int PROBE_START_LINE_535 = 541;
	List<com.google.javascript.jscomp.CompilerInput> f_externs_828_line_535 = externs;
	int PROBE_END_LINE_535 = 541;
	for (CompilerInput input : f_externs_828_line_535) {
      int PROBE_START_LINE_536 = 536;
		com.google.javascript.jscomp.CompilerInput v_input_851_line_536 = input;
		InputId compiler_1_expr100_line_536 = v_input_851_line_536.getInputId();
		int PROBE_END_LINE_536 = 536;
	InputId id = compiler_1_expr100_line_536;
      int PROBE_START_LINE_537 = 537;
	com.google.javascript.rhino.InputId v_id_852_line_537 = id;
	com.google.javascript.jscomp.CompilerInput v_input_851_line_537 = input;
	CompilerInput compiler_1_expr101_line_537 = putCompilerInput(v_id_852_line_537, v_input_851_line_537);
	int PROBE_END_LINE_537 = 537;
	CompilerInput previous = compiler_1_expr101_line_537;
      int PROBE_START_LINE_538 = 540;
	com.google.javascript.jscomp.CompilerInput v_previous_853_line_538 = previous;
	boolean compiler_1_expr102_line_538 = v_previous_853_line_538 != null;
	int PROBE_END_LINE_538 = 540;
	if (compiler_1_expr102_line_538) {
        report(JSError.make(DUPLICATE_EXTERN_INPUT, input.getName()));
      }
    }
    int PROBE_START_LINE_542 = 548;
	List<com.google.javascript.jscomp.CompilerInput> f_inputs_831_line_542 = inputs;
	int PROBE_END_LINE_542 = 548;
	for (CompilerInput input : f_inputs_831_line_542) {
      int PROBE_START_LINE_543 = 543;
		com.google.javascript.jscomp.CompilerInput v_input_854_line_543 = input;
		InputId compiler_1_expr103_line_543 = v_input_854_line_543.getInputId();
		int PROBE_END_LINE_543 = 543;
	InputId id = compiler_1_expr103_line_543;
      int PROBE_START_LINE_544 = 544;
	com.google.javascript.rhino.InputId v_id_855_line_544 = id;
	com.google.javascript.jscomp.CompilerInput v_input_854_line_544 = input;
	CompilerInput compiler_1_expr104_line_544 = putCompilerInput(v_id_855_line_544, v_input_854_line_544);
	int PROBE_END_LINE_544 = 544;
	CompilerInput previous = compiler_1_expr104_line_544;
      int PROBE_START_LINE_545 = 547;
	com.google.javascript.jscomp.CompilerInput v_previous_856_line_545 = previous;
	boolean compiler_1_expr105_line_545 = v_previous_856_line_545 != null;
	int PROBE_END_LINE_545 = 547;
	if (compiler_1_expr105_line_545) {
        report(JSError.make(DUPLICATE_INPUT, input.getName()));
      }
    }
  }

  public Result compile(
      SourceFile extern, SourceFile input, CompilerOptions options) {
     return compile(Lists.newArrayList(extern), Lists.newArrayList(input), options);
  }

  /**
   * @deprecated Convert your arrays to lists and use the list-based API.
   */
  @Deprecated
  public Result compile(
      SourceFile extern, JSSourceFile[] input, CompilerOptions options) {
     return compile(Lists.newArrayList(extern), Lists.newArrayList(input), options);
  }

  /**
   * @deprecated Convert your arrays to lists and use the list-based
   *     compileModules method.
   */
  @Deprecated
  public Result compile(
      JSSourceFile extern, JSModule[] modules, CompilerOptions options) {
     return compileModules(
         Lists.newArrayList(extern), Lists.newArrayList(modules), options);
  }

  /**
   * Compiles a list of inputs.
   * @deprecated Convert your arrays to lists and use the list-based compile
   *     method.
   */
  @Deprecated
  public Result compile(JSSourceFile[] externs,
                        JSSourceFile[] inputs,
                        CompilerOptions options) {
    return compile(Lists.<SourceFile>newArrayList(externs),
        Lists.<SourceFile>newArrayList(inputs),
        options);
  }

  /**
   * Compiles a list of inputs.
   */
  public <T1 extends SourceFile, T2 extends SourceFile> Result compile(
      List<T1> externs, List<T2> inputs, CompilerOptions options) {
    // The compile method should only be called once.
    Preconditions.checkState(jsRoot == null);

    try {
      init(externs, inputs, options);
      if (hasErrors()) {
        return getResult();
      }
      return compile();
    } finally {
      Tracer t = newTracer("generateReport");
      errorManager.generateReport();
      stopTracer(t, "generateReport");
    }
  }

  /**
   * Compiles a list of modules.
   * @deprecated Convert your arrays to lists and use the list-based
   *     compileModules method.
   */
  @Deprecated
  public Result compile(JSSourceFile[] externs,
                        JSModule[] modules,
                        CompilerOptions options) {
    return compileModules(Lists.<SourceFile>newArrayList(externs),
        Lists.<JSModule>newArrayList(modules),
        options);
  }

  /**
   * Compiles a list of modules.
   */
  public <T extends SourceFile> Result compileModules(List<T> externs,
      List<JSModule> modules, CompilerOptions options) {
    // The compile method should only be called once.
    Preconditions.checkState(jsRoot == null);

    try {
      initModules(externs, modules, options);
      if (hasErrors()) {
        return getResult();
      }
      return compile();
    } finally {
      Tracer t = newTracer("generateReport");
      errorManager.generateReport();
      stopTracer(t, "generateReport");
    }
  }

  private Result compile() {
    return runInCompilerThread(new Callable<Result>() {
      @Override
      public Result call() throws Exception {
        compileInternal();
        return getResult();
      }
    });
  }

  /**
   * Disable threads. This is for clients that run on AppEngine and
   * don't have threads.
   */
  public void disableThreads() {
    useThreads = false;
  }

  @SuppressWarnings("unchecked")
  <T> T runInCompilerThread(final Callable<T> callable) {
    final boolean dumpTraceReport = options != null && options.tracer.isOn();
    T result = null;
    final Throwable[] exception = new Throwable[1];
    Callable<T> bootCompilerThread = new Callable<T>() {
      @Override
      public T call() {
        try {
          compilerThread = Thread.currentThread();
          if (dumpTraceReport) {
            Tracer.initCurrentThreadTrace();
          }
          return callable.call();
        } catch (Throwable e) {
          exception[0] = e;
        } finally {
          compilerThread = null;
          if (dumpTraceReport) {
            Tracer.logAndClearCurrentThreadTrace();
            tracker.outputTracerReport(outStream == null ?
                System.out : outStream);
          }
        }
        return null;
      }
    };

    Preconditions.checkState(
        compilerThread == null || compilerThread == Thread.currentThread(),
        "Please do not share the Compiler across threads");

    // If the compiler thread is available, use it.
    if (useThreads && compilerThread == null) {
      try {
        result = compilerExecutor.submit(bootCompilerThread).get();
      } catch (InterruptedException e) {
        throw Throwables.propagate(e);
      } catch (ExecutionException e) {
        throw Throwables.propagate(e);
      }
    } else {
      try {
        result = callable.call();
      } catch (Exception e) {
        exception[0] = e;
      }
    }

    // Pass on any exception caught by the runnable object.
    if (exception[0] != null) {
      throw new RuntimeException(exception[0]);
    }

    return result;
  }

  private void compileInternal() {
    setProgress(0.0, null);
    parse();
    // 15 percent of the work is assumed to be for parsing (based on some
    // minimal analysis on big JS projects, of course this depends on options)
    setProgress(0.15, "parse");
    if (hasErrors()) {
      return;
    }

    if (!precheck()) {
      return;
    }

    if (options.nameAnonymousFunctionsOnly) {
      // TODO(nicksantos): Move this into an instrument() phase maybe?
      check();
      return;
    }

    if (!options.skipAllPasses) {
      check();
      if (hasErrors()) {
        return;
      }

      // IDE-mode is defined to stop here, before the heavy rewriting begins.
      if (!options.ideMode) {
        optimize();
      }
    }

    if (options.recordFunctionInformation) {
      recordFunctionInformation();
    }

    if (options.devMode == DevMode.START_AND_END) {
      runSanityCheck();
    }
    setProgress(1.0, "recordFunctionInformation");
  }

  public void parse() {
    parseInputs();
  }

  PassConfig getPassConfig() {
    if (passes == null) {
      passes = createPassConfigInternal();
    }
    return passes;
  }

  /**
   * Create the passes object. Clients should use setPassConfig instead of
   * overriding this.
   */
  PassConfig createPassConfigInternal() {
    return new DefaultPassConfig(options);
  }

  /**
   * @param passes The PassConfig to use with this Compiler.
   * @throws NullPointerException if passes is null
   * @throws IllegalStateException if this.passes has already been assigned
   */
  public void setPassConfig(PassConfig passes) {
    // Important to check for null because if setPassConfig(null) is
    // called before this.passes is set, getPassConfig() will create a
    // new PassConfig object and use that, which is probably not what
    // the client wanted since he or she probably meant to use their
    // own PassConfig object.
    Preconditions.checkNotNull(passes);

    if (this.passes != null) {
      throw new IllegalStateException("this.passes has already been assigned");
    }
    this.passes = passes;
  }

  /**
   * Carry out any special checks or procedures that need to be done before
   * proceeding with rest of the compilation process.
   *
   * @return true, to continue with compilation
   */
  boolean precheck() {
    return true;
  }

  public void check() {
    runCustomPasses(CustomPassExecutionTime.BEFORE_CHECKS);

    // We are currently only interested in check-passes for progress reporting
    // as it is used for IDEs, that's why the maximum progress is set to 1.0.
    phaseOptimizer = new PhaseOptimizer(this, tracker,
        new PhaseOptimizer.ProgressRange(getProgress(), 1.0));
    if (options.devMode == DevMode.EVERY_PASS) {
      phaseOptimizer.setSanityCheck(sanityCheck);
    }
    if (options.getCheckDeterminism()) {
      phaseOptimizer.setPrintAstHashcodes(true);
    }
    phaseOptimizer.consume(getPassConfig().getChecks());
    phaseOptimizer.process(externsRoot, jsRoot);
    if (hasErrors()) {
      return;
    }

    // TODO(nicksantos): clean this up. The flow here is too hard to follow.
    if (options.nameAnonymousFunctionsOnly) {
      return;
    }

    if (options.removeTryCatchFinally) {
      removeTryCatchFinally();
    }

    if (options.getTweakProcessing().shouldStrip() ||
        !options.stripTypes.isEmpty() ||
        !options.stripNameSuffixes.isEmpty() ||
        !options.stripTypePrefixes.isEmpty() ||
        !options.stripNamePrefixes.isEmpty()) {
      stripCode(options.stripTypes, options.stripNameSuffixes,
          options.stripTypePrefixes, options.stripNamePrefixes);
    }

    runCustomPasses(CustomPassExecutionTime.BEFORE_OPTIMIZATIONS);
    phaseOptimizer = null;
  }

  private void externExports() {
    logger.fine("Creating extern file for exports");
    startPass("externExports");

    ExternExportsPass pass = new ExternExportsPass(this);
    process(pass);

    externExports = pass.getGeneratedExterns();

    endPass();
  }

  @Override
  void process(CompilerPass p) {
    p.process(externsRoot, jsRoot);
  }

  private final PassFactory sanityCheck =
      new PassFactory("sanityCheck", false) {
    @Override
    protected CompilerPass create(AbstractCompiler compiler) {
      return new SanityCheck(compiler);
    }
  };

  private void maybeSanityCheck() {
    if (options.devMode == DevMode.EVERY_PASS) {
      runSanityCheck();
    }
  }

  private void runSanityCheck() {
    sanityCheck.create(this).process(externsRoot, jsRoot);
  }

  /**
   * Removes try/catch/finally statements for easier debugging.
   */
  void removeTryCatchFinally() {
    logger.fine("Remove try/catch/finally");
    startPass("removeTryCatchFinally");
    RemoveTryCatch r = new RemoveTryCatch(this);
    process(r);
    endPass();
  }

  /**
   * Strips code for smaller compiled code. This is useful for removing debug
   * statements to prevent leaking them publicly.
   */
  void stripCode(Set<String> stripTypes, Set<String> stripNameSuffixes,
      Set<String> stripTypePrefixes, Set<String> stripNamePrefixes) {
    logger.fine("Strip code");
    startPass("stripCode");
    StripCode r = new StripCode(this, stripTypes, stripNameSuffixes,
        stripTypePrefixes, stripNamePrefixes);
    if (options.getTweakProcessing().shouldStrip()) {
      r.enableTweakStripping();
    }
    process(r);
    endPass();
  }

  /**
   * Runs custom passes that are designated to run at a particular time.
   */
  private void runCustomPasses(CustomPassExecutionTime executionTime) {
    if (options.customPasses != null) {
      Tracer t = newTracer("runCustomPasses");
      try {
        for (CompilerPass p : options.customPasses.get(executionTime)) {
          process(p);
        }
      } finally {
        stopTracer(t, "runCustomPasses");
      }
    }
  }

  private Tracer currentTracer = null;
  private String currentPassName = null;

  /**
   * Marks the beginning of a pass.
   */
  void startPass(String passName) {
    Preconditions.checkState(currentTracer == null);
    currentPassName = passName;
    currentTracer = newTracer(passName);
  }

  /**
   * Marks the end of a pass.
   */
  void endPass() {
    Preconditions.checkState(currentTracer != null,
        "Tracer should not be null at the end of a pass.");
    stopTracer(currentTracer, currentPassName);
    currentPassName = null;
    currentTracer = null;

    maybeSanityCheck();
  }

  /**
   * Returns a new tracer for the given pass name.
   */
  Tracer newTracer(String passName) {
    int PROBE_START_LINE_960 = 961;
	String p_pass_name_891_line_960 = passName;
	String compiler_1_expr107_line_960 = p_pass_name_891_line_960
			+ (recentChange.hasCodeChanged() ? " on recently changed AST" : "");
	int PROBE_END_LINE_960 = 961;
	String comment = compiler_1_expr107_line_960;
    int PROBE_START_LINE_962 = 964;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_962 = options;
	com.google.javascript.jscomp.CompilerOptions.TracerMode q_tracer_37_line_962 = f_options_780_line_962.tracer;
	boolean compiler_1_expr108_line_962 = q_tracer_37_line_962.isOn();
	int PROBE_END_LINE_962 = 964;
	if (compiler_1_expr108_line_962) {
      tracker.recordPassStart(passName, true);
    }
    int PROBE_START_LINE_965 = 965;
	String v_comment_892_line_965 = comment;
	int PROBE_END_LINE_965 = 965;
	return new Tracer("Compiler", v_comment_892_line_965);
  }

  void stopTracer(Tracer t, String passName) {
    int PROBE_START_LINE_969 = 969;
	com.google.javascript.jscomp.Tracer p_t_894_line_969 = t;
	long compiler_1_expr110_line_969 = p_t_894_line_969.stop();
	int PROBE_END_LINE_969 = 969;
	long result = compiler_1_expr110_line_969;
    int PROBE_START_LINE_970 = 972;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_970 = options;
	com.google.javascript.jscomp.CompilerOptions.TracerMode q_tracer_38_line_970 = f_options_780_line_970.tracer;
	boolean compiler_1_expr111_line_970 = q_tracer_38_line_970.isOn();
	int PROBE_END_LINE_970 = 972;
	if (compiler_1_expr111_line_970) {
      tracker.recordPassStop(passName, result);
    }
  }

  /**
   * Returns the result of the compilation.
   */
  public Result getResult() {
    PassConfig.State state = getPassConfig().getIntermediateState();
    return new Result(getErrors(), getWarnings(), debugLog.toString(),
        state.variableMap, state.propertyMap,
        state.anonymousFunctionNameMap, state.stringMap, functionInformationMap,
        sourceMap, externExports, state.cssNames, state.idGeneratorMap);
  }

  /**
   * Returns an array constructed from errors + temporary warnings.
   */
  public JSError[] getMessages() {
    return getErrors();
  }

  /**
   * Returns the array of errors (never null).
   */
  public JSError[] getErrors() {
    int PROBE_START_LINE_997 = 997;
	com.google.javascript.jscomp.ErrorManager f_error_manager_806_line_997 = errorManager;
	com.google.javascript.jscomp.JSError[] compiler_1_expr112_line_997 = f_error_manager_806_line_997.getErrors();
	int PROBE_END_LINE_997 = 997;
	return compiler_1_expr112_line_997;
  }

  /**
   * Returns the array of warnings (never null).
   */
  public JSError[] getWarnings() {
    int PROBE_START_LINE_1004 = 1004;
	com.google.javascript.jscomp.ErrorManager f_error_manager_806_line_1004 = errorManager;
	com.google.javascript.jscomp.JSError[] compiler_1_expr113_line_1004 = f_error_manager_806_line_1004.getWarnings();
	int PROBE_END_LINE_1004 = 1004;
	return compiler_1_expr113_line_1004;
  }

  @Override
  public Node getRoot() {
    return externAndJsRoot;
  }

  /**
   * Creates a new id for making unique names.
   */
  private int nextUniqueNameId() {
    return uniqueNameId++;
  }

  /**
   * Resets the unique name id counter
   */
  @VisibleForTesting
  void resetUniqueNameId() {
    uniqueNameId = 0;
  }

  @Override
  Supplier<String> getUniqueNameIdSupplier() {
    final Compiler self = this;
    return new Supplier<String>() {
      @Override
      public String get() {
        return String.valueOf(self.nextUniqueNameId());
      }
    };
  }

  @Override
  boolean areNodesEqualForInlining(Node n1, Node n2) {
    if (options.ambiguateProperties ||
        options.disambiguateProperties) {
      // The type based optimizations require that type information is preserved
      // during other optimizations.
      return n1.isEquivalentToTyped(n2);
    } else {
      return n1.isEquivalentTo(n2);
    }
  }

  //------------------------------------------------------------------------
  // Inputs
  //------------------------------------------------------------------------

  // TODO(nicksantos): Decide which parts of these belong in an AbstractCompiler
  // interface, and which ones should always be injected.

  @Override
  public CompilerInput getInput(InputId id) {
    int PROBE_START_LINE_1059 = 1059;
	Map<com.google.javascript.rhino.InputId, com.google.javascript.jscomp.CompilerInput> f_inputs_by_id_850_line_1059 = inputsById;
	com.google.javascript.rhino.InputId p_id_899_line_1059 = id;
	com.google.javascript.jscomp.CompilerInput compiler_1_expr114_line_1059 = f_inputs_by_id_850_line_1059
			.get(p_id_899_line_1059);
	int PROBE_END_LINE_1059 = 1059;
	return compiler_1_expr114_line_1059;
  }

  /**
   * Removes an input file from AST.
   * @param id The id of the input to be removed.
   */
  protected void removeExternInput(InputId id) {
    CompilerInput input = getInput(id);
    if (input == null) {
      return;
    }
    Preconditions.checkState(input.isExtern(), "Not an extern input: %s", input.getName());
    inputsById.remove(id);
    externs.remove(input);
    Node root = input.getAstRoot(this);
    if (root != null) {
      root.detachFromParent();
    }
  }

  @Override
  public CompilerInput newExternInput(String name) {
    SourceAst ast = new SyntheticAst(name);
    if (inputsById.containsKey(ast.getInputId())) {
      throw new IllegalArgumentException("Conflicting externs name: " + name);
    }
    CompilerInput input = new CompilerInput(ast, true);
    putCompilerInput(input.getInputId(), input);
    externsRoot.addChildToFront(ast.getAstRoot(this));
    externs.add(0, input);
    return input;
  }

  private CompilerInput putCompilerInput(InputId id, CompilerInput input) {
    int PROBE_START_LINE_1094 = 1094;
	com.google.javascript.jscomp.CompilerInput p_input_903_line_1094 = input;
	int PROBE_END_LINE_1094 = 1094;
	p_input_903_line_1094.setCompiler(this);
    int PROBE_START_LINE_1095 = 1095;
	Map<com.google.javascript.rhino.InputId, com.google.javascript.jscomp.CompilerInput> f_inputs_by_id_850_line_1095 = inputsById;
	com.google.javascript.rhino.InputId p_id_902_line_1095 = id;
	com.google.javascript.jscomp.CompilerInput p_input_903_line_1095 = input;
	com.google.javascript.jscomp.CompilerInput compiler_1_expr117_line_1095 = f_inputs_by_id_850_line_1095
			.put(p_id_902_line_1095, p_input_903_line_1095);
	int PROBE_END_LINE_1095 = 1095;
	return compiler_1_expr117_line_1095;
  }

  /** Add a source input dynamically. Intended for incremental compilation. */
  void addIncrementalSourceAst(JsAst ast) {
    InputId id = ast.getInputId();
    Preconditions.checkState(getInput(id) == null, "Duplicate input %s", id.getIdName());
    putCompilerInput(id, new CompilerInput(ast));
  }

  /**
   * Replace a source input dynamically. Intended for incremental
   * re-compilation.
   *
   * If the new source input doesn't parse, then keep the old input
   * in the AST and return false.
   *
   * @return Whether the new AST was attached successfully.
   */
  boolean replaceIncrementalSourceAst(JsAst ast) {
    CompilerInput oldInput = getInput(ast.getInputId());
    Preconditions.checkNotNull(oldInput, "No input to replace: %s", ast.getInputId().getIdName());
    Node newRoot = ast.getAstRoot(this);
    if (newRoot == null) {
      return false;
    }

    Node oldRoot = oldInput.getAstRoot(this);
    if (oldRoot != null) {
      oldRoot.getParent().replaceChild(oldRoot, newRoot);
    } else {
      getRoot().getLastChild().addChildToBack(newRoot);
    }

    CompilerInput newInput = new CompilerInput(ast);
    putCompilerInput(ast.getInputId(), newInput);

    JSModule module = oldInput.getModule();
    if (module != null) {
      module.addAfter(newInput, oldInput);
      module.remove(oldInput);
    }

    // Verify the input id is set properly.
    Preconditions.checkState(
        newInput.getInputId().equals(oldInput.getInputId()));
    InputId inputIdOnAst = newInput.getAstRoot(this).getInputId();
    Preconditions.checkState(newInput.getInputId().equals(inputIdOnAst));

    inputs.remove(oldInput);
    return true;
  }

  /**
   * Add a new source input dynamically. Intended for incremental compilation.
   * <p>
   * If the new source input doesn't parse, it will not be added, and a false
   * will be returned.
   *
   * @param ast the JS Source to add.
   * @return true if the source was added successfully, false otherwise.
   * @throws IllegalStateException if an input for this ast already exists.
   */
  boolean addNewSourceAst(JsAst ast) {
    CompilerInput oldInput = getInput(ast.getInputId());
    if (oldInput != null) {
      throw new IllegalStateException(
          "Input already exists: " + ast.getInputId().getIdName());
    }
    Node newRoot = ast.getAstRoot(this);
    if (newRoot == null) {
      return false;
    }

    getRoot().getLastChild().addChildToBack(newRoot);

    CompilerInput newInput = new CompilerInput(ast);

    // TODO(tylerg): handle this for multiple modules at some point.
    if (moduleGraph == null && !modules.isEmpty()) {
      // singleton module
      modules.get(0).add(newInput);
    }

    putCompilerInput(ast.getInputId(), newInput);

    return true;
  }

  @Override
  JSModuleGraph getModuleGraph() {
    return moduleGraph;
  }

  /**
   * Gets a module graph. This will always return a module graph, even
   * in the degenerate case when there's only one module.
   */
  JSModuleGraph getDegenerateModuleGraph() {
    return moduleGraph == null ? new JSModuleGraph(modules) : moduleGraph;
  }

  @Override
  public JSTypeRegistry getTypeRegistry() {
    int PROBE_START_LINE_1199 = 1201;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_907_line_1199 = typeRegistry;
	boolean compiler_1_expr118_line_1199 = f_type_registry_907_line_1199 == null;
	int PROBE_END_LINE_1199 = 1201;
	if (compiler_1_expr118_line_1199) {
      int PROBE_START_LINE_1200 = 1200;
		com.google.javascript.rhino.ErrorReporter f_old_error_reporter_790_line_1200 = oldErrorReporter;
		com.google.javascript.jscomp.CompilerOptions f_options_780_line_1200 = options;
		boolean q_loose_types_38_line_1200 = f_options_780_line_1200.looseTypes;
		int PROBE_END_LINE_1200 = 1200;
	typeRegistry = new JSTypeRegistry(f_old_error_reporter_790_line_1200, q_loose_types_38_line_1200);
    }
    int PROBE_START_LINE_1202 = 1202;
	com.google.javascript.rhino.jstype.JSTypeRegistry f_type_registry_907_line_1202 = typeRegistry;
	int PROBE_END_LINE_1202 = 1202;
	return f_type_registry_907_line_1202;
  }

  @Override
  public MemoizedScopeCreator getTypedScopeCreator() {
    return getPassConfig().getTypedScopeCreator();
  }

  @SuppressWarnings("unchecked")
  DefaultPassConfig ensureDefaultPassConfig() {
    PassConfig passes = getPassConfig().getBasePassConfig();
    Preconditions.checkState(passes instanceof DefaultPassConfig,
        "PassConfigs must eventually delegate to the DefaultPassConfig");
    return (DefaultPassConfig) passes;
  }

  public SymbolTable buildKnownSymbolTable() {
    SymbolTable symbolTable = new SymbolTable(getTypeRegistry());

    MemoizedScopeCreator typedScopeCreator = getTypedScopeCreator();
    if (typedScopeCreator != null) {
      symbolTable.addScopes(typedScopeCreator.getAllMemoizedScopes());
      symbolTable.addSymbolsFrom(typedScopeCreator);
    } else {
      symbolTable.findScopes(this, externsRoot, jsRoot);
    }

    GlobalNamespace globalNamespace =
        ensureDefaultPassConfig().getGlobalNamespace();
    if (globalNamespace != null) {
      symbolTable.addSymbolsFrom(globalNamespace);
    }

    ReferenceCollectingCallback refCollector =
        new ReferenceCollectingCallback(
            this, ReferenceCollectingCallback.DO_NOTHING_BEHAVIOR);
    NodeTraversal.traverse(this, getRoot(), refCollector);
    symbolTable.addSymbolsFrom(refCollector);

    PreprocessorSymbolTable preprocessorSymbolTable =
        ensureDefaultPassConfig().getPreprocessorSymbolTable();
    if (preprocessorSymbolTable != null) {
      symbolTable.addSymbolsFrom(preprocessorSymbolTable);
    }

    symbolTable.fillNamespaceReferences();
    symbolTable.fillPropertyScopes();
    symbolTable.fillThisReferences(this, externsRoot, jsRoot);
    symbolTable.fillPropertySymbols(this, externsRoot, jsRoot);
    symbolTable.fillJSDocInfo(this, externsRoot, jsRoot);

    return symbolTable;
  }

  @Override
  public Scope getTopScope() {
    return getPassConfig().getTopScope();
  }

  @Override
  public ReverseAbstractInterpreter getReverseAbstractInterpreter() {
    int PROBE_START_LINE_1263 = 1273;
	com.google.javascript.jscomp.type.ReverseAbstractInterpreter f_abstract_interpreter_908_line_1263 = abstractInterpreter;
	boolean compiler_1_expr121_line_1263 = f_abstract_interpreter_908_line_1263 == null;
	int PROBE_END_LINE_1263 = 1273;
	if (compiler_1_expr121_line_1263) {
      ChainableReverseAbstractInterpreter interpreter =
          new SemanticReverseAbstractInterpreter(
              getCodingConvention(), getTypeRegistry());
      int PROBE_START_LINE_1267 = 1271;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1267 = options;
	boolean q_closure_pass_39_line_1267 = f_options_780_line_1267.closurePass;
	int PROBE_END_LINE_1267 = 1271;
	if (q_closure_pass_39_line_1267) {
        interpreter = new ClosureReverseAbstractInterpreter(
            getCodingConvention(), getTypeRegistry())
            .append(interpreter).getFirst();
      }
      int PROBE_START_LINE_1272 = 1272;
	com.google.javascript.jscomp.type.ChainableReverseAbstractInterpreter v_interpreter_909_line_1272 = interpreter;
	int PROBE_END_LINE_1272 = 1272;
	abstractInterpreter = v_interpreter_909_line_1272;
    }
    int PROBE_START_LINE_1274 = 1274;
	com.google.javascript.jscomp.type.ReverseAbstractInterpreter f_abstract_interpreter_908_line_1274 = abstractInterpreter;
	int PROBE_END_LINE_1274 = 1274;
	return f_abstract_interpreter_908_line_1274;
  }

  @Override
  TypeValidator getTypeValidator() {
    int PROBE_START_LINE_1279 = 1281;
	com.google.javascript.jscomp.TypeValidator f_type_validator_910_line_1279 = typeValidator;
	boolean compiler_1_expr124_line_1279 = f_type_validator_910_line_1279 == null;
	int PROBE_END_LINE_1279 = 1281;
	if (compiler_1_expr124_line_1279) {
      typeValidator = new TypeValidator(this);
    }
    int PROBE_START_LINE_1282 = 1282;
	com.google.javascript.jscomp.TypeValidator f_type_validator_910_line_1282 = typeValidator;
	int PROBE_END_LINE_1282 = 1282;
	return f_type_validator_910_line_1282;
  }

  //------------------------------------------------------------------------
  // Parsing
  //------------------------------------------------------------------------

  /**
   * Parses the externs and main inputs.
   *
   * @return A synthetic root node whose two children are the externs root
   *     and the main root
   */
  Node parseInputs() {
    int PROBE_START_LINE_1296 = 1296;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1296 = options;
	com.google.javascript.jscomp.CompilerOptions.DevMode q_dev_mode_40_line_1296 = f_options_780_line_1296.devMode;
	com.google.javascript.jscomp.CompilerOptions.DevMode q_off_41_line_1296 = DevMode.OFF;
	boolean compiler_1_expr128_line_1296 = q_dev_mode_40_line_1296 != q_off_41_line_1296;
	int PROBE_END_LINE_1296 = 1296;
	boolean devMode = compiler_1_expr128_line_1296;

    int PROBE_START_LINE_1300 = 1302;
	com.google.javascript.rhino.Node f_externs_root_912_line_1300 = externsRoot;
	boolean compiler_1_expr129_line_1300 = f_externs_root_912_line_1300 != null;
	int PROBE_END_LINE_1300 = 1302;
	// If old roots exist (we are parsing a second time), detach each of the
    // individual file parse trees.
    if (compiler_1_expr129_line_1300) {
      externsRoot.detachChildren();
    }
    int PROBE_START_LINE_1303 = 1305;
	com.google.javascript.rhino.Node f_js_root_913_line_1303 = jsRoot;
	boolean compiler_1_expr130_line_1303 = f_js_root_913_line_1303 != null;
	int PROBE_END_LINE_1303 = 1305;
	if (compiler_1_expr130_line_1303) {
      jsRoot.detachChildren();
    }

    int PROBE_START_LINE_1308 = 1308;
	com.google.javascript.rhino.Node compiler_1_expr132_line_1308 = IR.block();
	int PROBE_END_LINE_1308 = 1308;
	// Parse main JS sources.
    jsRoot = compiler_1_expr132_line_1308;
    int PROBE_START_LINE_1309 = 1309;
	com.google.javascript.rhino.Node f_js_root_913_line_1309 = jsRoot;
	int PROBE_END_LINE_1309 = 1309;
	f_js_root_913_line_1309.setIsSyntheticBlock(true);

    int PROBE_START_LINE_1311 = 1311;
	com.google.javascript.rhino.Node compiler_1_expr135_line_1311 = IR.block();
	int PROBE_END_LINE_1311 = 1311;
	externsRoot = compiler_1_expr135_line_1311;
    int PROBE_START_LINE_1312 = 1312;
	com.google.javascript.rhino.Node f_externs_root_912_line_1312 = externsRoot;
	int PROBE_END_LINE_1312 = 1312;
	f_externs_root_912_line_1312.setIsSyntheticBlock(true);

    int PROBE_START_LINE_1314 = 1314;
	com.google.javascript.rhino.Node f_externs_root_912_line_1314 = externsRoot;
	com.google.javascript.rhino.Node f_js_root_913_line_1314 = jsRoot;
	com.google.javascript.rhino.Node compiler_1_expr138_line_1314 = IR.block(f_externs_root_912_line_1314,
			f_js_root_913_line_1314);
	int PROBE_END_LINE_1314 = 1314;
	externAndJsRoot = compiler_1_expr138_line_1314;
    int PROBE_START_LINE_1315 = 1315;
	com.google.javascript.rhino.Node f_extern_and_js_root_914_line_1315 = externAndJsRoot;
	int PROBE_END_LINE_1315 = 1315;
	f_extern_and_js_root_914_line_1315.setIsSyntheticBlock(true);

    int PROBE_START_LINE_1317 = 1320;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1317 = options;
	com.google.javascript.jscomp.CompilerOptions.TracerMode q_tracer_42_line_1317 = f_options_780_line_1317.tracer;
	boolean compiler_1_expr140_line_1317 = q_tracer_42_line_1317.isOn();
	int PROBE_END_LINE_1317 = 1320;
	if (compiler_1_expr140_line_1317) {
      tracker = new PerformanceTracker(jsRoot, options.tracer);
      addChangeHandler(tracker.getCodeChangeHandler());
    }

    int PROBE_START_LINE_1322 = 1322;
	String f_parsing_pass_name_916_line_1322 = PARSING_PASS_NAME;
	Tracer compiler_1_expr141_line_1322 = newTracer(f_parsing_pass_name_916_line_1322);
	int PROBE_END_LINE_1322 = 1322;
	Tracer tracer = compiler_1_expr141_line_1322;

    try {
      int PROBE_START_LINE_1326 = 1332;
		List<com.google.javascript.jscomp.CompilerInput> f_externs_828_line_1326 = externs;
		int PROBE_END_LINE_1326 = 1332;
	// Parse externs sources.
      for (CompilerInput input : f_externs_828_line_1326) {
        int PROBE_START_LINE_1327 = 1327;
		com.google.javascript.jscomp.CompilerInput v_input_917_line_1327 = input;
		Node compiler_1_expr142_line_1327 = v_input_917_line_1327.getAstRoot(this);
		int PROBE_END_LINE_1327 = 1327;
		Node n = compiler_1_expr142_line_1327;
        int PROBE_START_LINE_1328 = 1330;
		boolean compiler_1_expr144_line_1328 = hasErrors();
		int PROBE_END_LINE_1328 = 1330;
		if (compiler_1_expr144_line_1328) {
          return null;
        }
        int PROBE_START_LINE_1331 = 1331;
		com.google.javascript.rhino.Node f_externs_root_912_line_1331 = externsRoot;
		com.google.javascript.rhino.Node v_n_918_line_1331 = n;
		int PROBE_END_LINE_1331 = 1331;
		f_externs_root_912_line_1331.addChildToBack(v_n_918_line_1331);
      }

      int PROBE_START_LINE_1335 = 1337;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1335 = options;
	boolean q_transform_amdto_cjsmodules_42_line_1335 = f_options_780_line_1335.transformAMDToCJSModules;
	boolean q_process_common_jsmodules_43_line_1335 = false;
	if (!q_transform_amdto_cjsmodules_42_line_1335) {
		com.google.javascript.jscomp.CompilerOptions f_options_780_line_1335_v1 = options;
		q_process_common_jsmodules_43_line_1335 = f_options_780_line_1335_v1.processCommonJSModules;
	}
	boolean compiler_1_expr146_line_1335 = q_transform_amdto_cjsmodules_42_line_1335
			|| q_process_common_jsmodules_43_line_1335;
	int PROBE_END_LINE_1335 = 1337;
	// Modules inferred in ProcessCommonJS pass.
      if (compiler_1_expr146_line_1335) {
        processAMDAndCommonJSModules();
      }

      int PROBE_START_LINE_1339 = 1339;
	com.google.javascript.rhino.Node f_externs_root_912_line_1339 = externsRoot;
	int PROBE_END_LINE_1339 = 1339;
	hoistExterns(f_externs_root_912_line_1339);

      // Check if the sources need to be re-ordered.
      boolean staleInputs = false;
      int PROBE_START_LINE_1343 = 1372;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1343 = options;
	com.google.javascript.jscomp.DependencyOptions q_dependency_options_44_line_1343 = f_options_780_line_1343.dependencyOptions;
	boolean compiler_1_expr148_line_1343 = q_dependency_options_44_line_1343.needsManagement();
	int PROBE_END_LINE_1343 = 1372;
	if (compiler_1_expr148_line_1343) {
        for (CompilerInput input : inputs) {
          // Forward-declare all the provided types, so that they
          // are not flagged even if they are dropped from the process.
          for (String provide : input.getProvides()) {
            getTypeRegistry().forwardDeclareType(provide);
          }
        }

        try {
          inputs =
              (moduleGraph == null ? new JSModuleGraph(modules) : moduleGraph)
              .manageDependencies(options.dependencyOptions, inputs);
          staleInputs = true;
        } catch (CircularDependencyException e) {
          report(JSError.make(
              JSModule.CIRCULAR_DEPENDENCY_ERROR, e.getMessage()));
        } catch (MissingProvideException e) {
          report(JSError.make(
              MISSING_ENTRY_ERROR, e.getMessage()));
        } catch (JSModuleGraph.MissingModuleException e) {
          report(JSError.make(
              MISSING_MODULE_ERROR, e.getMessage()));
        }

        // If in IDE mode, we ignore the error and keep going.
        if (hasErrors()) {
          return null;
        }
      }

      hoistNoCompileFiles();

      int PROBE_START_LINE_1376 = 1378;
	boolean v_stale_inputs_919_line_1376 = staleInputs;
	int PROBE_END_LINE_1376 = 1378;
	if (v_stale_inputs_919_line_1376) {
        repartitionInputs();
      }

      int PROBE_START_LINE_1381 = 1410;
	List<com.google.javascript.jscomp.CompilerInput> f_inputs_831_line_1381 = inputs;
	int PROBE_END_LINE_1381 = 1410;
	// Build the AST.
      for (CompilerInput input : f_inputs_831_line_1381) {
        int PROBE_START_LINE_1382 = 1382;
		com.google.javascript.jscomp.CompilerInput v_input_921_line_1382 = input;
		Node compiler_1_expr150_line_1382 = v_input_921_line_1382.getAstRoot(this);
		int PROBE_END_LINE_1382 = 1382;
		Node n = compiler_1_expr150_line_1382;
        int PROBE_START_LINE_1383 = 1385;
		com.google.javascript.rhino.Node v_n_922_line_1383 = n;
		boolean compiler_1_expr152_line_1383 = v_n_922_line_1383 == null;
		int PROBE_END_LINE_1383 = 1385;
		if (compiler_1_expr152_line_1383) {
          continue;
        }

        int PROBE_START_LINE_1387 = 1392;
		boolean v_dev_mode_911_line_1387 = devMode;
		int PROBE_END_LINE_1387 = 1392;
		if (v_dev_mode_911_line_1387) {
          runSanityCheck();
          if (hasErrors()) {
            return null;
          }
        }

        int PROBE_START_LINE_1396 = 1407;
		com.google.javascript.jscomp.CompilerOptions f_options_780_line_1396 = options;
		String q_source_map_output_path_45_line_1396 = f_options_780_line_1396.sourceMapOutputPath;
		boolean compiler_1_expr156_line_1396 = q_source_map_output_path_45_line_1396 != null;
		boolean compiler_1_expr155_line_1396 = compiler_1_expr156_line_1396 || options.nameReferenceReportPath != null;
		boolean compiler_1_expr154_line_1396 = compiler_1_expr155_line_1396 || options.isExternExportsEnabled();
		boolean compiler_1_expr153_line_1396 = compiler_1_expr154_line_1396 || options.externExportsPath != null;
		int PROBE_END_LINE_1396 = 1407;
		// TODO(johnlenz): we shouldn't need to check both isExternExportsEnabled and
        // externExportsPath.
        if (compiler_1_expr153_line_1396) {

          // Annotate the nodes in the tree with information from the
          // input file. This information is used to construct the SourceMap.
          SourceInformationAnnotator sia =
              new SourceInformationAnnotator(
                  input.getName(), options.devMode != DevMode.OFF);
          NodeTraversal.traverse(this, n, sia);
        }

        int PROBE_START_LINE_1409 = 1409;
		com.google.javascript.rhino.Node f_js_root_913_line_1409 = jsRoot;
		com.google.javascript.rhino.Node v_n_922_line_1409 = n;
		int PROBE_END_LINE_1409 = 1409;
		f_js_root_913_line_1409.addChildToBack(v_n_922_line_1409);
      }

      int PROBE_START_LINE_1412 = 1414;
	boolean compiler_1_expr158_line_1412 = hasErrors();
	int PROBE_END_LINE_1412 = 1414;
	if (compiler_1_expr158_line_1412) {
        return null;
      }
      int PROBE_START_LINE_1415 = 1415;
	com.google.javascript.rhino.Node f_extern_and_js_root_914_line_1415 = externAndJsRoot;
	int PROBE_END_LINE_1415 = 1415;
	return f_extern_and_js_root_914_line_1415;
    } finally {
      int PROBE_START_LINE_1417 = 1417;
		com.google.javascript.jscomp.Tracer v_tracer_915_line_1417 = tracer;
		String f_parsing_pass_name_916_line_1417 = PARSING_PASS_NAME;
		int PROBE_END_LINE_1417 = 1417;
	stopTracer(v_tracer_915_line_1417, f_parsing_pass_name_916_line_1417);
    }
  }

  /**
   * Hoists inputs with the @externs annotation into the externs list.
   */
  private void hoistExterns(Node externsRoot) {
    boolean staleInputs = false;
    int PROBE_START_LINE_1426 = 1455;
	List<com.google.javascript.jscomp.CompilerInput> f_inputs_831_line_1426 = inputs;
	int PROBE_END_LINE_1426 = 1455;
	for (CompilerInput input : f_inputs_831_line_1426) {
      int PROBE_START_LINE_1427 = 1433;
		com.google.javascript.jscomp.CompilerOptions f_options_780_line_1427 = options;
		com.google.javascript.jscomp.DependencyOptions q_dependency_options_45_line_1427 = f_options_780_line_1427.dependencyOptions;
		boolean compiler_1_expr160_line_1427 = q_dependency_options_45_line_1427.needsManagement();
		int PROBE_END_LINE_1427 = 1433;
	if (compiler_1_expr160_line_1427) {
        // If we're doing scanning dependency info anyway, use that
        // information to skip sources that obviously aren't externs.
        if (!input.getProvides().isEmpty() || !input.getRequires().isEmpty()) {
          continue;
        }
      }

      int PROBE_START_LINE_1435 = 1435;
	com.google.javascript.jscomp.CompilerInput v_input_925_line_1435 = input;
	Node compiler_1_expr161_line_1435 = v_input_925_line_1435.getAstRoot(this);
	int PROBE_END_LINE_1435 = 1435;
	Node n = compiler_1_expr161_line_1435;

      int PROBE_START_LINE_1438 = 1440;
	com.google.javascript.rhino.Node v_n_926_line_1438 = n;
	boolean compiler_1_expr163_line_1438 = v_n_926_line_1438 == null;
	int PROBE_END_LINE_1438 = 1440;
	// Inputs can have a null AST on a parse error.
      if (compiler_1_expr163_line_1438) {
        continue;
      }

      int PROBE_START_LINE_1442 = 1442;
	com.google.javascript.rhino.Node v_n_926_line_1442 = n;
	JSDocInfo compiler_1_expr164_line_1442 = v_n_926_line_1442.getJSDocInfo();
	int PROBE_END_LINE_1442 = 1442;
	JSDocInfo info = compiler_1_expr164_line_1442;
      int PROBE_START_LINE_1443 = 1454;
	com.google.javascript.rhino.JSDocInfo v_info_927_line_1443 = info;
	boolean compiler_1_expr166_line_1443 = v_info_927_line_1443 != null;
	boolean compiler_1_expr167_line_1443 = true;
	if (compiler_1_expr166_line_1443) {
		com.google.javascript.rhino.JSDocInfo v_info_927_line_1443_v1 = info;
		compiler_1_expr167_line_1443 = v_info_927_line_1443_v1.isExterns();
	}
	boolean compiler_1_expr165_line_1443 = compiler_1_expr166_line_1443 && compiler_1_expr167_line_1443;
	int PROBE_END_LINE_1443 = 1454;
	if (compiler_1_expr165_line_1443) {
        // If the input file is explicitly marked as an externs file, then
        // assume the programmer made a mistake and throw it into
        // the externs pile anyways.
        externsRoot.addChildToBack(n);
        input.setIsExtern(true);

        input.getModule().remove(input);

        externs.add(input);
        staleInputs = true;
      }
    }

    int PROBE_START_LINE_1457 = 1459;
	boolean v_stale_inputs_924_line_1457 = staleInputs;
	int PROBE_END_LINE_1457 = 1459;
	if (v_stale_inputs_924_line_1457) {
      repartitionInputs();
    }
  }

  /**
   * Hoists inputs with the @nocompiler annotation out of the inputs.
   */
  private void hoistNoCompileFiles() {
    boolean staleInputs = false;
    int PROBE_START_LINE_1467 = 1480;
	List<com.google.javascript.jscomp.CompilerInput> f_inputs_831_line_1467 = inputs;
	int PROBE_END_LINE_1467 = 1480;
	for (CompilerInput input : f_inputs_831_line_1467) {
      int PROBE_START_LINE_1468 = 1468;
		com.google.javascript.jscomp.CompilerInput v_input_929_line_1468 = input;
		Node compiler_1_expr168_line_1468 = v_input_929_line_1468.getAstRoot(this);
		int PROBE_END_LINE_1468 = 1468;
	Node n = compiler_1_expr168_line_1468;

      int PROBE_START_LINE_1471 = 1473;
	com.google.javascript.rhino.Node v_n_930_line_1471 = n;
	boolean compiler_1_expr170_line_1471 = v_n_930_line_1471 == null;
	int PROBE_END_LINE_1471 = 1473;
	// Inputs can have a null AST on a parse error.
      if (compiler_1_expr170_line_1471) {
        continue;
      }

      int PROBE_START_LINE_1475 = 1475;
	com.google.javascript.rhino.Node v_n_930_line_1475 = n;
	JSDocInfo compiler_1_expr171_line_1475 = v_n_930_line_1475.getJSDocInfo();
	int PROBE_END_LINE_1475 = 1475;
	JSDocInfo info = compiler_1_expr171_line_1475;
      int PROBE_START_LINE_1476 = 1479;
	com.google.javascript.rhino.JSDocInfo v_info_931_line_1476 = info;
	boolean compiler_1_expr173_line_1476 = v_info_931_line_1476 != null;
	boolean compiler_1_expr174_line_1476 = true;
	if (compiler_1_expr173_line_1476) {
		com.google.javascript.rhino.JSDocInfo v_info_931_line_1476_v1 = info;
		compiler_1_expr174_line_1476 = v_info_931_line_1476_v1.isNoCompile();
	}
	boolean compiler_1_expr172_line_1476 = compiler_1_expr173_line_1476 && compiler_1_expr174_line_1476;
	int PROBE_END_LINE_1476 = 1479;
	if (compiler_1_expr172_line_1476) {
        input.getModule().remove(input);
        staleInputs = true;
      }
    }

    int PROBE_START_LINE_1482 = 1484;
	boolean v_stale_inputs_928_line_1482 = staleInputs;
	int PROBE_END_LINE_1482 = 1484;
	if (v_stale_inputs_928_line_1482) {
      repartitionInputs();
    }
  }

  private void repartitionInputs() {
    fillEmptyModules(modules);
    rebuildInputsFromModules();
  }

  /**
   * Transforms AMD and CJS modules to something closure compiler can
   * process and creates JSModules and the corresponding dependency tree
   * on the way.
   */
  void processAMDAndCommonJSModules() {
    Map<String, JSModule> modulesByName = Maps.newLinkedHashMap();
    Map<CompilerInput, JSModule> modulesByInput = Maps.newLinkedHashMap();
    // TODO(nicksantos): Refactor module dependency resolution to work nicely
    // with multiple ways to express dependencies. Directly support JSModules
    // that are equivalent to a signal file and which express their deps
    // directly in the source.
    for (CompilerInput input : inputs) {
      input.setCompiler(this);
      Node root = input.getAstRoot(this);
      if (root == null) {
        continue;
      }
      if (options.transformAMDToCJSModules) {
        new TransformAMDToCJSModule(this).process(null, root);
      }
      if (options.processCommonJSModules) {
        ProcessCommonJSModules cjs = new ProcessCommonJSModules(this,
            options.commonJSModulePathPrefix);
        cjs.process(null, root);
        JSModule m = cjs.getModule();
        if (m != null) {
          modulesByName.put(m.getName(), m);
          modulesByInput.put(input, m);
        }
      }
    }
    if (options.processCommonJSModules) {
      List<JSModule> modules = Lists.newArrayList(modulesByName.values());
      if (!modules.isEmpty()) {
        this.modules = modules;
        this.moduleGraph = new JSModuleGraph(this.modules);
      }
      for (JSModule module : modules) {
        for (CompilerInput input : module.getInputs()) {
          for (String require : input.getRequires()) {
            JSModule dependency = modulesByName.get(require);
            if (dependency == null) {
              report(JSError.make(MISSING_ENTRY_ERROR, require));
            } else {
              module.addDependency(dependency);
            }
          }
        }
      }
      try {
        modules = Lists.newArrayList();
        for (CompilerInput input : this.moduleGraph.manageDependencies(
            options.dependencyOptions, inputs)) {
          modules.add(modulesByInput.get(input));
        }
        JSModule root = new JSModule("root");
        for (JSModule m : modules) {
          m.addDependency(root);
        }
        modules.add(0, root);
        SortedDependencies<JSModule> sorter =
          new SortedDependencies<JSModule>(modules);
        modules = sorter.getDependenciesOf(modules, true);
        this.modules = modules;

        this.moduleGraph = new JSModuleGraph(modules);
      } catch (Exception e) {
        Throwables.propagate(e);
      }
    }
  }

  public Node parse(SourceFile file) {
    initCompilerOptionsIfTesting();
    addToDebugLog("Parsing: " + file.getName());
    return new JsAst(file).getAstRoot(this);
  }

  private int syntheticCodeId = 0;

  @Override
  Node parseSyntheticCode(String js) {
    CompilerInput input = new CompilerInput(
        SourceFile.fromCode(" [synthetic:" + (++syntheticCodeId) + "] ", js));
    putCompilerInput(input.getInputId(), input);
    return input.getAstRoot(this);
  }

  /**
   * Allow subclasses to override the default CompileOptions object.
   */
  protected CompilerOptions newCompilerOptions() {
    return new CompilerOptions();
  }

  void initCompilerOptionsIfTesting() {
    int PROBE_START_LINE_1589 = 1593;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1589 = options;
	boolean compiler_1_expr175_line_1589 = f_options_780_line_1589 == null;
	int PROBE_END_LINE_1589 = 1593;
	if (compiler_1_expr175_line_1589) {
      // initialization for tests that don't initialize the compiler
      // by the normal mechanisms.
      initOptions(newCompilerOptions());
    }
  }

  @Override
  Node parseSyntheticCode(String fileName, String js) {
    initCompilerOptionsIfTesting();
    return parse(SourceFile.fromCode(fileName, js));
  }

  @Override
  Node parseTestCode(String js) {
    initCompilerOptionsIfTesting();
    CompilerInput input = new CompilerInput(
        SourceFile.fromCode("[testcode]", js));
    if (inputsById == null) {
      inputsById = Maps.newHashMap();
    }
    putCompilerInput(input.getInputId(), input);
    return input.getAstRoot(this);
  }

  @Override
  ErrorReporter getDefaultErrorReporter() {
    int PROBE_START_LINE_1616 = 1616;
	com.google.javascript.rhino.head.ErrorReporter f_default_error_reporter_791_line_1616 = defaultErrorReporter;
	int PROBE_END_LINE_1616 = 1616;
	return f_default_error_reporter_791_line_1616;
  }

  //------------------------------------------------------------------------
  // Convert back to source code
  //------------------------------------------------------------------------

  /**
   * Converts the main parse tree back to JS code.
   */
  public String toSource() {
    return runInCompilerThread(new Callable<String>() {
      @Override
      public String call() throws Exception {
        Tracer tracer = newTracer("toSource");
        try {
          CodeBuilder cb = new CodeBuilder();
          if (jsRoot != null) {
            int i = 0;
            for (Node scriptNode = jsRoot.getFirstChild();
                 scriptNode != null;
                 scriptNode = scriptNode.getNext()) {
              toSource(cb, i++, scriptNode);
            }
          }
          return cb.toString();
        } finally {
          stopTracer(tracer, "toSource");
        }
      }
    });
  }

  /**
   * Converts the parse tree for each input back to JS code.
   */
  public String[] toSourceArray() {
    return runInCompilerThread(new Callable<String[]>() {
      @Override
      public String[] call() throws Exception {
        Tracer tracer = newTracer("toSourceArray");
        try {
          int numInputs = inputs.size();
          String[] sources = new String[numInputs];
          CodeBuilder cb = new CodeBuilder();
          for (int i = 0; i < numInputs; i++) {
            Node scriptNode = inputs.get(i).getAstRoot(Compiler.this);
            cb.reset();
            toSource(cb, i, scriptNode);
            sources[i] = cb.toString();
          }
          return sources;
        } finally {
          stopTracer(tracer, "toSourceArray");
        }
      }
    });
  }

  /**
   * Converts the parse tree for a module back to JS code.
   */
  public String toSource(final JSModule module) {
    return runInCompilerThread(new Callable<String>() {
      @Override
      public String call() throws Exception {
        List<CompilerInput> inputs = module.getInputs();
        int numInputs = inputs.size();
        if (numInputs == 0) {
          return "";
        }
        CodeBuilder cb = new CodeBuilder();
        for (int i = 0; i < numInputs; i++) {
          Node scriptNode = inputs.get(i).getAstRoot(Compiler.this);
          if (scriptNode == null) {
            throw new IllegalArgumentException(
                "Bad module: " + module.getName());
          }
          toSource(cb, i, scriptNode);
        }
        return cb.toString();
      }
    });
  }


  /**
   * Converts the parse tree for each input in a module back to JS code.
   */
  public String[] toSourceArray(final JSModule module) {
    return runInCompilerThread(new Callable<String[]>() {
      @Override
      public String[] call() throws Exception {
        List<CompilerInput> inputs = module.getInputs();
        int numInputs = inputs.size();
        if (numInputs == 0) {
          return new String[0];
        }

        String[] sources = new String[numInputs];
        CodeBuilder cb = new CodeBuilder();
        for (int i = 0; i < numInputs; i++) {
          Node scriptNode = inputs.get(i).getAstRoot(Compiler.this);
          if (scriptNode == null) {
            throw new IllegalArgumentException(
                "Bad module input: " + inputs.get(i).getName());
          }

          cb.reset();
          toSource(cb, i, scriptNode);
          sources[i] = cb.toString();
        }
        return sources;
      }
    });
  }

  /**
   * Writes out JS code from a root node. If printing input delimiters, this
   * method will attach a comment to the start of the text indicating which
   * input the output derived from. If there were any preserve annotations
   * within the root's source, they will also be printed in a block comment
   * at the beginning of the output.
   */
  public void toSource(final CodeBuilder cb,
                       final int inputSeqNum,
                       final Node root) {
    runInCompilerThread(new Callable<Void>() {
      @Override
      public Void call() throws Exception {
        if (options.printInputDelimiter) {
          if ((cb.getLength() > 0) && !cb.endsWith("\n")) {
            cb.append("\n");  // Make sure that the label starts on a new line
          }
          Preconditions.checkState(root.isScript());

          String delimiter = options.inputDelimiter;

          String inputName = root.getInputId().getIdName();
          String sourceName = root.getSourceFileName();
          Preconditions.checkState(sourceName != null);
          Preconditions.checkState(!sourceName.isEmpty());

          delimiter = delimiter
              .replaceAll("%name%", Matcher.quoteReplacement(inputName))
              .replaceAll("%num%", String.valueOf(inputSeqNum));

          cb.append(delimiter)
            .append("\n");
        }
        if (root.getJSDocInfo() != null &&
            root.getJSDocInfo().getLicense() != null) {
          cb.append("/*\n")
            .append(root.getJSDocInfo().getLicense())
            .append("*/\n");
        }

        // If there is a valid source map, then indicate to it that the current
        // root node's mappings are offset by the given string builder buffer.
        if (options.sourceMapOutputPath != null) {
          sourceMap.setStartingPosition(
              cb.getLineIndex(), cb.getColumnIndex());
        }

        // if LanguageMode is ECMASCRIPT5_STRICT, only print 'use strict'
        // for the first input file
        String code = toSource(root, sourceMap, inputSeqNum == 0);
        if (!code.isEmpty()) {
          cb.append(code);

          // In order to avoid parse ambiguity when files are concatenated
          // together, all files should end in a semi-colon. Do a quick
          // heuristic check if there's an obvious semi-colon already there.
          int length = code.length();
          char lastChar = code.charAt(length - 1);
          char secondLastChar = length >= 2 ?
              code.charAt(length - 2) : '\0';
          boolean hasSemiColon = lastChar == ';' ||
              (lastChar == '\n' && secondLastChar == ';');
          if (!hasSemiColon) {
            cb.append(";");
          }
        }
        return null;
      }
    });
  }

  /**
   * Generates JavaScript source code for an AST, doesn't generate source
   * map info.
   */
  @Override
  String toSource(Node n) {
    initCompilerOptionsIfTesting();
    int PROBE_START_LINE_1811 = 1811;
	com.google.javascript.rhino.Node p_n_943_line_1811 = n;
	String compiler_1_expr177_line_1811 = toSource(p_n_943_line_1811, null, true);
	int PROBE_END_LINE_1811 = 1811;
	return compiler_1_expr177_line_1811;
  }

  /**
   * Generates JavaScript source code for an AST.
   */
  private String toSource(Node n, SourceMap sourceMap, boolean firstOutput) {
    int PROBE_START_LINE_1818 = 1818;
	com.google.javascript.rhino.Node p_n_944_line_1818 = n;
	int PROBE_END_LINE_1818 = 1818;
	CodePrinter.Builder builder = new CodePrinter.Builder(p_n_944_line_1818);
    int PROBE_START_LINE_1819 = 1819;
	com.google.javascript.jscomp.CodePrinter.Builder v_builder_947_line_1819 = builder;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_1819 = options;
	int PROBE_END_LINE_1819 = 1819;
	v_builder_947_line_1819.setCompilerOptions(f_options_780_line_1819);
    int PROBE_START_LINE_1820 = 1820;
	com.google.javascript.jscomp.CodePrinter.Builder v_builder_947_line_1820 = builder;
	com.google.javascript.jscomp.SourceMap p_source_map_945_line_1820 = sourceMap;
	int PROBE_END_LINE_1820 = 1820;
	v_builder_947_line_1820.setSourceMap(p_source_map_945_line_1820);
    int PROBE_START_LINE_1821 = 1822;
	com.google.javascript.jscomp.CodePrinter.Builder v_builder_947_line_1821 = builder;
	boolean p_first_output_946_line_1821 = firstOutput;
	boolean compiler_1_expr182_line_1821 = p_first_output_946_line_1821
			&& options.getLanguageOut() == LanguageMode.ECMASCRIPT5_STRICT;
	int PROBE_END_LINE_1821 = 1822;
	v_builder_947_line_1821.setTagAsStrict(compiler_1_expr182_line_1821);
    int PROBE_START_LINE_1823 = 1823;
	com.google.javascript.jscomp.CodePrinter.Builder v_builder_947_line_1823 = builder;
	String compiler_1_expr183_line_1823 = v_builder_947_line_1823.build();
	int PROBE_END_LINE_1823 = 1823;
	return compiler_1_expr183_line_1823;
  }

  /**
   * Stores a buffer of text to which more can be appended.  This is just like a
   * StringBuilder except that we also track the number of lines.
   */
  public static class CodeBuilder {
    private final StringBuilder sb = new StringBuilder();
    private int lineCount = 0;
    private int colCount = 0;

    /** Removes all text, but leaves the line count unchanged. */
    void reset() {
      sb.setLength(0);
    }

    /** Appends the given string to the text buffer. */
    CodeBuilder append(String str) {
      sb.append(str);

      // Adjust the line and column information for the new text.
      int index = -1;
      int lastIndex = index;
      while ((index = str.indexOf('\n', index + 1)) >= 0) {
        ++lineCount;
        lastIndex = index;
      }

      if (lastIndex == -1) {
        // No new lines, append the new characters added.
        colCount += str.length();
      } else {
        colCount = str.length() - (lastIndex + 1);
      }

      return this;
    }

    /** Returns all text in the text buffer. */
    @Override
    public String toString() {
      return sb.toString();
    }

    /** Returns the length of the text buffer. */
    public int getLength() {
      return sb.length();
    }

    /** Returns the (zero-based) index of the last line in the text buffer. */
    int getLineIndex() {
      return lineCount;
    }

    /** Returns the (zero-based) index of the last column in the text buffer. */
    int getColumnIndex() {
      return colCount;
    }

    /** Determines whether the text ends with the given suffix. */
    boolean endsWith(String suffix) {
      return (sb.length() > suffix.length())
          && suffix.equals(sb.substring(sb.length() - suffix.length()));
    }
  }

  //------------------------------------------------------------------------
  // Optimizations
  //------------------------------------------------------------------------

  public void optimize() {
    // Ideally, this pass should be the first pass run, however:
    // 1) VariableReferenceCheck reports unexpected warnings if Normalize
    // is done first.
    // 2) ReplaceMessages, stripCode, and potentially custom passes rely on
    // unmodified local names.
    normalize();

    // Create extern exports after the normalize because externExports depends on unique names.
    if (options.isExternExportsEnabled()
        || options.externExportsPath != null) {
      externExports();
    }

    phaseOptimizer = new PhaseOptimizer(this, tracker, null);
    if (options.devMode == DevMode.EVERY_PASS) {
      phaseOptimizer.setSanityCheck(sanityCheck);
    }
    if (options.getCheckDeterminism()) {
      phaseOptimizer.setPrintAstHashcodes(true);
    }
    phaseOptimizer.consume(getPassConfig().getOptimizations());
    phaseOptimizer.process(externsRoot, jsRoot);
    phaseOptimizer = null;
  }

  @Override
  void setCssRenamingMap(CssRenamingMap map) {
    options.cssRenamingMap = map;
  }

  @Override
  CssRenamingMap getCssRenamingMap() {
    return options.cssRenamingMap;
  }

  /**
   * Reprocesses the current defines over the AST.  This is used by GwtCompiler
   * to generate N outputs for different targets from the same (checked) AST.
   * For each target, we apply the target-specific defines by calling
   * {@code processDefines} and then {@code optimize} to optimize the AST
   * specifically for that target.
   */
  public void processDefines() {
    (new DefaultPassConfig(options)).processDefines.create(this)
        .process(externsRoot, jsRoot);
  }

  boolean isInliningForbidden() {
    return options.propertyRenaming == PropertyRenamingPolicy.HEURISTIC ||
        options.propertyRenaming ==
            PropertyRenamingPolicy.AGGRESSIVE_HEURISTIC;
  }

  /** Control Flow Analysis. */
  ControlFlowGraph<Node> computeCFG() {
    logger.fine("Computing Control Flow Graph");
    Tracer tracer = newTracer("computeCFG");
    ControlFlowAnalysis cfa = new ControlFlowAnalysis(this, true, false);
    process(cfa);
    stopTracer(tracer, "computeCFG");
    return cfa.getCfg();
  }

  public void normalize() {
    logger.fine("Normalizing");
    startPass("normalize");
    process(new Normalize(this, false));
    endPass();
  }

  @Override
  void prepareAst(Node root) {
    CompilerPass pass = new PrepareAst(this);
    int PROBE_START_LINE_1968 = 1968;
	com.google.javascript.jscomp.CompilerPass v_pass_952_line_1968 = pass;
	com.google.javascript.rhino.Node p_root_951_line_1968 = root;
	int PROBE_END_LINE_1968 = 1968;
	v_pass_952_line_1968.process(null, p_root_951_line_1968);
  }

  void recordFunctionInformation() {
    logger.fine("Recording function information");
    startPass("recordFunctionInformation");
    RecordFunctionInformation recordFunctionInfoPass =
        new RecordFunctionInformation(
            this, getPassConfig().getIntermediateState().functionNames);
    process(recordFunctionInfoPass);
    functionInformationMap = recordFunctionInfoPass.getMap();
    endPass();
  }

  protected final RecentChange recentChange = new RecentChange();
  private final List<CodeChangeHandler> codeChangeHandlers =
      Lists.<CodeChangeHandler>newArrayList();

  /** Name of the synthetic input that holds synthesized externs. */
  static final String SYNTHETIC_EXTERNS = "{SyntheticVarsDeclar}";

  private CompilerInput synthesizedExternsInput = null;

  @Override
  void addChangeHandler(CodeChangeHandler handler) {
    int PROBE_START_LINE_1993 = 1993;
	List<com.google.javascript.jscomp.CodeChangeHandler> f_code_change_handlers_953_line_1993 = codeChangeHandlers;
	com.google.javascript.jscomp.CodeChangeHandler p_handler_955_line_1993 = handler;
	int PROBE_END_LINE_1993 = 1993;
	f_code_change_handlers_953_line_1993.add(p_handler_955_line_1993);
  }

  @Override
  void removeChangeHandler(CodeChangeHandler handler) {
    codeChangeHandlers.remove(handler);
  }

  @Override
  void setScope(Node n) {
    int PROBE_START_LINE_2003 = 2005;
	com.google.javascript.jscomp.PhaseOptimizer f_phase_optimizer_789_line_2003 = phaseOptimizer;
	boolean compiler_1_expr190_line_2003 = f_phase_optimizer_789_line_2003 != null;
	int PROBE_END_LINE_2003 = 2005;
	if (compiler_1_expr190_line_2003) {
      phaseOptimizer.setScope(n);
    }
  }

  @Override
  Node getJsRoot() {
    return jsRoot;
  }

  @Override
  boolean hasScopeChanged(Node n) {
    if (!analyzeChangedScopesOnly || phaseOptimizer == null) {
      return true;
    }
    return phaseOptimizer.hasScopeChanged(n);
  }

  @Override
  void reportChangeToEnclosingScope(Node n) {
    if (phaseOptimizer != null) {
      phaseOptimizer.reportChangeToEnclosingScope(n);
      phaseOptimizer.startCrossScopeReporting();
      reportCodeChange();
      phaseOptimizer.endCrossScopeReporting();
    } else {
      reportCodeChange();
    }
  }

  /**
   * Some tests don't want to call the compiler "wholesale," they may not want
   * to call check and/or optimize. With this method, tests can execute custom
   * optimization loops.
   */
  @VisibleForTesting
  void setPhaseOptimizer(PhaseOptimizer po) {
    this.phaseOptimizer = po;
  }

  @Override
  public void reportCodeChange() {
    for (CodeChangeHandler handler : codeChangeHandlers) {
      handler.reportChange();
    }
  }

  @Override
  public CodingConvention getCodingConvention() {
    int PROBE_START_LINE_2052 = 2052;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_2052 = options;
	CodingConvention compiler_1_expr191_line_2052 = f_options_780_line_2052.getCodingConvention();
	int PROBE_END_LINE_2052 = 2052;
	CodingConvention convention = compiler_1_expr191_line_2052;
    int PROBE_START_LINE_2053 = 2053;
	com.google.javascript.jscomp.CodingConvention v_convention_961_line_2053 = convention;
	boolean compiler_1_expr194_line_2053 = v_convention_961_line_2053 != null;
	com.google.javascript.jscomp.CodingConvention v_convention_961_line_2053_v1 = null;
	com.google.javascript.jscomp.CodingConvention f_default_coding_convention_787_line_2053 = null;
	if (compiler_1_expr194_line_2053) {
		v_convention_961_line_2053_v1 = convention;
	} else {
		f_default_coding_convention_787_line_2053 = defaultCodingConvention;
	}
	com.google.javascript.jscomp.CodingConvention compiler_1_expr193_line_2053 = compiler_1_expr194_line_2053
			? v_convention_961_line_2053_v1
			: f_default_coding_convention_787_line_2053;
	int PROBE_END_LINE_2053 = 2053;
	convention = compiler_1_expr193_line_2053;
    int PROBE_START_LINE_2054 = 2054;
	com.google.javascript.jscomp.CodingConvention v_convention_961_line_2054 = convention;
	int PROBE_END_LINE_2054 = 2054;
	return v_convention_961_line_2054;
  }

  @Override
  public boolean isIdeMode() {
    int PROBE_START_LINE_2059 = 2059;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_2059 = options;
	boolean q_ide_mode_45_line_2059 = f_options_780_line_2059.ideMode;
	int PROBE_END_LINE_2059 = 2059;
	return q_ide_mode_45_line_2059;
  }

  @Override
  public boolean acceptEcmaScript5() {
    switch (options.getLanguageIn()) {
      case ECMASCRIPT5:
      case ECMASCRIPT5_STRICT:
        return true;
      case ECMASCRIPT3:
        return false;
    }
    throw new IllegalStateException("unexpected language mode");
  }

  public LanguageMode languageMode() {
    return options.getLanguageIn();
  }

  @Override
  public boolean acceptConstKeyword() {
    int PROBE_START_LINE_2080 = 2080;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_2080 = options;
	boolean q_accept_const_keyword_46_line_2080 = f_options_780_line_2080.acceptConstKeyword;
	int PROBE_END_LINE_2080 = 2080;
	return q_accept_const_keyword_46_line_2080;
  }

  @Override
  Config getParserConfig() {
    int PROBE_START_LINE_2085 = 2106;
	com.google.javascript.jscomp.parsing.Config f_parser_config_788_line_2085 = parserConfig;
	boolean compiler_1_expr195_line_2085 = f_parser_config_788_line_2085 == null;
	int PROBE_END_LINE_2085 = 2106;
	if (compiler_1_expr195_line_2085) {
      Config.LanguageMode mode;
      int PROBE_START_LINE_2087 = 2099;
	com.google.javascript.jscomp.CompilerOptions f_options_780_line_2087 = options;
	com.google.javascript.jscomp.CompilerOptions.LanguageMode compiler_1_expr196_line_2087 = f_options_780_line_2087
			.getLanguageIn();
	int PROBE_END_LINE_2087 = 2099;
	switch (compiler_1_expr196_line_2087) {
        case ECMASCRIPT3:
          mode = Config.LanguageMode.ECMASCRIPT3;
          break;
        case ECMASCRIPT5:
	int PROBE_START_LINE_2092 = 2092;
	com.google.javascript.jscomp.parsing.Config.LanguageMode q_ecmascript5_47_line_2092 = Config.LanguageMode.ECMASCRIPT5;
	int PROBE_END_LINE_2092 = 2092;
	mode = q_ecmascript5_47_line_2092;
          break;
        case ECMASCRIPT5_STRICT:
          mode = Config.LanguageMode.ECMASCRIPT5_STRICT;
          break;
        default:
          throw new IllegalStateException("unexpected language mode");
      }

      int PROBE_START_LINE_2101 = 2105;
	com.google.javascript.jscomp.parsing.Config compiler_1_expr199_line_2101 = ParserRunner.createConfig(isIdeMode(),
			mode, acceptConstKeyword(), options.extraAnnotationNames);
	int PROBE_END_LINE_2101 = 2105;
	parserConfig = compiler_1_expr199_line_2101;
    }
    int PROBE_START_LINE_2107 = 2107;
	com.google.javascript.jscomp.parsing.Config f_parser_config_788_line_2107 = parserConfig;
	int PROBE_END_LINE_2107 = 2107;
	return f_parser_config_788_line_2107;
  }

  @Override
  public boolean isTypeCheckingEnabled() {
    return options.checkTypes;
  }


  //------------------------------------------------------------------------
  // Error reporting
  //------------------------------------------------------------------------

  /**
   * The warning classes that are available from the command-line, and
   * are suppressible by the {@code @suppress} annotation.
   */
  protected DiagnosticGroups getDiagnosticGroups() {
    return new DiagnosticGroups();
  }

  @Override
  public void report(JSError error) {
    CheckLevel level = error.getDefaultLevel();
    if (warningsGuard != null) {
      CheckLevel newLevel = warningsGuard.level(error);
      if (newLevel != null) {
        level = newLevel;
      }
    }

    if (level.isOn()) {
      if (getOptions().errorHandler != null) {
        getOptions().errorHandler.report(level, error);
      }
      errorManager.report(level, error);
    }
  }

  @Override
  public CheckLevel getErrorLevel(JSError error) {
    Preconditions.checkNotNull(options);
    return warningsGuard.level(error);
  }

  /**
   * Report an internal error.
   */
  @Override
  void throwInternalError(String message, Exception cause) {
    String finalMessage =
      "INTERNAL COMPILER ERROR.\n" +
      "Please report this problem.\n" + message;

    RuntimeException e = new RuntimeException(finalMessage, cause);
    if (cause != null) {
      e.setStackTrace(cause.getStackTrace());
    }
    throw e;
  }


  /**
   * Gets the number of errors.
   */
  public int getErrorCount() {
    int PROBE_START_LINE_2173 = 2173;
	com.google.javascript.jscomp.ErrorManager f_error_manager_806_line_2173 = errorManager;
	int compiler_1_expr203_line_2173 = f_error_manager_806_line_2173.getErrorCount();
	int PROBE_END_LINE_2173 = 2173;
	return compiler_1_expr203_line_2173;
  }

  /**
   * Gets the number of warnings.
   */
  public int getWarningCount() {
    return errorManager.getWarningCount();
  }

  @Override
  boolean hasHaltingErrors() {
    int PROBE_START_LINE_2185 = 2185;
	boolean compiler_1_expr206_line_2185 = isIdeMode();
	boolean compiler_1_expr205_line_2185 = !compiler_1_expr206_line_2185;
	boolean compiler_1_expr207_line_2185 = true;
	if (compiler_1_expr205_line_2185) {
		int compiler_1_expr208_line_2185 = getErrorCount();
		compiler_1_expr207_line_2185 = compiler_1_expr208_line_2185 > 0;
	}
	boolean compiler_1_expr204_line_2185 = compiler_1_expr205_line_2185 && compiler_1_expr207_line_2185;
	int PROBE_END_LINE_2185 = 2185;
	return compiler_1_expr204_line_2185;
  }

  /**
   * Consults the {@link ErrorManager} to see if we've encountered errors
   * that should halt compilation. <p>
   *
   * If {@link CompilerOptions#ideMode} is {@code true}, this function
   * always returns {@code false} without consulting the error manager. The
   * error manager will continue to be told about new errors and warnings, but
   * the compiler will complete compilation of all inputs.<p>
   */
  public boolean hasErrors() {
    int PROBE_START_LINE_2198 = 2198;
	boolean compiler_1_expr209_line_2198 = hasHaltingErrors();
	int PROBE_END_LINE_2198 = 2198;
	return compiler_1_expr209_line_2198;
  }

  /** Called from the compiler passes, adds debug info */
  @Override
  void addToDebugLog(String str) {
    debugLog.append(str);
    debugLog.append('\n');
    logger.fine(str);
  }

  @Override
  SourceFile getSourceFileByName(String sourceName) {
    // Here we assume that the source name is the input name, this
    // is try of JavaScript parsed from source.
    if (sourceName != null) {
      CompilerInput input = inputsById.get(new InputId(sourceName));
      if (input != null) {
        return input.getSourceFile();
      }
    }
    return null;
  }

  @Override
  public String getSourceLine(String sourceName, int lineNumber) {
    if (lineNumber < 1) {
      return null;
    }
    SourceFile input = getSourceFileByName(sourceName);
    if (input != null) {
      return input.getLine(lineNumber);
    }
    return null;
  }

  @Override
  public Region getSourceRegion(String sourceName, int lineNumber) {
    if (lineNumber < 1) {
      return null;
    }
    SourceFile input = getSourceFileByName(sourceName);
    if (input != null) {
      return input.getRegion(lineNumber);
    }
    return null;
  }

  //------------------------------------------------------------------------
  // Package-private helpers
  //------------------------------------------------------------------------

  @Override
  Node getNodeForCodeInsertion(JSModule module) {
    if (module == null) {
      if (inputs.isEmpty()) {
        throw new IllegalStateException("No inputs");
      }

      return inputs.get(0).getAstRoot(this);
    }

    List<CompilerInput> moduleInputs = module.getInputs();
    if (moduleInputs.size() > 0) {
      return moduleInputs.get(0).getAstRoot(this);
    }
    throw new IllegalStateException("Root module has no inputs");
  }

  public SourceMap getSourceMap() {
    return sourceMap;
  }

  VariableMap getVariableMap() {
    return getPassConfig().getIntermediateState().variableMap;
  }

  VariableMap getPropertyMap() {
    return getPassConfig().getIntermediateState().propertyMap;
  }

  CompilerOptions getOptions() {
    return options;
  }

  FunctionInformationMap getFunctionalInformationMap() {
    return functionInformationMap;
  }

  /**
   * Sets the logging level for the com.google.javascript.jscomp package.
   */
  public static void setLoggingLevel(Level level) {
    logger.setLevel(level);
  }

  /** Gets the DOT graph of the AST generated at the end of compilation. */
  public String getAstDotGraph() throws IOException {
    if (jsRoot != null) {
      ControlFlowAnalysis cfa = new ControlFlowAnalysis(this, true, false);
      cfa.process(null, jsRoot);
      return DotFormatter.toDot(jsRoot, cfa.getCfg());
    } else {
      return "";
    }
  }

  @Override
  public ErrorManager getErrorManager() {
    if (options == null) {
      initOptions(newCompilerOptions());
    }
    return errorManager;
  }

  @Override
  List<CompilerInput> getInputsInOrder() {
    return Collections.<CompilerInput>unmodifiableList(inputs);
  }

  /**
   * Returns an unmodifiable view of the compiler inputs indexed by id.
   */
  public Map<InputId, CompilerInput> getInputsById() {
    return Collections.unmodifiableMap(inputsById);
  }

  /**
   * Gets the externs in the order in which they are being processed.
   */
  List<CompilerInput> getExternsInOrder() {
    return Collections.<CompilerInput>unmodifiableList(externs);
  }

  /**
   * Stores the internal compiler state just before optimization is performed.
   * This can be saved and restored in order to efficiently optimize multiple
   * different output targets without having to perform checking multiple times.
   *
   * NOTE: This does not include all parts of the compiler's internal state. In
   * particular, SourceFiles and CompilerOptions are not recorded. In
   * order to recreate a Compiler instance from scratch, you would need to
   * call {@code init} with the same arguments as in the initial creation before
   * restoring intermediate state.
   */
  public static class IntermediateState implements Serializable {
    private static final long serialVersionUID = 1L;

    Node externsRoot;
    private Node jsRoot;
    private List<CompilerInput> externs;
    private List<CompilerInput> inputs;
    private List<JSModule> modules;
    private PassConfig.State passConfigState;
    private JSTypeRegistry typeRegistry;
    private AbstractCompiler.LifeCycleStage lifeCycleStage;
    private Map<String, Node> injectedLibraries;

    private IntermediateState() {}
  }

  /**
   * Returns the current internal state, excluding the input files and modules.
   */
  public IntermediateState getState() {
    IntermediateState state = new IntermediateState();
    state.externsRoot = externsRoot;
    state.jsRoot = jsRoot;
    state.externs = externs;
    state.inputs = inputs;
    state.modules = modules;
    state.passConfigState = getPassConfig().getIntermediateState();
    state.typeRegistry = typeRegistry;
    state.lifeCycleStage = getLifeCycleStage();
    state.injectedLibraries = Maps.newLinkedHashMap(injectedLibraries);

    return state;
  }

  /**
   * Sets the internal state to the capture given.  Note that this assumes that
   * the input files are already set up.
   */
  public void setState(IntermediateState state) {
    externsRoot = state.externsRoot;
    jsRoot = state.jsRoot;
    externs = state.externs;
    inputs = state.inputs;
    modules = state.modules;
    passes = createPassConfigInternal();
    getPassConfig().setIntermediateState(state.passConfigState);
    typeRegistry = state.typeRegistry;
    setLifeCycleStage(state.lifeCycleStage);

    injectedLibraries.clear();
    injectedLibraries.putAll(state.injectedLibraries);
  }

  @VisibleForTesting
  List<CompilerInput> getInputsForTesting() {
    return inputs;
  }

  @VisibleForTesting
  List<CompilerInput> getExternsForTesting() {
    return externs;
  }

  @Override
  boolean hasRegExpGlobalReferences() {
    return hasRegExpGlobalReferences;
  }

  @Override
  void setHasRegExpGlobalReferences(boolean references) {
    hasRegExpGlobalReferences = references;
  }

  @Override
  void updateGlobalVarReferences(Map<Var, ReferenceCollection> refMapPatch,
      Node collectionRoot) {
    Preconditions.checkState(collectionRoot.isScript()
        || collectionRoot.isBlock());
    if (globalRefMap == null) {
      globalRefMap = new GlobalVarReferenceMap(getInputsInOrder(),
          getExternsInOrder());
    }
    globalRefMap.updateGlobalVarReferences(refMapPatch, collectionRoot);
  }

  @Override
  GlobalVarReferenceMap getGlobalVarReferences() {
    return globalRefMap;
  }

  @Override
  CompilerInput getSynthesizedExternsInput() {
    if (synthesizedExternsInput == null) {
      synthesizedExternsInput = newExternInput(SYNTHETIC_EXTERNS);
    }
    return synthesizedExternsInput;
  }

  @Override
  public double getProgress() {
    return progress;
  }

  @Override
  String getLastPassName() {
    return lastPassName;
  }

  @Override
  void setProgress(double newProgress, String passName) {
    this.lastPassName = passName;
    if (newProgress > 1.0) {
      progress = 1.0;
    } else {
      progress = newProgress;
    }
  }

  /**
   * Replaces one file in a hot-swap mode. The given JsAst should be made
   * from a new version of a file that already was present in the last compile
   * call. If the file is new, this will silently ignored.
   *
   * @param ast the ast of the file that is being replaced
   */
  public void replaceScript(JsAst ast) {
    CompilerInput input = this.getInput(ast.getInputId());
    if (!replaceIncrementalSourceAst(ast)) {
      return;
    }
    Node originalRoot = input.getAstRoot(this);

    processNewScript(ast, originalRoot);
  }

  /**
   * Adds a new Script AST to the compile state. If a script for the same file
   * already exists the script will not be added, instead a call to
   * #replaceScript should be used.
   *
   * @param ast the ast of the new file
   */
  public void addNewScript(JsAst ast) {
    if (!addNewSourceAst(ast)) {
      return;
    }
    Node emptyScript = new Node(Token.SCRIPT);
    InputId inputId = ast.getInputId();
    emptyScript.setInputId(inputId);
    emptyScript.setStaticSourceFile(
        SourceFile.fromCode(inputId.getIdName(), ""));

    processNewScript(ast, emptyScript);
  }

  private void processNewScript(JsAst ast, Node originalRoot) {
    Node js = ast.getAstRoot(this);
    Preconditions.checkNotNull(js);

    runHotSwap(originalRoot, js, this.getCleanupPassConfig());
    // NOTE: If hot swap passes that use GlobalNamespace are added, we will need
    // to revisit this approach to clearing GlobalNamespaces
    runHotSwapPass(null, null, ensureDefaultPassConfig().garbageCollectChecks);

    this.getTypeRegistry().clearNamedTypes();
    this.removeSyntheticVarsInput();

    runHotSwap(originalRoot, js, this.ensureDefaultPassConfig());
  }

  /**
   * Execute the passes from a PassConfig instance over a single replaced file.
   */
  private void runHotSwap(
      Node originalRoot, Node js, PassConfig passConfig) {
    for (PassFactory passFactory : passConfig.getChecks()) {
      runHotSwapPass(originalRoot, js, passFactory);
    }
  }

  private void runHotSwapPass(
      Node originalRoot, Node js, PassFactory passFactory) {
    HotSwapCompilerPass pass = passFactory.getHotSwapPass(this);
    if (pass != null) {
      logger.info("Performing HotSwap for pass " + passFactory.getName());
      pass.hotSwapScript(js, originalRoot);
    }
  }

  private PassConfig getCleanupPassConfig() {
    return new CleanupPasses(getOptions());
  }

  private void removeSyntheticVarsInput() {
    String sourceName = Compiler.SYNTHETIC_EXTERNS;
    removeExternInput(new InputId(sourceName));
  }

  @Override
  Node ensureLibraryInjected(String resourceName) {
    if (injectedLibraries.containsKey(resourceName)) {
      return null;
    }

    // All libraries depend on js/base.js
    boolean isBase = "base".equals(resourceName);
    if (!isBase) {
      ensureLibraryInjected("base");
    }

    Node firstChild = loadLibraryCode(resourceName).removeChildren();
    Node lastChild = firstChild.getLastSibling();

    Node parent = getNodeForCodeInsertion(null);
    if (isBase) {
      parent.addChildrenToFront(firstChild);
    } else {
      parent.addChildrenAfter(
          firstChild, injectedLibraries.get("base"));
    }
    reportCodeChange();

    injectedLibraries.put(resourceName, lastChild);
    return lastChild;
  }

  /** Load a library as a resource */
  @VisibleForTesting
  Node loadLibraryCode(String resourceName) {
    String originalCode;
    try {
      originalCode = CharStreams.toString(new InputStreamReader(
          Compiler.class.getResourceAsStream(
              String.format("js/%s.js", resourceName)),
          Charsets.UTF_8));
    } catch (IOException e) {
      throw new RuntimeException(e);
    }

    return Normalize.parseAndNormalizeSyntheticCode(
        this, originalCode,
        String.format("jscomp_%s_", resourceName));
  }

  /** Returns the compiler version baked into the jar. */
  public static String getReleaseVersion() {
    ResourceBundle config = ResourceBundle.getBundle(CONFIG_RESOURCE);
    return config.getString("compiler.version");
  }

  /** Returns the compiler date baked into the jar. */
  public static String getReleaseDate() {
    ResourceBundle config = ResourceBundle.getBundle(CONFIG_RESOURCE);
    return config.getString("compiler.date");
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setOldParseTree(String sourceName, AstRoot oldAst) {
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public AstRoot getOldParseTreeByName(String sourceName) {
    return null;
  }
}
