# The star is the splat argument.
def print_two(*args)
  arg1, arg2 = args
  puts args.last
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
  puts "arg1: #{arg1}"
end

def print_none
  puts "I got nothing"
end
options =
print_two("Zed", "Shaw", "Kerfluffle", {name: "Keith", age: 17})
print_two_again("Zed", "Shaw")
print_one("First!")
print_none()
