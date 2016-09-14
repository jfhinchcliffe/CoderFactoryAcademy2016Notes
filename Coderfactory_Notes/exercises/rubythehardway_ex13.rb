puts ARGV
puts ARGV.size
puts "ARGV's class is an #{ARGV.class}"
first, second, third = ARGV
fourth = ""
ARGV.each do |av|
  fourth << av
end

puts "Your first value is: #{first.to_i * first.to_i}"
puts "Your second value is: #{second}"
puts "Your third value is: #{third}"
puts "Your fourth value is: #{fourth}"

puts "This is testing $stdin.gets.chomp. Enter anything: "
new_var = $stdin.gets.chomp
puts "The new var is #{new_var}"
