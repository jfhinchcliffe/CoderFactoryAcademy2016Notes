require 'csv'
class Hotel
  attr_reader :name, :arriving, :departing

  #def initialize(arriving, departing)
  # def initialize
  # #  @name = "Ritz"
  # #  @arriving = departing
  # #  @departing = departing
  # end

  def find_room
    "In the find room method"
  end

  def Hotel.list_hotels
    system "clear"
    list_of_hotels = Hotel.get_current_hotels

    list_of_hotels.each do |hotel|
      print "\nName:".blue + " #{hotel[:name]} "
      print "Address:".blue + " #{hotel[:address]} \n"
      print "Total Rooms:".light_magenta + " #{hotel[:total_rooms].to_i} "
      print "Rooms Taken:".light_magenta + " #{hotel[:rooms_taken].to_i} "
      #Method changes text colour depending on the amount of rooms left.
      Hotel.rooms_remaining(hotel[:total_rooms].to_i, hotel[:rooms_taken].to_i)
      print "Cost:".yellow + " $#{hotel[:cost].to_i} per night\n"
    end

    puts "Press any key to return to the menu"
    gets
    system "clear"

  end

  def Hotel.add_hotel(hotel_info)
    puts "HOTEL INFO #{hotel_info}"
    puts hotel_info[:name]
    puts hotel_info[:address]
    puts hotel_info[:total_rooms]
    puts hotel_info[:rooms_taken]
    puts hotel_info[:cost]
    CSV.open("hotels.csv", "a+") do |file|
      #file << ["#{name}", "#{address}", "#{total_rooms}", "#{rooms_taken}", "#{cost}"]
      file << [hotel_info[:name],hotel_info[:address],hotel_info[:total_rooms],hotel_info[:rooms_taken],hotel_info[:cost]]
    end
  end

  def Hotel.rooms_remaining(total_rooms, rooms_remaining)
    percentage_remaining = (100 / total_rooms) * rooms_remaining
    if percentage_remaining > 75
      print "Rooms Remaining:".red + " #{rooms_remaining} (#{percentage_remaining}% taken) \n"
    else
      print "Rooms Remaining:".green + " #{rooms_remaining} (#{percentage_remaining}% taken) \n"
    end
  end

  def Hotel.book_hotel
    system "clear"
    #Diaply the number and name of all hotels
    puts "Hotels:"
    all_hotels = Hotel.get_current_hotels
    all_hotels.each do |hotel|
      puts "#{hotel[:number_in_file]}: #{hotel[:name]}"
    end
    puts "Please enter the number of the hotel you'd like to book"
    print "> "
    selection = $stdin.gets.chomp
    puts all_hotels
    all_hotels.each do |hotel|
      hotel[:rooms_taken] = hotel[:rooms_taken].to_i
      hotel[:rooms_taken] += 1 if hotel[:number_in_file] == selection.to_i
    end
    Hotel.wipe_file
    all_hotels.each do |hotel|
      Hotel.add_hotel(hotel)
    end

  end

  def Hotel.find_hotel

  end

  def Hotel.get_current_hotels
    all_hotels = []
    counter = 1
    CSV.foreach("hotels.csv") do |row|
      hotel = {}
      hotel[:number_in_file] = counter
      hotel[:name] = row[0]
      hotel[:address] = row[1]
      hotel[:total_rooms] = row[2]
      hotel[:rooms_taken] = row[3]
      hotel[:cost] = row[4]
      all_hotels << hotel
      counter += 1
    end
    return all_hotels
  end

  def Hotel.wipe_file
    File.open("hotels.csv", 'w') {|file| file.truncate(0)}
    #File.close("hotels.csv")
  end

end
