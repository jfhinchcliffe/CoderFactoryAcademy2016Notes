#Parent class
class Animal

end
#Dog is an Animal / Inherits from Animal
class Dog < Animal
  attr_accessor :name
  #Instance of Dog
  def initialize(name)
    @name = name
  end

end
#Cat is an Animal / Inherits from Animal
class Cat < Animal
  #instance of Cat
  def initialize(name)
    @name = name
  end

  attr_accessor :name
end
#Parent class
class Person

  def initialize(name)
    #Instance of Person
    @name = name
    @pet = nil
  end

  attr_accessor :pet

end
#Creating a class of Employee, which is a Person
class Employee < Person

  def initialize(name, salary)
    #sends the name to initialize in the parent class
    super(name)
    @salary = salary
  end

end

class Fish

end

class Salmon < Fish

end

class Halibut < Fish

end

rover = Dog.new("Rover")
satan = Cat.new("Satan")
mary = Person.new("Mary")
mary.pet = satan
frank = Employee.new("Frank", "2000000")
frank.pet = rover
flipper = Fish.new()
crouse = Salmon.new()
harry = Halibut.new()

puts mary.pet.name
puts frank.pet.name
puts satan.name
