### LogicFL Replication Package

This is a replication package of LogicFL - FSE 2025 submission.   

For convenience, it would be better to place the ``tar.gz`` files under ``/data/bug_db/subjects`` before uncompress them. It will save some trouble to update configurations for different path.

#### Files

* ``logicfl_dataset.tar.gz``: source code, evaluation results and other files for replication.
* ``apache-commons_npe_bugs.tar.gz``: Apache Commons NPE bugs from the NPE benchmark.
* ``defects4j_npe_bugs.tar.gz``: Defects4J NPE bugs from the NPE benchmark.

#### Contents

* ``autofl_results``: input files necessary to execute AutoFL (``autofl_results/dataset``) and obtained results (``autofl_results/results``). Check ``README.md`` in the directory for details.
* ``fusefl``: files required to execute FuseFL and obtained results. Check ``README.md`` in the directory for details.
* ``benchmark.pl`` and ``benchmark.json``: The NPE Benchmark - identified NPE causes in Prolog and JSON format respectively.
* ``lib``: contains files required to execute LogicFL.
    - ``npe-rules.pl`` contains defined rules for ``FaultLocalizer``.
* ``scripts``: shell script files to execute each component of LogicFL.
* ``d4j-lib``: contains necessary files to execute tests for Defects4J subjects.
* ``logicfl_results``: stores files produced by LogicFL for all NPE bugs in our experiments.
    - ``data``: contains analyzed results.
    - In each bug's directory, you can find following files.
    - ``logic-fl.pl``: semantic facts.
    - ``code-facts.pl``: code facts.
    - ``root-cause.txt``: text output of FL results.
    - ``fault_locs.txt``: fault locations in "<class_name> <line_num>\n" format.
* ``logicfl_facts``: combined collected facts for the NPE bugs.
* ``source-code``: source code of LogicFL and others used for empirical evaluation.
* ``config.properties.sample``: a sample of LogicFL's configuration file.
* ``lang``, ``math``, ``collections``, ``commons-io``, ``defects4j``: directories containing NPE bugs.
    * In each bug directory, you can find information about the bug.
        * ``config.properties``: configuration for LogicFL.
        * ``tests.json``: failed tests.
        * ``coverage.json``: code coverage obtained by executing the tests.
        * ``stack_traces.txt``: stored error messages and stack traces.
        * ``diff_<bud_id>.txt``: developer's patch. diff of buggy and fixed versions.
        * ``buggy`` and ``fixed``: source code of buggy and fixed versions.
        * ``lib``: compiled source and test code, as well as necessary libraries.

#### Requirements

To execute LogicFL, the followings are necessary.

* Java 17 or above.
* [SWI-Prolog](https://www.swi-prolog.org/) installed with [JPL](https://jpl7.org/). 
    - ``FaultLocalizer`` requires both of them installed properly.
    - Currently, ``localizer.sh`` script assumes that necessary files are in ``/usr/lib/swi-prolog/lib/x86_64-linux``.
    - We recommend to install SWI-Prolog with PPA on Linux machine (check [here](https://www.swi-prolog.org/build/PPA.html)).
        - If it is properly installed, you can find ``libjpl.so`` file under ``/usr/lib/swi-prolog/lib/x86_64-linux``.
* OpenAI API Key for FuseFL and AutoFL.

#### How to Execute LogicFL?

If you already prepared Java and SWI-Prolog with JPL, you can use script files to run LogicFL.

1. Place the replication package under ``/data/bug_db/subjects``. It will save the effort to update configuration.
    * If you need to change the path, you can use ``update_config.py``.
        * Set a new ``base.dir`` in the script and update it for each project.
2. Execute ``run_all.sh`` to run LogicFL for all 76 NPE bugs.
3. If you want to execute individual component for each NPE bug, follow these steps.
    1. Go to the bug's directory.
    2. Update configuration in ``config.properties`` if necessary.
    3. Execute ``coverage.sh`` for CoverageAnalyzer.
    4. Execute ``static_analyzer.sh``. 
        * It will produce ``*.pl``, probed code, compiled classes, and other temp. files in ``result``.
    5. Execute ``dynamic_analyzer.sh``.
        * It will add ``val/3`` predicates to ``logic-fl.pl``.
    6. Execute ``localizer.sh``.
        * It will generate FL results (``root-cause.txt``, ``fault_locs.txt``) in ``result``.

If you cannot properly install SWI-Prolog with JPL, you can try following steps to replace FaultLocalizer.
This method does not use JPL, but open a console for SWI-Prolog and load a necessary files directly.
Then you can ask queries to get results.

1. Open SWI-Prolog console in the root directory of the replication package.
    * You can either use GUI console, or execute ``swipl``.
2. Load necessary files.
    * ``?- consult('logicfl_rules.pl').``
    * ``?- consult('benchmark.pl').``
    * ``?- consult('logicfl_facts/lang_npe_1.pl').``
        * You can replace ``lang_npe_1`` with another bug Id.
3. Queries the KB.
    * ``?- find_npe_cause(Expr, Line, Cause, Loc).``
        * It will show each candidate one-by-one. You can use ``;`` to see the next one.
    * ``?- unique_locs(UniqueLocs), N = 10, top_n(N, UniqueLocs, TopN), fault_locs(lang_npe_7, FaultLocs),              verify(TopN, FaultLocs, Matched, Result), !.``
        * This will show the matched results for fault locations using the benchmark.        
        * You can change ``N`` to get Top-N candidates.
    * ``?- unique_causes(UniqueCauses), N = 10, top_n(N, UniqueCauses, TopN), fault_causes(lang_npe_7, FaultCauses), verify(TopN, FaultCauses, Matched, Result), !.``
        * This will show the results of NPE causes.

**Caution: You need to load facts for only one bug at a time. i.e., if you want to load another bug, you need to open another console for it. Otherwise, facts about the bugs are mixed, and get incorrect results.**

We also provide SWISH Notebook pages for NPE bugs. Due to double-blind review, we posted a sample notebook to a public instance of SWISH. You can check the following link.

- [LogicFL Sample SWISH Notebook for lang_npe_7](https://swish.swi-prolog.org/p/LogicFL_lang_npe_7.swinb)
- In this link you can also try different queries or modifying the rules.

#### Note

- Be careful with Bug IDs. ``commons-io`` is sometimes converted to ``commonsio`` due to naming rules of Prolog.
- We tested this replication package with a Linux machine with Ubuntu 20.04.6 installed.
    * Execution in other environments might not be smooth, especially for FaultLocalizer due to JPL.