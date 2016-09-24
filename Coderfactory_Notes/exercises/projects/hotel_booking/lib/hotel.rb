class Hotel
  attr_reader :name, :arriving, :departing

  def initialize(arriving, departing)
   @name = "Ritz"
   @arriving = departing
   @departing = departing
  end

  def find_room
    puts "In the find room method"
  end

end
