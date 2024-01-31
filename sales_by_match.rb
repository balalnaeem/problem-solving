=begin
- we have an array of integers
- we need to make pairs
- and then return the number of pairs possible

INPUT:
array of integers
OUTPUT:
an integer

EXAMPLE:
input = [1, 2, 1, 2, 1, 3, 2]
output = 2

There are only two possible pairs
1,1 and 2,2 the rest (1, 3, 2) can't be put into pairs

EXAMPLE 2:
input = [10, 20, 20, 10, 10, 30, 50, 10, 20]
output = 3

There are only 3 possible pairs
10,10
20,20
10,10
The rest (20, 30, 50) are not possible to put into pairs

AL:
- we can uniq the array and count the number of times each integer is in the array
- and then based on the count find the number of pairs
- but it doesn't seem very efficient
=end

def sockMerchant(n, ar)
  num_of_pairs = 0
  ar.uniq.each do |int|
    num_of_pairs += ar.count(int) / 2
  end
  num_of_pairs
end

puts sockMerchant(9, [10, 20, 20, 10, 10, 30, 50, 10, 20]) 