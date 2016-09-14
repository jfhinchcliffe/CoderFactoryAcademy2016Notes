#names filename based on the arguments passed to the file
filename = ARGV.first
#opens the filename. Errors out if not found.
txt = open(filename)
#prints filename
puts "Here's your filename: #{filename}"
puts "And here is the content:"
#uses the 'read' method on the 'open' object to print file contents
print txt.read
# prompts for a new file name
txt.close
print "Type the file name again"
new_file = $stdin.gets.chomp
new_txt = open(new_file)

puts "Here's your filename: #{new_file}"
puts "And here is the content:"
#repeats the display of the file contents.
print new_txt.read
new_txt.close
