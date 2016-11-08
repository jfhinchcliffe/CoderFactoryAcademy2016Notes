require 'date'

end_date = Date.new(2017,3,16)
total_days_left = (end_date - Time.now.to_date).to_i
total_weeks_left = total_days_left / 7
puts total_weeks_left
total_budget = 5000
puts "How much do you want to spend each week, total?"
amount = gets.strip.to_i
total_spent = total_weeks_left * amount
puts "Total Spent: $#{total_spent}"
puts "Remaining in savings: $#{total_budget - total_spent} (assuming 5k left in savings)"