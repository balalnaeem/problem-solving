=begin
PROBLEM:
Build a hashtag generator:
  - It must start with a hashtag(#)
  - All words must have their first letters capitalized
  - If the final result is longer than 140 characters, return false
  - If the input or the result is an empty string, return false

EXAMPLES:
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false

 
Unexplained:
- Spaces between words get eaten
- If the input string is not empty but only consists of spaces, that would also return false
- What about one letter words?
- What about non alphanumberic chatacters?

AL:
- guard clause for empty string
- split the string on whitesapce character
- map the resulting array and captalize each word
- join and return
- return false if empty
=end

def generateHashtag(str)
  return false if str.strip.empty?
  hashtag = str.split.map(&:capitalize).join.prepend("#")
  hashtag.size > 140 ? false : hashtag
end

str_1 = " Hello there thanks for trying my Kata"
str_2 = "    Hello     World   " 

print generateHashtag(str_1)
print generateHashtag(str_2)

