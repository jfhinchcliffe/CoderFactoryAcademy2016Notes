#If arguments are passed to the file, it checks the length
#and assigns if appropriate. Else it does a default value
if ARGV.length == 3
  people = ARGV[0]
  cars = ARGV[1]
  trucks = ARGV[2]
else
  people = 30
  cars = 40
  trucks = 15
end

if cars > people 
  puts "We should take the cars."
elsif cars < people
  "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "There's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's just stay at home then."
end
