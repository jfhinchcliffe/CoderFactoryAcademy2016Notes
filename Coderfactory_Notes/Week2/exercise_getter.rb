class Person
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def get_name
    puts @name
  end

end

class Midget < Person

  def initialize(name, height)
    super(name)
    @height = height
  end

  def get_name
    super
    puts @height
  end

end


john = Person.new("John")
name = john.get_name
puts "The name of the person is #{name}"
puts john.name
puts john.get_name

milly = Midget.new("Milly", 99)
puts "Get name"
name = milly.get_name
puts name
puts "Name"
puts milly.name
puts "Get Name"
puts milly.get_name
milly.name = "BRUCE"
puts milly.get_name
