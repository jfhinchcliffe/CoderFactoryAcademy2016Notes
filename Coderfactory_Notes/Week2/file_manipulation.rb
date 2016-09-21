def menu
  selection = ""
  while selection != "x"
    puts "Press 1 to read a file"
    puts "Press 2 to create a file"
    puts "Press 3 to edit a file"
    puts "Press 4 to see files in current directory"
    puts "Press x to exit"
    print "> "
    selection = gets.chomp
    if selection == "1"
      read_file
    elsif selection == "4"
      show_dir
    elsif selection == "2"
      create_file
    elsif selection == "3"
      edit_file
    elsif selection == "x"
      puts "Closing..."
      exit(0)
    else
      puts "I don't understand... please enter again"
    end
  end
end

def show_dir
  page_break
  puts Dir.entries('.')
  page_break
end

def read_file
  begin
    text = open_file("read")
    page_break
    print text.read
    page_break
    text.close
    rescue
    puts "File not found. Going back to main menu"
    page_break
  end

end

def create_file
  puts "Give your file a name (without an extension!)"
  print "> "
  filename = $stdin.gets.chomp
  puts "And now what type of file should it be? (the extension)"
  print "> "
  extension = $stdin.gets.chomp
  new_file = File.new(filename + "." + extension, 'w+')
  puts "Your new file was created and saved as #{File.basename(new_file)}"
end

def edit_file
  text = open_file('edit')
  puts "Please enter what you'd like added to the file"
  new_text = $stdin.gets.chomp
  puts "Writing: #{new_text}"
  text.write(new_text)
  text.write("\n")
  text.rewind
  page_break
  print text.read
  text.close
end

def open_file(flag)
  puts "Enter the file name you'd like to open"
  print "> "
  filename = gets.chomp
  text = File.open(filename, 'a+') if flag == "edit"
  text = File.open(filename) if flag == "read"
  puts "You've opened #{filename}"
  return text
  page_break
end

def page_break
  puts "=" * 30
end

menu
