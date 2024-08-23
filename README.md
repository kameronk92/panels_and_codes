# panels_and_codes
Codewriting

You are given a string of digits panel and an array of strings codes .
Each string in the codes array consists of digits only and represents a code in the following format: "'index'pattern'", Where both index and pattern Should consist of at least one digit. Since there are several ways to split the code, let's consider them all in ascending order of index length and call them split-cases. For instance, for the code = "1324", the split-cases are:
• split-case 1: index = "1" and pattern = "324" ;
• split-case 2: index = "13" and pattern = "24" ;
• split-case 3: index = "132" and pattern = "4" .
For each code in codes and for every split-case of this code, check
whether a string pattern is present at the index position in the panel String. Return a string array consisting of results of these checks, where each element is either pattern, ifthis pattern is present in panel, or otherwise "not found"


Note: You are not expected to provide the most optimal solution, but a solution with time complexity not worse than 0(codes. length * max (codes) x panel. length) will fit within the execution time limit.


## Example
• For panel = "2311453915" and codes = ["0211", "639"]
the output should be solution (panel, codes) = ["not
found", "11", "not found", "39", "not found"] •

### Explanation:
Let's consider all possible codes:
• For codes [0] = "0211" there are three split-cases:
• index is 0 and pattern is "211" . Since
panel (0..2] = "231" * pattern, this is not a
valid code. The answer for this split-case is "not
found".
• index is 02 and pattern is "11".
panel [2..31 = "11" = pattern, So this is a valid
code. The answer for this split-case is "11".
• index is 021 and pattern is "1". As
panel (21] doesn't exist, this is not a valid code.
The answer for this split-case is "not found".
• For codes [1] = "639" there are two split-cases:
• index is 6 and pattern is "39"
panel (6. 7] = "39" = pattern, so this is a valid
code. The answer for this split-case is "39".
• index is 63 and pattern is "9". As
panel (63] doesn't exist, this is not a valid code.
The answer for this split-case is "not found"
The resulting array is ["not found", "11", "not found", "39", "not found"]
