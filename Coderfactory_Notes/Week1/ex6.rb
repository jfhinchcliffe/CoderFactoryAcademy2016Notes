customer = {
  'name' => 'Pedro',
  'star_sign' => 'Taurus',
  'age' => 21,
  'hobbies' => ['knitting', 'tennis', 'rock climbing']
}
puts customer
puts "Star sign:" + customer['star_sign']
customer['hobbies'].each do |hobby|
  puts hobby
end
puts "BLAH"
puts customer['hobbies'].to_a
puts "First location hobby"
#locating the 0th item in an array hely by customer Hobbies
puts customer['hobbies'][0]

puts customer['name']
puts customer['hobbies']
