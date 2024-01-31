=begin
PROBLEM:
- Day of the programmer is 256th day of the year (13th of 12th)
- Russia's official calendar
  - from 1700 - 1917 (julian calendar)
  - from 1919 (gregeorian calendar)
  - 1918 - transition year. Next day after 31st of Jan was 14th of Feb. 13 days gone.

- Both calendars have only Feb as month with variable days
  - 29 days during leap year
  - 28 days during all other years

Leap year:
- Julian calendar
  - leap years are divisible by 4
- gregorian calendar
  - divisible by 400
  - divisible by 4 but not divisible by 100

Given a year, find the date of 256th day of the year according to the official russian calendar during that year.
return date format dd.mm.yy

EXAMPLE:
- input = 1984
- output = 12.09.1984

output is a string

AL:

First we would need to decide, whether or not, the year is leap year.
leap year would depend on the julian or gregorian calendar.
so we can have a method leap_year?

Also we need to account for transition year 1918
if the year is transition year, which is a leap year
we return the programmer day 12 days forwarded
=end

def dayOfProgrammer(year)
  if transition_year?(year)
    "26.09.#{year}"
  elsif leap_year?(year)
    "12.09.#{year}"
  else
    "13.09.#{year}"
  end
end

def leap_year?(year)
  if julian_calendar?(year)
    year % 4 == 0
  elsif gregorian_calendar?(year)
    year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  else
    false
  end
end

def julian_calendar?(year)
  year >= 1700 && year <= 1917
end

def gregorian_calendar?(year)
  year >= 1919
end

def transition_year?(year)
  year == 1918
end

p dayOfProgrammer(1984)
