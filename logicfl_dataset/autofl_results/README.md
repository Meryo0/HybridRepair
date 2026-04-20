# AutoFL Raw Data

## dataset
- failing_tests
- field_snippet.json
- snippet.json
- test_snippet.json

These 4 files in each bugs are needed to run AutoFL

## result

### test_*/
AutoFL output by running AutoFL 10 times

### test_*_score.json
Each output of `compute_scores.py`

### test_scores.json
Combined output of `compute_score.py`

### test_*_score_matched.json
Compare result between output result of AutoFL and benchmark

### test_scores_matched.json 
Compare result between combined output result of AutoFL and benchmark

## How to Compare
- Which one in AutoFL result is also in benchmark(answer) -> Matched
- Which one NOT in AutoFL result is in benchmark(answer) -> Missed
- Which one in AutoFL result is NOT in benchmark(answer) -> Wrong

- Matched > 0 && Missed == 0 -> Matched
- Matched > 0 && Missed > 0 -> Partially Matched
- Matched == 0 -> Not Matched


