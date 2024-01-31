=begin
- teacher asks the class to open their book to a certain page
- student can either start turning pages from the front or from the back
- from the start, page 1 is always on the right side
- flipping page 1, student sees page 2 and 3 and so on
- each page, except the last page will always be printed on both sides
- last page may only be printed on the front, depending on the length of the book

Input:
int - length of the book
int - page to turn to

Ouput:
int - minimum number of pages to be turned (from front or back)

Example:
n = 5
p = 3

We want to get to the page 3.
If we open the book from the front, we start from page 1, we only have to flip once
If we open the book from the end, we start from page 5
  - in this case last page is only printed at the front. How do we know that?
    - we divide the length by 2, if it divides evenly, last page is printed on the back of page, front other wise
    - in this case 5 % 2 returns 1, so we know that last page is printed on the front of the page
  - And if last page is printed on the front, after the first flip we can jump 3 pages instead of 2 (from 5 to 2)
  - and then each flip jump 2 pages

Answer in this case is 1. Because we only have to flip once from front or back.

Example 2:
n = 6
p = 2

we want to get to the page 2.
lenght of the book is 6
We open the book at front. page 1. And flip once and we are at page 2. 1 flip
We open the book at back. page 6. And flip once are at page 4. flip again. we are page 2. 2 flips
answer is 1

Example 5:
n = 5
p = 4

we want to get the page 4
length of the book is 5
we open the book at front. page 1. And flip. page 2, 3. flip page 4, 5. 2 flips
we open the book at back. page 5. page 5 is at the front. which means we can see page 4. 0 flips
answer 0

AL:
- when we open the book from front, the most accessible page is 1
- when we open the book from back, depending on the length of the book, most accessbible page can be 1 less than the length
    - e.g if the length is 5, most accessbile page is 4
- opening from the front, odd pages always on the right, and odd page will be the most accessible page
- opening from the back, even pages always on the left, and even page will the most accessible page
- although from the back, if the length is odd. most accessible page will be one less than that

- we can divide the p by 2 and that's how many flips it will take to get to p from the front
- from the back, we get the most accessible page closest to p, we get the differece between length and that, and divide that by 2, that's how many flips it will take to get to that page from back
=end

def pageCount(n, p)
  flips_from_front = p / 2
  p -= 1 if p.odd?
  flips_from_back = (n - p) / 2
  [flips_from_front, flips_from_back].min
end

