import re

_METHOD_CALL_RE = re.compile(r"(\w+)\s*\(")
print(_METHOD_CALL_RE.findall("solve(f, min, max)"))
print(_METHOD_CALL_RE.findall("this.solve(f, min, max)"))
print(_METHOD_CALL_RE.findall("MathUtils.solve(f, min, max)"))
