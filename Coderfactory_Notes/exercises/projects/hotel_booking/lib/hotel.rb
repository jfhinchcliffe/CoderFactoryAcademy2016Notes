require 'csv'
class Hotel
  attr_reader :name, :arriving, :departing

  #def initialize(arriving, departing)
  def initialize
  #  @name = "Ritz"
  #  @arriving = departing
  #  @departing = departing
  end

  def find_room
    "In the find room method"
  end

  def list_hotels
    system "clear"

    CSV.foreach("hotels.csv") do |row|
      print "\nName:".blue + " #{row[0]} "
      print "Address:".blue + " #{row[1]} \n"
      print "Total Rooms:".light_magenta + " #{row[2].to_i} "
      print "Rooms Taken:".light_magenta + " #{row[3].to_i} "
      rooms_remaining(row[2].to_i, row[3].to_i)
      #print "Rooms Remaining:".red + " #{row[3].to_i} \n"
      print "Cost:".yellow + " $#{row[4].to_i} per night\n"
    end

    puts "Press any key to return to the menu"
    gets
    system "clear"

  end

  def add_hotel(hotel_info)
    puts "HOTEL INFO #{hotel_info}"
    puts hotel_info[:name]
    puts hotel_info[:address]
    puts hotel_info[:total_rooms]
    puts hotel_info[:rooms_taken]
    puts hotel_info[:cost]
    # name = hotel_info[:name]
    # address = hotel_info[:address]
    # total_rooms = hotel_info[:total_rooms]
    # rooms_taken = hotel_info[:rooms_taken]
    # cost = hotel_info[:cost]
    CSV.open("hotels.csv", "a+") do |file|
      #file << ["#{name}", "#{address}", "#{total_rooms}", "#{rooms_taken}", "#{cost}"]
      file << [hotel_info[:name],hotel_info[:address],hotel_info[:total_rooms],hotel_info[:rooms_taken],hotel_info[:cost]]
    end
  end

  def rooms_remaining(total_rooms, rooms_remaining)
    percentage_remaining = (100 / total_rooms) * rooms_remaining
    if percentage_remaining > 75
      print "Rooms Remaining:".red + " #{rooms_remaining} (#{percentage_remaining}% taken) \n"
    else
      print "Rooms Remaining:".green + " #{rooms_remaining} (#{percentage_remaining}% taken) \n"
    end
  end

end
