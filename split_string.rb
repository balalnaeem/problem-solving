=begin
PROBLEM
Input:  a string
Output: an array of strings

We need to split the strings into two characters. And if the string has odd number of characters, add an _ at the end

EXAMPLES:
'abc' =>  ['ab', 'c_']

'abcdef' => ['ab', 'cd', 'ef']

ASSUMPTIONS:
- strings will be just alpha characters from a-z
- there will be no spaces

AL:
- first we check the size of the string
- if it's odd number of characters append '_' to it.
- once that's done we need to iterate over the string
- while iterating keep building a string and inserting into a result array
- on each character we check the lenght of the string that we are building
- if the length is 2, we set it equal to empty string and add the current char
- and once the two chars have been added to the string we insert it into the result array

=end

def solution(str)
  result = []
  str += '_' if str.size % 2 != 0
  temp_str = ''
  str.each_char do |char|
    temp_str << char
    if temp_str.size == 2
      result << temp_str
      temp_str = ''
    end
  end

  result
end

str = 'abcdef'
print solution(str)