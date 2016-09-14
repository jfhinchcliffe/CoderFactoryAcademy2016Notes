rocks = 100
rock_names = ["Bill", "Tony", "Pete", "Amadeus", "Philbert", "Gus"]
# rocks.times do
#   puts rock_names[rand(rock_names.length)]
# end
#setting the amount of rock collectors
rock_collectors =  20
#setting how many rocks each collector can collect
rock_collector_capacity = 2
# rocks collected is the amount of rock collectors multiplied
# by what they can carry
rocks_collected = rock_collectors * rock_collector_capacity
#the amount of rocks left over once each rock collector has collected their rocks.
rocks_left_over = rocks - rocks_collected

puts "#{rock_collectors} rock collectors collected #{rocks_collected} rocks"
puts "There are #{rocks_left_over} lonely orphan rocks left!"

#Explain the error message undefined local variable or method `carpool_capacity' for
# main:Object (NameError)
# This error message explains that 'carpool_capacity' was not defined.
# That is, it was called, however it had not yet been initiated or assigned a value
#Questions
# Using 4 for space in car would make more sense. You can't fit half a person
# in a car, and therefore wouldn't need a float value.
