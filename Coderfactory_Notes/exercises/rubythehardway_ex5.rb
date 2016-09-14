age = 33
name = "Jason"
weight = 83
#converting weight to pounds
weight_in_pounds = (weight * 2.2046).round(2)
height = 183
#converting height to inches
height_in_inches = (height * 0.39370).round(2)
puts "#{name} is #{age} years old and weights #{weight}kg"
puts "If you're American, weight in pounds is #{weight_in_pounds} and height in inches is #{height_in_inches}"
