print "Odds are 2 to 1. What do you want to bet?"
wager = gets.chomp.to_i
puts "Possible return of #{wager * 2}"
print "Now make a bet under a dollar: "
# To f changes the value from a string to a float value.
wager = gets.chomp.to_f
puts wager * 1.333
puts "Wager is a #{wager.class}"
