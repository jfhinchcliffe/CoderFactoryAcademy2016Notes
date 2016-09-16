#Takes the argument sent to the file and saves the first one as
#input file
input_file = ARGV.first

#takes the current file instance and calls 'read' (display) on it
def print_all(f)
  puts f.read
end

#takes us back to the start of the file. Otherwise it will keep incrementing
# a line each time it's displayed
def rewind(f)
  f.seek(3)
  puts f
end

#f.gets.chomp gets the next line of the file.
def check(f)
  puts "CHECK!"
  puts f.gets.chomp
  rewind(f)
  puts f.gets.chomp
end

#prints a line up until \n
def print_a_line(line_count, f)
  puts "#{line_count}, CHOMP:#{f.gets.chomp}"
end

#sets current_File to the value of open(filename)
current_file = open(input_file)


puts "First, let's print the whole file:\n"
#prints all of the file. Sends to the print_all method
print_all(current_file)

puts "Now let's rewind. Kind of like a tape: \n"
#sets the current position in the file back to the stars
rewind(current_file)

puts "Now let's print 3 lines"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
 check(current_file)
