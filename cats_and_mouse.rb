=begin
PROBLEM:
- We are given 3 integers.
- First 2 are positions of Cat A and Cat B.
- And the third is position of Mouse C
- These positions are on straight line.
- And integers are the units of distances.
- We have to figure out which cat is the closest to the mouse.
- Or if they are both at equal distance

Input:
3 integers

Output:
'Cat A', 'Cat B', or 'Mouse C'
depending which cat is the closest
or
If they are both at equal distance to the Mouse position

AL:
- we get the distance from the mouse position for both of the cats
- distance should be abosulte number, not negative
- then
- if Cat A is greater distance return 'Cat A'
- if Cat B is greater distance return 'Cat B'
- if equal distance, then return 'Mouse C'
=end

def catAndMouse(x, y, z)
    distance_from_a =  (z - x).abs
    distance_from_b = (z - y).abs
    if distance_from_a < distance_from_b
        'Cat A'
    elsif distance_from_b < distance_from_a
        'Cat B'
    else
        'Mouse C'
    end
end

puts catAndMouse(1, 2, 3)