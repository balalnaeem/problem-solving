=begin
- We are given steps in a string
- steps are denoted by U and D representing Up and Down
- hike always starts at sea level or level zero
- we need to count number of valleys the hiker walked through
- what is vallery?
    - any terrain that is below sea level
- what is mountain?
    - any terrain that is above sea level

INPUT:
a string of steps(U's and D's)

OUTPUT:
integer (number of valleys walked)

AL:
- since we are starting at sea level, a valley would start at sea level and finish at sea level
- so we can have variable that would be boolean and tell us whether we are at sea level or not
- and every time we take a step down, and we are at sea level before that, we have entered a valley
- so we also need to keep a record at each step whether we are at sea level, below or above
- we can have a step counter to keep track of whether a mountain or valley is finished
- once it's finished we are back on sea level

- set sea_level variable to true
- set step_tracker to zero
- set number_of_valleys_walked = 0
- iterate over the string
- on each iteration
    - check what is the step
        - if it's a step D
            - we -1 the step tracker
            - and if the tracker was zero before, we mark the valleys walked +1
        - if it's a step U
        - we add +1 into the step tracker
- we may not need the sea_level variabled because that's what step_tracker would tell us
- if the step_tacker is not zero, sea_level is false
=end

def countingValleys(steps, path)
    steps_level = 0
    valleys_walked = 0
    path.each_char do |step|
        if step == 'D' && steps_level == 0
            valleys_walked += 1
            steps_level -= 1
        elsif step == 'D'
            steps_level -=1
        else
            steps_level += 1
        end
    end

    valleys_walked
end

steps = 8
path = 'UDDDUDUU'

p countingValleys(steps, path)
