
# Run virtual env
    # cd to Regex
    # python3 -m venv venv
    # source venv/bin/activate

# Basic Metacharacters
   - . (dot): Matches any single character except a newline.
   - Example: a.b matches "acb" and "a_b" but not "ab".
   - ^ (caret): Matches the start of a line or string.
   - Example: ^hello matches "hello" only if it's at the start.
   - $: Matches the end of a line or string.
   - Example: world$ matches "world" only if it's at the end.
   - \: Escapes the following character, allowing you to match literal metacharacters.
   - Example: \. matches a literal dot . instead of "any character".
# Quantifiers
   - *: Matches 0 or more repetitions of the preceding character or group.
   - Example: a* matches "a", "aa", or "" (empty string).
   - +: Matches 1 or more repetitions.
   - Example: a+ matches "a", "aa", but not "".
   - ?: Matches 0 or 1 occurrence.
   - Example: colou?r matches "color" and "colour".
   - {n}: Matches exactly n repetitions of the preceding character.
   - Example: a{3} matches "aaa".
   - {n,}: Matches n or more repetitions.
   - Example: a{2,} matches "aa", "aaa", etc.
   - {n,m}: Matches between n and m repetitions.
   - Example: a{2,4} matches "aa", "aaa", or "aaaa".
# Character Classes
   - [...]: Matches any one character within the brackets.
   - Example: [aeiou] matches any vowel.
   - [^...]: Matches any one character not in the brackets.
   - Example: [^0-9] matches any non-digit character.
   - \d: Matches any digit (equivalent to [0-9]).
   - \D: Matches any non-digit character.
   - \w: Matches any "word" character (alphanumeric + underscore).
   - \W: Matches any non-word character.
   - \s: Matches any whitespace (space, tab, newline).
   - \S: Matches any non-whitespace character.
# Anchors
   - ^ and $: These mark the beginning and end of lines, as mentioned above.
   - \b: Matches a word boundary.
   - Example: \bcat\b matches "cat" as a separate word.
   - \B: Matches a position that is not a word boundary.
   - Example: \Bcat\B matches "cat" when it’s part of another word, like "scattered".
# Groups and Capturing
   - (...): Creates a group for capturing.
   - Example: (abc)+ matches "abcabc" as one group.
   - (?:...): Non-capturing group; groups without storing the match.
   - Example: (?:abc)+ matches "abcabc" but doesn’t store it.
# Alternation
   - |: Acts as an OR operator.
   - Example: cat|dog matches either "cat" or "dog".
# Lookaheads and Lookbehinds
   - (?=...): Positive lookahead; ensures that what follows matches the pattern without including it in the result.
   - Example: \d(?=px) matches a digit followed by "px".
   - (?!...): Negative lookahead; ensures that what follows does not match the pattern.
   - Example: \d(?!px) matches a digit not followed by "px".
   - (?<=...): Positive lookbehind; ensures that what precedes matches the pattern.
   - Example: (?<=\$)\d+ matches digits preceded by a "$".
   - (?<!...): Negative lookbehind; ensures that what precedes does not match the pattern.
   - Example: (?<!\$)\d+ matches digits not preceded by a "$".