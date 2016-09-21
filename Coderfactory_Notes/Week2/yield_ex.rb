def my_method(&block)
  puts block
  block.call
  yield
end

def snuffle
  puts "SNUFFLE"
end

def gronk
  puts "GRONK"
end

my_method { gronk }
