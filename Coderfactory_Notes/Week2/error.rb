def test

  begin
  my_method(splat)
  rescue NoMethodError
  puts "No Argumeny"
  end
end

def my_method

  puts "BLAH"

end
test
