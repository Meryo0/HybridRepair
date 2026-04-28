# Analisi delle Strategie SOTA per Automated Program Repair (APR)

L'analisi degli 8 paper scientifici forniti rivela un'evoluzione chiara nel campo dell'APR basato su Large Language Models (LLMs). Si sta passando da un approccio "end-to-end" (dove l'LLM traduce il codice buggy in codice fixato) a framework interattivi, agentici e aumentati.

Ecco una scomposizione critica delle strategie emerse e come possono guidare la riscrittura di **HybridRepair**.

---

## 1. Analisi Critica delle Strategie per Paper

### 🤖 1. Il Paradigma dell'Agente Autonomo
**Paper:** `RepairAgent`, `ReinFix`
- **Strategia:** Invece di chiedere all'LLM di generare direttamente la patch, l'LLM viene trattato come un **Agente Autonomo** dotato di tool. L'agente può invocare comandi per esplorare il codice (`read_file`), cercare ingredienti (`search_code`), testare ipotesi e validare le patch. `ReinFix` usa questo approccio per cercare attivamente *Repair Ingredients* (variabili locali o contesti storici).
- **Pro:** Emula il vero comportamento di un dev umano, riduce drasticamente gli errori dovuti a "tunnel vision" (mancanza di contesto).
- **Contro:** Costo in token molto alto (molti loop di ragionamento prima della patch) e necessità di orchestrare i tool in modo deterministico (es. macchine a stati finiti in RepairAgent).

### 💬 2. Feedback Conversazionale e Apprendimento dai Fallimenti
**Paper:** `ChatRepair`, `ThinkRepair`
- **Strategia:** L'APR diventa una conversazione. `ChatRepair` non butta via le patch fallite, ma le reinserisce nel prompt insieme ai messaggi d'errore (compiler/test) chiedendo all'LLM di non ripetere l'errore. `ThinkRepair` sfrutta il *Chain-of-Thought (CoT)* e il few-shot learning per forzare l'LLM a scomporre il problema in passi logici prima di emettere codice.
- **Pro:** Riduce il campionamento ripetuto di patch errate. Sfrutta le patch "plausibili" per generare variazioni più vicine alla soluzione.

### 🧩 3. Retrieval-Augmented Generation (RAG) & Code Ingredients
**Paper:** `RAP-Gen`, `FitRepair`, `ReinFix`
- **Strategia:** La *Plastic Surgery Hypothesis* afferma che gli elementi per risolvere un bug esistono già nella codebase. `RAP-Gen` e `FitRepair` recuperano tramite Information Retrieval (IR) o Analisi Statica gli identificatori rilevanti, variabili locali, o pattern storici simili (da fix precedenti) e li "iniettano" nel prompt dell'LLM o li usano per il fine-tuning.
- **Pro:** Ancora (grounding) l'LLM alla realtà della codebase, prevenendo allucinazioni di metodi e variabili inesistenti.

### 📝 4. Specification-Centric Repair
**Paper:** `VibeRepair`
- **Strategia:** Un cambio di paradigma totale: invece di riparare il *codice*, l'LLM ripara le *specifiche di comportamento*. Prima deduce cosa il codice buggy *fa*, poi inferisce cosa *dovrebbe fare* (Intended Behavior), corregge la specifica in linguaggio naturale, e solo infine sintetizza il codice dalla specifica corretta.
- **Pro:** Eccellente per bug di logica complessa, dove l'LLM tende altrimenti a fare "pattern matching" superficiale.

### 🎯 5. Zero-Shot Cloze-Style (Infilling)
**Paper:** `AlphaRepair`
- **Strategia:** Abbandona i dataset storici (spesso rumorosi) e usa l'addestramento pre-esistente dei modelli di codice in modalità *Fill-In-The-Middle* (FIM). Cancella la riga buggata e chiede all'LLM di predirla basandosi sul contesto precedente e successivo.
- **Pro:** Molto più veloce e meno prono a inquinamento da dataset storici. Costringe la patch a essere sintatticamente coerente col contesto locale.

---

## 2. Roadmap per la Riscrittura di HybridRepair

Sulla base di queste scoperte, se decidiamo di riscrivere e modernizzare l'architettura di HybridRepair, ecco i pilastri architetturali da implementare:

### Pilastro A: Da Actor-Critic a LLM Agent (Ispirato a RepairAgent / ReinFix)
Il loop attuale in `run_pipeline.py` è lineare e monolitico. Il nuovo tool non dovrebbe "sparare" una patch in un colpo solo.
*   **Azione:** Implementa un ciclo ReAct (Reasoning and Acting). Dai all'LLM una serie di strumenti (Tool-Use):
    *   `static_analysis(var_name)`: per trovare definizioni.
    *   `compile_check(snippet)`: per validare sintassi o import.
    *   `read_method(fqcn)`: per espandere il contesto.
*   Il modello decide autonomamente quando ha abbastanza informazioni per invocare `apply_patch()`.

### Pilastro B: Iniezione Dinamica degli Ingredienti (Ispirato a RAP-Gen / FitRepair)
Il tuo vecchio framework perdeva colpi su API o variabili che l'LLM non vedeva.
*   **Azione:** Prima della fase di fix, un modulo estrattivo (Analisi Statica o RAG vettoriale) scansiona il file buggato e raccoglie:
    1. Metodi pubblici della classe corrente.
    2. Variabili di classe e locali visibili in quello scope.
    3. Firme di classi importate.
*   Questi "Repair Ingredients" vengono inseriti forzatamente nel prompt di sistema (API Grounding proattivo, non reattivo).

### Pilastro C: Fasi Separate per Specifica vs Implementazione (Ispirato a VibeRepair / ThinkRepair)
Oggi la pipeline fa fare tutto all'LLM nel primo colpo, ottenendo un blocco `FILE:...`.
*   **Azione:** Dividere la generazione in due step:
    1. **Thinking/Specification Phase:** L'LLM riceve il bug e i fallimenti dei test, e deve generare un'analisi del Root Cause e il comportamento atteso in linguaggio naturale (CoT). Nessuna patch.
    2. **Execution Phase:** L'LLM riceve la sua stessa analisi e genera un *Diff Chirurgico* (stile Cloze / AlphaRepair), rimpiazzando solo l'AST node necessario, invece dell'intero metodo.

### Pilastro D: Memoria a Breve Termine e "Conversation" (Ispirato a ChatRepair)
Il tuo ciclo attuale ha un critic, ma a volte l'LLM ripete gli stessi errori.
*   **Azione:** Ogni tentativo di patch fallito (insieme al suo log di errore di JUnit o `javac`) non deve essere semplicemente uno step perso, ma diventa parte dello storico della conversazione. Il prompt al tentativo $N$ deve iniziare con: *"I tuoi precedenti tentativi X e Y hanno fallito con questo errore. Non usare l'approccio Z. Trova una via alternativa"*.

---

### Conclusione Strategica

Riscrivere **HybridRepair** seguendo questi 4 pilastri significherebbe evolverlo da una "Pipeline Procedurale" a un **"Ecosistema Agente"**.
In questo ecosistema:
1. LogicFL fornisce la scintilla iniziale (Fault Localization).
2. L'LLM-Agent usa strumenti di AST e RAG per recuperare il contesto esatto (Ingredients).
3. Ragiona sulle specifiche prima di scrivere il codice (VibeRepair/ThinkRepair).
4. Esegue il fix in modalità infilling/diff (AlphaRepair).
5. Apprende iterativamente dai test falliti (ChatRepair).
