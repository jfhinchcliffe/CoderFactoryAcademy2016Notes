# In a way, the arguments to a function are kind of like our = character when we make a variable.
# In fact, if you can use = to name something, you can usually pass it to a function as an argument.

#creates a mthod which takes 2 arguments and inserts them into strings
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses."
  puts "You have #{boxes_of_crackers} boxes of crackers."
  puts "Party on, you fat bastard!\n"
end

puts "We can provide numbers directly"
cheese_and_crackers(20, 10)

puts "Or we can assign to variables and use those"
cheese = 10
crackers = 20
cheese_and_crackers(cheese, crackers)

puts "We can also put math inside the method call"
cheese_and_crackers(5+5, 10+10)

puts "And also combine the method call with math"
cheese_and_crackers(cheese + 10, crackers - 19)

def display_people_characteristics(person_info)
  puts person_info.class
  puts person_info
  person_info.each do |pa|
    pa.each do |k, v|
      puts "#{k}:  #{v}"
    end
  end
end

person = [{name: "Jason", age: 33, star_sign: "Pisces", math: 27 + 8, method_output: cheese},{name: "Patrick", age: 22, star_sign: "Taurus", math: 28 - 27, method_output: cheese}]
display_people_characteristics(person)
