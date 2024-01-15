=begin
  USING PEDAC AGAIN
PROBLEM:
  - Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.
  - The array that we get is a two dimensional array
EXAMPLE:
  - INPUT: [[1,2,3], [4,5,6], [7,8,9]]
  - OUTPUT: [1,2,3,6,9,8,7,4,5]
    So we imagine we arrange the sub arrays on top of each other as follows
  [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ]

  so elements we returned are in this order:
  [
    0[0],
    0[1],
    0[2],
    1[2]
    2[2],
    2[1],
    2[0],
    1[0],
    1[1]
  ]
2)
  - INPUT: [[1, 2, 3, 1], [4, 5, 6, 4], [7, 8, 9, 7], [7, 8, 9, 7]]
  - OUTPUT: [1, 2, 3, 1, 4, 7, 7, 9, 8, 7, 7, 4, 5, 6, 4]
So we imagine we arrange the sub arrays on top of each other as follows:
  [
    [1, 2, 3, 1],
    [4, 5, 6, 4],
    [7, 8, 9, 7],
    [7, 8, 9, 7],
  ]

=end

arr =   [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
]

def snail(arr)
  output = []
  
  step = 0

  while !arr.empty?
    case step
    when 0
      output << arr.shift
    when 1
      output << arr.map(&:pop)
    when 2
      output << arr.pop.reverse
    when 3
      output << arr.map(&:shift).reverse
    end

    step += 1
    step = 0 if step > 3
  end

  output.flatten
end

print snail(arr)