=begin
- Two friends want to split the bill at dinner.
- Each will only contribute towards the item that they consumed
- Brian gets the check and calculates Anna's share
- We need to determine if his calculation is correct

EXAMPLE:
bill = [2, 4, 6]
Anna doesn't eat item at bill[2]

So Anna only contributes towards the first two items
2 + 4 /2 = 3

If Bill calculates this way
2 + 4 + 6 / 2 = 6

He should return 3 to Anna. Because he overcharged her by 3.

Input:
bill - an array of integers (prices of items eaten)
k - an integer (index of item Anna doesn't eat)
b - amount of money that anna contributed to the bill

Output:
Bon Appetit if the bill was shared farely
OR
Integer amount of money that Bill owes Anna

Example:
bill = [3, 10, 2, 9]
k = 1
b = 12

So in this case anna doesn't eat the second item that costs 10. So the fare share is 3 + 2 + 9 = 14/2 = 7
but Bill charged her 12.
So the output should be 12 - 7 = 5

Example:
bill = [3, 10, 2, 9]
k = 1
b = 7

Same as before but this time Anna was charged fairly, so we output Bon Appetit

AL:
- we can get the sum of the array
- then deduct the price of item Anna didn't eat
- calcuate the fare share
- compare the fare share with the contribution, output accordingly
=end

def bonAppetit(bill, k, b)
  total_bill = bill.sum
  fair_share = (total_bill - bill[k]) / 2
  if b > fair_share
    print b - fair_share
  else
    print 'Bon Appetit'
  end
end

bill = [3, 10, 2, 9]
k = 1
b = 12

puts bonAppetit(bill, k, b)