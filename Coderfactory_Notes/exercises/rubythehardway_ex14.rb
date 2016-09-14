user_name = ARGV.first
location = ARGV.last
prompt = '> '

puts "Hi, #{user_name}"
puts "I'd like to ask you a few questions."
puts "Do you like me, #{user_name}?"
print prompt
likes = $stdin.gets.chomp

puts "So, #{user_name}, you said you lived in #{location}. I'm pretty sure you're lying though. Where do you really live?"
print prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have?"
print prompt
computer = $stdin.gets.chomp

puts """Alright, you said that you #{likes.downcase == "yes" ? "do" : "don't"} like me.
You also live #{lives} and have a #{computer} computer. """
