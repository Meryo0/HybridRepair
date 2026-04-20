# Chart-2 (Defects4J) — Analisi Completa per LogicFL

## 1. Cos'è Defects4J

**Defects4J** è un benchmark di bug reali estratti da progetti Java open-source, usato dalla comunità di ricerca per valutare strumenti di:
- **Fault Localization** (dove si trova il bug?)
- **Automated Program Repair** (come si corregge il bug?)
- **Test Generation** (quali test scoprono il bug?)

### Struttura concettuale di ogni bug in Defects4J

Ogni bug in Defects4J ha:
| Elemento | Descrizione |
|---|---|
| **Versione buggy** | Il codice sorgente con il bug reale |
| **Versione fixed** | Il codice sorgente corretto dallo sviluppatore originale |
| **Test suite** | L'intera suite di test del progetto (per evitare regressioni) |
| **Test che falliscono** | I test specifici che rilevano il bug |
| **Diff** | La patch dello sviluppatore (ground truth) |

---

## 2. Il Progetto Chart — JFreeChart

**Chart** = **JFreeChart**, libreria Java per la creazione di grafici.

- `DatasetUtilities` è la classe di utilità che calcola range, bound, statistiche sui dataset
- `XYIntervalSeriesCollection` è un tipo di dataset: ogni punto ha `x, xLow, xHigh, y, yLow, yHigh`

---

## 3. Il Bug Chart-2 — Panoramica

### File coinvolti

```
defects4j/Chart-2/
├── buggy/               ← codice sorgente con il bug
│   ├── source/          ← sorgenti Java buggy
│   └── tests/           ← test suite (passing + failing)
├── fixed/               ← codice sorgente corretto
├── lib/                 ← JAR compilati
├── tests.json           ← quali test falliscono
├── stack_traces.txt     ← stack trace delle eccezioni
├── diff_Chart-2.txt     ← patch dello sviluppatore (ground truth)
├── coverage.json        ← linee coperte dai test falliti
├── config.properties    ← configurazione LogicFL
└── result/              ← output di LogicFL
```

### Tipo di bug

**NullPointerException (NPE)** — i metodi `iterateDomainBounds()` e `iterateRangeBounds()` di `DatasetUtilities.java` restituiscono `null` quando tutti i valori nel dataset sono `NaN`. Il test chiama `.getLowerBound()` sulla variabile `r` che è `null` → crash.

---

## 4. I Due Test che Falliscono

### Classe di test
```
org.jfree.data.general.junit.DatasetUtilitiesTests
```
Estende `junit.framework.TestCase` → **JUnit 3** (ma lanciato da LogicFL con il runner JUnit 4).

---

### 4.1 `testBug2849731_2` (riga 1270–1288)

```java
public void testBug2849731_2() {
    XYIntervalSeriesCollection d = new XYIntervalSeriesCollection();
    XYIntervalSeries s = new XYIntervalSeries("S1");

    // Aggiunge: x=1.0, xLow=NaN, xHigh=NaN, y=NaN, yLow=1.5, yHigh=NaN
    s.add(1.0, Double.NaN, Double.NaN, Double.NaN, 1.5, Double.NaN);
    d.addSeries(s);

    // Dovrebbe tornare Range(1.0, 1.0) — il valore x=1.0 esiste
    Range r = DatasetUtilities.iterateDomainBounds(d);

    // CRASH: r è null → NPE a riga 1276
    assertEquals(1.0, r.getLowerBound(), EPSILON);
    assertEquals(1.0, r.getUpperBound(), EPSILON);
    // ... (altri 2 step con più dati)
}
```

**Perché fallisce**: il codice buggy legge solo `getStartXValue()` e `getEndXValue()` (xLow/xHigh), ma **non legge il valore x centrale** (`getXValue()`). Se xLow=NaN e xHigh=NaN, non aggiorna mai `minimum`/`maximum` → ritorna `null`.

---

### 4.2 `testBug2849731_3` (riga 1293–1311)

```java
public void testBug2849731_3() {
    XYIntervalSeriesCollection d = new XYIntervalSeriesCollection();
    XYIntervalSeries s = new XYIntervalSeries("S1");

    // Aggiunge: x=1.0, xLow=NaN, xHigh=NaN, y=1.5, yLow=NaN, yHigh=NaN
    s.add(1.0, Double.NaN, Double.NaN, 1.5, Double.NaN, Double.NaN);
    d.addSeries(s);

    // Dovrebbe tornare Range(1.5, 1.5) — il valore y=1.5 esiste
    Range r = DatasetUtilities.iterateRangeBounds(d);

    // CRASH: r è null → NPE a riga 1299
    assertEquals(1.5, r.getLowerBound(), EPSILON);
    assertEquals(1.5, r.getUpperBound(), EPSILON);
    // ... (altri 2 step con più dati)
}
```

**Perché fallisce**: stesso pattern — legge solo `getStartYValue()` e `getEndYValue()` (yLow/yHigh), ma **non legge il valore y centrale** (`getYValue()`).

---

## 5. Il Codice Buggy vs Fixed

### Codice buggy — `iterateDomainBounds()` (righe 750–784)

```java
// BUGGY
if (includeInterval && dataset instanceof IntervalXYDataset) {
    IntervalXYDataset intervalXYData = (IntervalXYDataset) dataset;
    for (int series = 0; series < seriesCount; series++) {
        int itemCount = dataset.getItemCount(series);
        for (int item = 0; item < itemCount; item++) {
            lvalue = intervalXYData.getStartXValue(series, item); // xLow
            uvalue = intervalXYData.getEndXValue(series, item);   // xHigh
            if (!Double.isNaN(lvalue)) {
                minimum = Math.min(minimum, lvalue);
                // BUG 1: manca maximum = Math.max(maximum, lvalue)
            }
            if (!Double.isNaN(uvalue)) {
                // BUG 2: manca minimum = Math.min(minimum, uvalue)
                maximum = Math.max(maximum, uvalue);
            }
            // BUG 3: manca lettura di getXValue() (il punto centrale x)
        }
    }
}
// Se tutti NaN → minimum=+∞ > maximum=-∞ → return null (riga 780)
```

### Codice buggy — `iterateRangeBounds()` (righe 1236–1252)

```java
// BUGGY — stesso pattern per l'asse Y
if (includeInterval && dataset instanceof IntervalXYDataset) {
    IntervalXYDataset ixyd = (IntervalXYDataset) dataset;
    for (int series = 0; series < seriesCount; series++) {
        int itemCount = dataset.getItemCount(series);
        for (int item = 0; item < itemCount; item++) {
            double lvalue = ixyd.getStartYValue(series, item); // yLow
            double uvalue = ixyd.getEndYValue(series, item);   // yHigh
            if (!Double.isNaN(lvalue)) {
                minimum = Math.min(minimum, lvalue);
            }
            if (!Double.isNaN(uvalue)) {
                maximum = Math.max(maximum, uvalue);
            }
            // BUG: manca lettura di getYValue() (il punto centrale y)
        }
    }
}
// → return null (riga 1284)
```

### La Patch dello Sviluppatore

```diff
// iterateDomainBounds:
+                    double value = intervalXYData.getXValue(series, item);
                     lvalue = intervalXYData.getStartXValue(series, item);
                     uvalue = intervalXYData.getEndXValue(series, item);
+                    if (!Double.isNaN(value)) {
+                        minimum = Math.min(minimum, value);
+                        maximum = Math.max(maximum, value);
+                    }
                     if (!Double.isNaN(lvalue)) {
                         minimum = Math.min(minimum, lvalue);
+                        maximum = Math.max(maximum, lvalue);
                     }
                     if (!Double.isNaN(uvalue)) {
+                        minimum = Math.min(minimum, uvalue);
                         maximum = Math.max(maximum, uvalue);
                     }

// iterateRangeBounds: identico ma con getYValue/getStartYValue/getEndYValue
```

---

## 6. La Suite di Test — Struttura e Scopo

### Perché esiste tutta la suite?

Serve per rilevare **regressioni**: la patch non deve rompere i test che prima passavano.

In LogicFL (`config.properties`):
```properties
source.path=buggy/source:fixed/tests
class.path=...:lib/Chart-2_buggy_src.jar:lib/Chart-2_fixed_test.jar
```
→ Si usa il **sorgente buggy** con i **test della versione fixed** (che includono i due nuovi test).

### Struttura della classe di test

```
DatasetUtilitiesTests extends TestCase (JUnit 3)
│
├── suite()                     ← entry point per scoprire i test
├── testJava()                  ← verifica Math.min/max con NaN
├── testFindDomainBounds()       ─┐
├── testFindDomainBounds2()      ─┤ testano findDomainBounds()
├── testFindDomainBounds3()      ─┘
├── testFindDomainBounds_NaN()
├── testIterateDomainBounds()
├── testIterateDomainBounds_NaN()
├── testIterateDomainBounds_NaN2()
├── testFindRangeBounds()
├── testFindRangeBounds2()
├── testIterateRangeBounds()
├── testIterateRangeBounds2..4()
├── ... (molti altri)
├── testBug2849731()            ← stub vuoto (flaky, commentato in D4J)
├── testBug2849731_2()          ← ❌ FAILING (NPE riga 1276)
└── testBug2849731_3()          ← ❌ FAILING (NPE riga 1299)
```

### Nota JUnit 3 vs JUnit 4

- I metodi che iniziano con `test` vengono scoperti automaticamente
- Non ci sono annotazioni `@Test`
- LogicFL usa `JUnit4TestRunner` che wrappa `JUnit38ClassRunner`

---

## 7. La Pipeline LogicFL — Step by Step

```
tests.json + buggy/source + fixed/tests
            │
            ▼
    [1] CoverageAnalyzer     (coverage.sh)
            │  → coverage.json, jacoco.exec
            ▼
    [2] StaticAnalyzer       (static_analyzer.sh)
            │  → code-facts.pl (fatti Prolog statici)
            ▼
    [3] DynamicAnalyzer      (dynamic_analyzer.sh)
            │  → aggiunge val/3 a logic-fl.pl
            ▼
    [4] FaultLocalizer       (localizer.sh / SWI-Prolog)
            │
            ▼
    root_cause.txt + fault_locs.txt
```

---

### Step 1 — CoverageAnalyzer

**Cosa fa**: esegue i failing tests con **JaCoCo** e raccoglie le linee coperte.

**Output `coverage.json`** (estratto):
```json
{
  "className": "org.jfree.data.general.DatasetUtilities",
  "covered": [726, 742, 745, 746, 747, 750, 751, 752, 753,
              754, 755, 756, 757, 760, 765, 779, 780,
              1213, 1231, 1232, 1233, 1236, 1238, ...]
}
```

Solo le classi/linee coperte dai failing tests vengono analizzate dagli step successivi. La riga **780** è dove `iterateDomainBounds` ritorna `null`; **1284** è dove `iterateRangeBounds` ritorna `null`.

---

### Step 2 — StaticAnalyzer

**Cosa fa**: analizza staticamente il bytecode/sorgente e produce **fatti Prolog** che rappresentano la struttura del codice.

**Output**: `code-facts.pl` (285 KB)

#### Tipi di fatti prodotti

| Fatto Prolog | Significato |
|---|---|
| `method_invoc(Expr, Method, Line)` | Chiamata a metodo |
| `assign(Var, Expr, Line)` | Assegnazione variabile |
| `argument(Expr, N, CallExpr)` | N-esimo argomento di una chiamata |
| `return(Expr, Method, Line)` | Valore di ritorno di un metodo |
| `ref(Var, Expr, Line)` | Variabile usata come receiver di una chiamata |
| `param(Param, N, Method)` | N-esimo parametro di un metodo |

#### Esempio dal codice del test (riga 1275–1276)

```prolog
% Range r = DatasetUtilities.iterateDomainBounds(d);  [riga 1275]
assign(v_r_207, dataset_utilities_tests_1_expr8, line(dataset_utilities_tests_1, 1275)).
method_invoc(dataset_utilities_tests_1_expr8, m_iterate_domain_bounds_89, line(dataset_utilities_tests_1, 1275)).
argument(v_d_205, 1, dataset_utilities_tests_1_expr8).

% assertEquals(1.0, r.getLowerBound(), EPSILON);  [riga 1276]
% r (v_r_207) è il receiver di getLowerBound() — se è null → NPE
method_invoc(dataset_utilities_tests_1_expr10, m_get_lower_bound_214, line(dataset_utilities_tests_1, 1276)).
ref(v_r_207, dataset_utilities_tests_1_expr10, line(dataset_utilities_tests_1, 1276)).
```

#### Esempio dal sorgente buggy

```prolog
% return null  (riga 780 di DatasetUtilities)
return(dataset_utilities_1_literal5, m_iterate_domain_bounds_90, line(dataset_utilities_1, 780)).

% return null  (riga 1284 di DatasetUtilities)
return(dataset_utilities_1_literal9, m_iterate_range_bounds_108, line(dataset_utilities_1, 1284)).
```
`literal5` e `literal9` sono identificatori sintetici per la costante `null`.

---

### Step 3 — DynamicAnalyzer

**Cosa fa**: esegue i failing tests con codice **strumentato** (probe inseriti nelle linee coperte) e raccoglie i valori a runtime.

**Output**: aggiunge fatti `val/3` a `logic-fl.pl`

```prolog
%%% Values
val(dataset_utilities_1_expr1,  null, line(dataset_utilities_1, 726)).
val(dataset_utilities_1_expr23, null, line(dataset_utilities_1, 1213)).
val(dataset_utilities_tests_1_expr8,  null, line(dataset_utilities_tests_1, 1275)).
val(v_r_207, null, line(dataset_utilities_tests_1, 1276)).
val(dataset_utilities_tests_1_expr15, null, line(dataset_utilities_tests_1, 1298)).
val(v_r_211, null, line(dataset_utilities_tests_1, 1299)).
```

Anche gli **stack trace** vengono tradotti in Prolog:

```prolog
test_failure(failure_1, 'org.jfree.data.general.junit.DatasetUtilitiesTests', 'testBug2849731_2').
trace(trace_1, failure_1, m_test_bug2849731_2_208,
      line(dataset_utilities_tests_1, 1276), failure_1, target).

test_failure(failure_2, 'org.jfree.data.general.junit.DatasetUtilitiesTests', 'testBug2849731_3').
trace(trace_17, failure_2, m_test_bug2849731_3_215,
      line(dataset_utilities_tests_1, 1299), failure_2, target).
```

---

### Step 4 — FaultLocalizer (SWI-Prolog)

**Cosa fa**: carica tutti i fatti in SWI-Prolog e applica le regole di `npe-rules.pl`.

**Catena di inferenza** (semplificata):
```
test_failure(failure_1, ..., 'testBug2849731_2')
  → trace NPE a riga 1276 su v_r_207
  → val(v_r_207, null, ...)
  → v_r_207 assegnata da expr8 (riga 1275)
  → expr8 chiama m_iterate_domain_bounds_89
    → chiama m_iterate_domain_bounds_90
      → può restituire dataset_utilities_1_literal5 (null) alla riga 780
  → CAUSA: DatasetUtilities, riga 780
```

**Output `root_cause.txt`**:
```
Fault Localization Results
NPE at line(dataset_utilities_tests_1, 1276) / Null Expression - v_r_207[r]
     can be caused by
dataset_utilities_1_literal5[null] - line(dataset_utilities_1, 780).

NPE at line(dataset_utilities_tests_1, 1299) / Null Expression - v_r_211[r]
     can be caused by
dataset_utilities_1_literal9[null] - line(dataset_utilities_1, 1284).
```

**Output `fault_locs.txt`**:
```
org.jfree.data.general.DatasetUtilities 780
org.jfree.data.general.DatasetUtilities 1284
```

---

## 8. Cosa Deve Fare la Patch LLM

LogicFL fornisce all'LLM:
- **Classe**: `org.jfree.data.general.DatasetUtilities`
- **Righe da correggere**: 780 (in `iterateDomainBounds`) e 1284 (in `iterateRangeBounds`)
- **Causa**: `return null` quando tutti i valori sono NaN, perché il valore centrale x/y non viene letto

La patch deve:
1. In `iterateDomainBounds()`: aggiungere lettura di `getXValue()` e correggere l'asimmetria lvalue/uvalue
2. In `iterateRangeBounds()`: stesso pattern con `getYValue()`

**Verifica**: `testBug2849731_2` e `testBug2849731_3` devono passare; tutti gli altri test non devono regredire.

---

## 9. Riepilogo Visivo

```
  buggy/source/DatasetUtilities.java
  ┌─ iterateDomainBounds(): non legge getXValue() → return null (riga 780)
  └─ iterateRangeBounds():  non legge getYValue() → return null (riga 1284)
           │
           ▼ failing tests
  testBug2849731_2 → NPE riga 1276 (r.getLowerBound() su r=null)
  testBug2849731_3 → NPE riga 1299 (r.getLowerBound() su r=null)
           │
           ▼ LogicFL Pipeline
  1. CoverageAnalyzer  → coverage.json   (linee coperte)
  2. StaticAnalyzer    → code-facts.pl   (fatti strutturali Prolog)
  3. DynamicAnalyzer   → logic-fl.pl     (+ val/3 con valori null)
  4. FaultLocalizer    → Prolog query
           │
           ▼ output
  DatasetUtilities riga 780
  DatasetUtilities riga 1284
           │
           ▼ LLM
  Genera patch → verifica con test suite
```

---

## 10. Tabella Riepilogativa dei File Chiave

| File | Ruolo |
|---|---|
| `tests.json` | Lista dei test falliti (classe + nome metodo) |
| `coverage.json` | Linee coperte dai failing tests |
| `stack_traces.txt` | Stack trace human-readable dell'NPE |
| `diff_Chart-2.txt` | Patch dello sviluppatore (ground truth) |
| `config.properties` | Config LogicFL (path, classpath, target prefix) |
| `result/code-facts.pl` | Fatti statici Prolog (struttura del codice) |
| `result/logic-fl.pl` | Fatti statici + dinamici (include `val/3` e `trace`) |
| `result/npe.traces.json` | Stack trace in JSON per DynamicAnalyzer |
| `result/root_cause.txt` | Output testuale di FaultLocalizer |
| `result/fault_locs.txt` | Fault locations: `Classe riga` |
