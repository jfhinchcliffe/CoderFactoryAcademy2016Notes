
class Building

  def initialize(residence_info)
    @building = residence_info
  end

  def display_residence_info
    puts "#{@building['name']} Information"
    puts "Square Metres #{@building['square_metres']}"
    puts "Doors Required: #{@building['doors']}"
    puts "Sinks Required: #{@building['sinks']}"
    puts "Baths Required: #{@building['baths']}"
    puts "Toilets Required: #{@building['toilets']}"
    puts "Tiles Required: #{@building['tiles']}"
    puts "Solar Panel #{@building['solar_panels']}"
    puts "Recycled Water Tank #{@building['recycled_water_tank']}"
    puts "Is Environmentally Friendly? #{environmentally_friendly}"
  end

  def environmentally_friendly
    if @building['recycled_water_tank'] == true && @building['solar_panels'] > 5
      return "Yes! 🌱 🌱 🌱"
    else
      return "No! Work on it! 🏭 🏭 🏭"
    end
  end

  def sanity_check
    puts "Sanity Check:"
    @building.each do |item, value|
      if value.class == Fixnum && value > 20 && item != "tiles"
        puts "😯 #{value} #{item}? Are you serious? 🤔"
      end
    end
  end

  def costing
    costing = {
      'doors' => 150,
      'sinks' => 250,
      'baths' => 1000,
      'toilets' => 500,
      'tiles' => 20,
      'solar_panels' => 1000,
      'recycled_water_tank' => 2000}
    cost = 0
    puts "🏠 🏠 🏠 🏠 Cost of #{@building['name']}🏠 🏠 🏠 🏠"
    @building.each do |item, value|
      if value.class == Fixnum && item != "square_metres"
        puts "Cost of #{costing[item]} X $#{value} #{item}"
        #puts costing[item] * 10
        #cost += (costing[item] * value)
        puts "$#{costing[item] * value} on #{item}"
        cost += costing[item] * value
      end
    end
    puts "💰 " * 15
    puts "Total cost of house: $#{cost}"
    puts "💰 " * 15
    puts "Square metres: #{@building['square_metres']}"
    puts "Cost per square metre: $#{cost / @building['square_metres']}"
  end

end

class Apartment < Building

  def initialize(residence_info, apartment_info)
    super(residence_info)
    @apartment = apartment_info
    # balcony
    # courtyard
    # lift
  end

end

class House < Building
  def initialize(residence_info, house_info)
    super(residence_info)
    @house = house_info
    # garage
    # shed
    # backyard
    # clothesline
    # garden
  end

  def display_residence_info
    super
    puts "House Information"
    puts "Garage? #{@house['garage']}"
    puts "Shed? #{@house['shed']}"
    puts "Backyard? #{@house['backyard']}"
    puts "Clothesline? #{@house['clothesline']}"
    puts "Garden? #{@house['garden']}"
  end


end

house1 = House.new({"name" => "Sylvia's House", "doors" => 10, "sinks" => 4, "baths" => 2, "toilets" => 2, "tiles" => 25000, "solar_panels" => 10, "recycled_water_tank" => true, "square_metres" => 30 },
{"garage" => true, "shed" => false, "backyard" => true, "clothesline" => false, "garden" => true} )

house2 = House.new({"name" => "Jason's House", "doors" => 5, "sinks" => 34, "baths" => 114, "toilets" => 50, "tiles" => 12, "solar_panels" => 7, "recycled_water_tank" => false, "square_metres" => 20 },
{"garage" => false, "shed" => false, "backyard" => false, "clothesline" => false, "garden" => false} )

building1 = Building.new({"name" => "Bruce's House", "doors" => 25, "sinks" => 6, "baths" => 12, "toilets" => 3, "tiles" => 50000, "solar_panels" => 10, "recycled_water_tank" => true, "square_metres" => 50 })

puts '-' * 25

house1.display_residence_info

puts '-' * 25

house2.display_residence_info

puts '-' * 25

house1.sanity_check

puts '-' * 25

house2.sanity_check


puts '-' * 25

building1.sanity_check

puts '-' * 25

building1.costing

puts '-' * 25

house2.costing

# def menu
#   puts "Welcome to HouseBuilder!"
#   puts "Press 1 to build a house"
#   puts "Press 2 to build an apartment"
#   print "> "
#   selection = $stdin.gets.chomp
#   case selection
#   when '1'
#     puts "Building a house"
#     print "Enter the name of your house >"
#     $stdin.gets.chomp
#   when '2'
#     puts "Building an apartment"
#   end
# end
#
# menu
