=begin
PROBLEM:
- we are given an array of integers
- determine the number (i, j) pairs
  - where i < j
  - and arr[i] + arr[j] is divisible by k

EXAMPLE:
INPUT:
n = 6
k = 3
ar = [1, 3, 2, 6, 1, 2]

OUTPUT:
5

EXPLANATION:
There are 5 valid pairs where ar[i], ar[j] sum equals an integer divisible by K:
ar[0] + ar[2] 
ar[0] + ar[5]
ar[1] + ar[3]
ar[2] + ar[4]
ar[4] + ar[5]

AL:
- we need to iterate over the array
- on each iteration, we need to start another loop
- on this loop we compare the current int with every other integer in the array
- if their sums equals something that's divisible by k, we save that pair
- count the pairs and return that
=end

def divisible_sum_pairs(n, k, ar)
  # Write your code here
  valid_pairs = 0
  ar.each_with_index do |int, idx|
    ar[idx+1..-1].each do |other_int|
      valid_pairs += 1 if (int + other_int) % k == 0
    end
  end
  
  valid_pairs
end

n = 6
k = 3
ar = [1, 3, 2, 6, 1, 2]

puts divisible_sum_pairs(n, k , ar)