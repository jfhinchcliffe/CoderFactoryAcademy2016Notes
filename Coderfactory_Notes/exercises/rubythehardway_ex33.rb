#sets a default value for each in case a value isn't provided
def populate_array(length=5, increment=1)
  i = 0
  numbers = []
  length.times do
    puts "At the top i is #{i}"
    numbers << i
    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom of i is #{i}"
  end
  return numbers
end

num_array = populate_array(20, 3)
num_array.each {|number| puts "Number: #{number}"}
check =  populate_array
