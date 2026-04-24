import re

output = """
JUnit version 4.12
....
Time: 0.015
There was 1 failure:
1) testSolve(org.apache.commons.math.analysis.solvers.BisectionSolverTest)
java.lang.NullPointerException
	at org.apache.commons.math.analysis.solvers.BisectionSolver.solve(BisectionSolver.java:88)
	at org.apache.commons.math.analysis.solvers.BisectionSolver.solve(BisectionSolver.java:72)
	at org.apache.commons.math.analysis.solvers.BisectionSolverTest.testSolve(BisectionSolverTest.java:44)

FAILURES!!!
Tests run: 4,  Failures: 1
"""

def extract(output):
    # Match the block from "There was X failure:" to "FAILURES!!!"
    match = re.search(r"There (?:was|were) \d+ failure[s]?:(.*?)\nFAILURES!!!", output, re.DOTALL)
    if match:
        return match.group(1).strip()
    return ""
    
print(extract(output))
