def add(a,b)
  puts "Adding #{a} to #{b}"
  return a + b
end

def subtract(a,b)
  puts "Subtracting #{a} from #{b}"
  return a - b
end

def multiply(a,b)
  puts "Multiplying #{a} with #{b}"
  return a * b
end

def divide(a,b)
  puts "Dividing #{a} by #{b}"
  return a / b
end

puts "Let's do some math with functions!"
age = add(2,31)
height = subtract(200,20)
weight = multiply(80,2)
iq = divide(100,2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle"

what = add(age, subtract(height, multiply(weight, divide(iq,2))))
          #  33             180              160            25
          #                       3820                  4000
puts "This becomes #{what}. Can you do it by hand?"
puts "#{3853}"
