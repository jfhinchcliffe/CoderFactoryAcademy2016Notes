puts "Hello world"
puts Time.now
x = Time.new(2002)
puts x
puts Time.now - x
puts x.monday?
puts Time.now.strftime('WAKE UP:  %H:%m %p')
puts Time.now.strftime('WAKE UP, its %m past $H')
array = ['dog', 'cat', 1, [true, false], "giraffe"]
puts array[3]
puts array[5]
puts array[4]
array << "snuffulupagus"
puts array.last
puts array.pop
puts array.push
array.each do |a|
  puts "ARRAY CONTENT: #{a}"
end

person = [{'name' => 'Keith', 'age' => 12, 'starsign' => 'Taurus'}, {'name' => 'Tony', 'age' => 50, 'starsign' => 'Pisces'}]
person.each do |k|
  k.each do |l,v|
    puts "#{l}: #{v}"
  end
end

puts 5 <= 5
puts 5 < 5
puts 5 > 5
puts 5 != 5
puts 5 === 5
puts 5 == 5

short_height = 99
tall_height = 260
right_height = 150

def check_for_ride(height)
  if height > 100 && height < 250
    puts "Can ride!"
  else
    puts "Wrong height"
  end
end

check_for_ride(short_height)
check_for_ride(tall_height)
check_for_ride(right_height)
