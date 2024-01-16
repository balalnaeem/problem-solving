=begin

PROBLEM:
input: a string of text (could be non alpha numberic characters)
output: return top 3 most used words in descending order of occurence

RULES:
- A word is a string of letters (A-Z) (can contain an apostopes "'"s)
- Apostrophes can appear anywhere in a word ('abc, abc', 'abc', ab'c are all valid)
- Any other letters are not part of the word and should be considered a whitespaced (even numbers)
- matches should be case insensitive, result should be lowercased
- Ties maybe broken arbitrarily
- return top 3, or 2, or 1, or an empty array if the text contains no words

Examples:

"In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

--> ["a", "of", "on"]

"e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"

--> ["e", "ddd", "aa"]

"  //wont won't won't"

--> ["won't", "wont"]

AL:
- downcase the whole string
- We can split the string at no letter+' chars
- After we done so we can could the occurence of each word in array
- Or we can sort the array based on the size of the word
- after we have all the words, we can iterate over the array of words and count the occurence of each word in the string
- We can store these results in a hash
- And from there returns the three words with the most count
=end

def top_3_words(text)
  word_pattern = /\b[a-zA-Z']+\b/
  words_arr = text.downcase.scan(word_pattern)
  return words_arr if words_arr.empty?

  hash_with_counts = {}
  words_arr.each { |word| hash_with_counts[word] = words_arr.count(word) }
  hash_with_counts.max_by(3) { |word, count| count }.map(&:first)
end

str1 = "a a c b b"

print top_3_words(str1)
