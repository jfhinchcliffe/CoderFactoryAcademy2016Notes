puts "Hello world"
puts Time.now
x = Time.new(2002)
puts x
puts Time.now - x
puts x.monday?
puts Time.now.strftime('%H:%m %p')
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
    puts l
    puts v
  end
  puts "YO"
  puts k
end
