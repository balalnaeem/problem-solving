=begin
PROBLEM:
Lily wants to share with Ron segments of chocolate. Each segment has a number on it.
But with following conditions:
- segments shared total up the Ron's birth day
- number of segments is Ron's birth month

We need to find out in how many ways she can share the chocolate segments with Ron
INPUT:
- array of integers (chococlate segments)
- integer (Ron's birth day)
- integer (Ron's birth month)

OUTPU:
- integer

Basically, we have an array of integers
- we need to find out how many sub arrays we can create that
- has the sum equal to Ron's birth day
- length equal to Ron's birth month

EXAMPLE:
-input [1, 2, 1, 3, 2]
sub arrays with the length of 2
[
  [1, 2], [1, 1], [1, 3], [1, 2],
  [2, 1], [2, 3], [2, 2],
  [1, 3], [1 2],
  [3, 2]
]
-output


AL:
- We need to iterate over the array and get all the possible sub arrays
- How do we get all the possibe sub arrays?
  - because it's a chocolate bar, we need to get consecutive slices of arrays on each iteration (slice size is of course m)
- Once we have all the sub arrays, we can filter according to these two conditions
  1. subarray sum total is the Ron's birth day
  2. subarray length is the Ron's birth month
- then we return the size of the array that contains the sub array
=end

def birthday(s, d, m)
  sub_arrays = []
  s.each_with_index do |_, idx|
    sub_arrays << s.slice(idx, m)
  end

  sub_arrays.filter do |sub_arr|
    sub_arr.size == m && sub_arr.sum == d
  end.uniq.size

s = [2, 2, 1, 3, 2]
d = 4
m = 2

print birthday(s, d, m)