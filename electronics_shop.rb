=begin
PROBLEM:
- with a given budget, and lists of prices for keyboards and usb drive
- we want to find out what's the most expensive keyboard and usb dtive we can buy
- if it's not possible to buy both the products, return -1

Example:
- b = 60
- keyboards = [40, 50, 60]
- usb_drives = [5, 8, 12]

Here the user can either purchase 40 + 12 combo spending 52
or 50 + 8 combo spending 58

58 is the answer since the user wants to spend the most she can

Al:
we have keyboard prices and usb prices in arrays.
we need to build all purchaseable combos
and then pick the most expensive on

iterate over whichever array is longer
on each iteration if the price is less than the budget, start another iteration
this iteration is over the other prices array
build all the combos that are in budget and save them in a variable

set the in_budget_combos to []
check which array is bigger in size
iterate over that array
start another iteration over the other prices array
see if it's possible to build in budget combo, if it is insert it into []

How to see if the combo is in budget
<= budget

=end

def getMoneySpent(keyboards, drives, b)
    budget_combos = []
    keyboards.each do |kb_price|
        next if kb_price >= b
        drives.each do |d_price|
            if kb_price + d_price <= b
                budget_combos << [kb_price, d_price]
            end
        end
    end

    budget_combos.any? ? budget_combos.map(&:sum).max : -1
end
