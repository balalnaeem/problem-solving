=begin
PROBLEM:
- Marie keeps a track of her score
- She records number of times she breaks her own record (High + Low)
- Her first score of the season is her record to compare with

INPUT:
- array of integers (scores per game)

Output:
- array of two integers (times records broken)
- [breaking high record, breaking low record]

EXAMPLE:
input: [12, 24, 10, 24]
output: [1, 1]

EXAMPLE_2:
input: [10 5 20 20 4 5 2 25 1]
outpu: [2 4]

AL:
- We need to iterate over the array
- on first step we set the rescord to the first score, best record, worst record both the same
- Start iterating from the seconds score
- on each iteration, set the new record if broken and count the number of times it was broken
- return the number of times the records(best and worst) were broken
=end

def breaking_record(scores)
  best_record, worst_record = scores[0], scores[0]

  times_best_record_broken = 0
  times_worst_record_broken = 0

  scores[1..-1].each do |score|
    if score > best_record
      best_record = score
      times_best_record_broken += 1
    elsif score < worst_record
      worst_record = score
      times_worst_record_broken += 1
    end
  end

  [times_best_record_broken, times_worst_record_broken]
end

scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]

print breaking_record(scores)