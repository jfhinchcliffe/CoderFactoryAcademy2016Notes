animals = ['rat', 'cat', 'dog', 'monkey']
star_signs = ['pisces', 'taurus', 'capricorn', 'gemini']
nested = [[1,2,3],[4,5,6],[7,8,9],[10,11,12]]

puts "The animals in the list are:"

animals.each do |animal|
  puts "I have a " + animal * 2
end
#index is always second
animals.each_with_index do |animal, index|
  puts "#{index}: #{animal}"
end

nested.each do |n1|
  puts "n1 level"
  puts n1.class
  n1.each do |n2|
    puts "n2 level"
    puts n2
  end
end
star_signs.each_with_index { |x, y| puts x; puts y }
