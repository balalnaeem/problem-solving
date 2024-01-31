=begin
PROBLEM:
- we are given an array of integers
- each integer represents the id of a bird's type sighted
- we need to find out which bird type was sighted the most and return that bird type id
- if there is a tie between the most sighted types, return the one with the lowest id

IN:
array of integers
OUT:
integer

EXAMPLE:
arr = [1, 1, 2, 2, 3]
Here birds with type id 1 were sighted twice and birds with type id 2 were sighted twice as well. 1 type id is lower than 2 type id so we return 1.

arr =[1, 4, 4, 4, 5, 3]
Here birds with type id 4 were sighted 3 times. So we return 4.

It is clear

AL:
- Again we need some sort of loop
- We uniq + sort the array and then start our iteration.
- On each iteration we count the number of times this type exists in the original array
- we save those results in a hash
- from the hash, we can do a max_by and get the key value pair that's maximum and return the key
=end

def migration_bird(arr)
  sight_counts = {}
  arr.uniq.sort.each do |type_id|
    sight_counts[type_id] = arr.count(type_id)
  end


  sight_counts.max_by { |id, count| count }.first
end

arr = [1, 1, 2, 2, 5, 3]

p migration_bird(arr)