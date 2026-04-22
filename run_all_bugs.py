import os
import subprocess
import json
from pathlib import Path

def main():
    workspace_dir = Path("/home/mario/Desktop/LogicFL")
    defects4j_dir = workspace_dir / "defects4j"
    
    if not defects4j_dir.exists():
        print(f"Cartella {defects4j_dir} non trovata.")
        return

    # Trova tutti i bug (cartelle che contengono un trattino come 'Chart-2')
    bugs = sorted([d.name for d in defects4j_dir.iterdir() if d.is_dir() and "-" in d.name])
    
    print(f"Trovati {len(bugs)} bug da analizzare: {', '.join(bugs)}")
    
    results = {}

    for bug in bugs:
        print(f"\n{'='*60}")
        print(f"Esecuzione pipeline per {bug}...")
        print(f"{'='*60}")
        
        try:
            # Eseguiamo lo script run_pipeline.py. check=False fa sì che non si fermi in caso di exit code diverso da 0
            subprocess.run(
                ["python", "run_pipeline.py", "--bug", bug],
                cwd=workspace_dir,
                check=False
            )
        except Exception as e:
            print(f"Errore critico non gestito durante l'esecuzione di {bug}: {e}")
        
        # Verifichiamo il risultato finale leggendo il final_report.json
        report_path = workspace_dir / "pipeline_results" / bug / "final_report.json"
        if report_path.exists():
            try:
                with open(report_path, 'r', encoding='utf-8') as f:
                    report = json.load(f)
                    success = report.get("success", False)
                    results[bug] = "PASS" if success else "FAIL"
            except Exception:
                results[bug] = "ERROR (Invalid Report)"
        else:
            results[bug] = "ERROR (No Report Generated)"
            
    # Stampa del riepilogo
    print("\n" + "#"*60)
    print(" RIEPILOGO FINALE RISULTATI")
    print("#"*60)
    
    passed = []
    failed = []
    errors = []
    
    for bug, status in results.items():
        if status == "PASS":
            passed.append(bug)
        elif status == "FAIL":
            failed.append(bug)
        else:
            errors.append(bug)
            
    # Ordiniamo e stampiamo in blocchi
    print("\n✅ BUG RIPARATI (PASS):")
    for b in passed:
        print(f"   - {b}")
        
    print("\n❌ BUG NON RIPARATI (FAIL):")
    for b in failed:
        print(f"   - {b}")
        
    if errors:
        print("\n⚠️ BUG CON ERRORI DI ESECUZIONE:")
        for b in errors:
            print(f"   - {b}: {results[b]}")
            
    print("\n" + "-"*60)
    print("Statistiche Complessive:")
    print(f"  Totale analizzati: {len(bugs)}")
    print(f"  Riparati con successo: {len(passed)}")
    print(f"  Falliti / Nessuna patch trovata: {len(failed)}")
    print(f"  Errori interni: {len(errors)}")
    print("-" * 60)

if __name__ == "__main__":
    main()
