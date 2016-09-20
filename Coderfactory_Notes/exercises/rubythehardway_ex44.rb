class Vehicle

  attr_reader :year, :make, :model

  def initialize(year, make)
    @year = year
    @make = make
  end

  def implicit(val)
    puts "IMPLICIT IN VEHICLE #{val}"
  end

end

class Car < Vehicle

  attr_reader :model

  def initialize(year, make, model)
    super(year, make)
    @model = model
  end

end

c1 = Car.new( 1998, "Holden", "Commodore")
puts c1.year
puts c1.make
puts c1.model
puts c1.implicit("c1")

v1 = Vehicle.new(1993, "Hine")
puts v1.year
puts v1.make
puts v1.implicit("v1")
