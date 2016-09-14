filename = ARGV.first

puts "We're going to erase #{filename}"
puts "Don't want to do that? Hit CTRL C"
puts "Want to continue? hit RETURN"

$stdin.gets

puts "Opening the file..."
#the 'w' is the write permission required to modify the file
target = open(filename, 'w')
#unnecessary as the 'w' argument in the open command
#already truncates the file
puts "Truncating the file... goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines:"

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "Now I'm going to add these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "Now we gotta close it"
target.close
