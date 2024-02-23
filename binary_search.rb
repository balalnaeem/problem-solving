=begin
AL:
1. Let min = 0 and max = n-1.
2. If max < min, then stop: target is not present in array. Return -1.
3. Compute guess as the average of max and min, rounded down (so that it is an integer).
4. If array[guess] equals target, then stop. You found it! Return guess.
5. If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
6. Otherwise, the guess was too high. Set max = guess - 1.
7. Go back to step 2.
=end

require 'byebug'

def bin_search(array, target)
    min = 0
    max = array.size - 1

    while min <= max do
        guess = (min + max) / 2
        return guess if array[guess] == target
        if array[guess] < target
            min = guess + 1
        else
            max = guess - 1
        end
    end

    -1
end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

puts bin_search(primes, 73)
