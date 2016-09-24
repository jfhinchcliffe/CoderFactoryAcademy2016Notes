
require './hotel'
require 'csv'
class HotelBooking

  attr_reader :customer, :arrival_date, :departure_date, :hotel

  def initialize(booking_info)

    @customer = booking_info[:name]
    @hotel = Hotel.new(booking_info[:arriving], booking_info[:departing])

  end

  def find_hotels

    CSV.foreach("hotels.csv") do |row|
      puts "Name: #{row[0]} "
      print "Address: #{row[1]} "
      print "Rooms: #{row[2].to_i} "
      print "Cost: #{row[3].to_i} "
      # use row here...
    end

  end

  def add_hotel
    name = "JH"
    address = "Lavington NSW"
    rooms = "3"
    cost = "123"
    CSV.open("hotels.csv", "a+") do |file|
      file << ["#{name}", "#{address}", "#{rooms}", "#{cost}"]
    end
  end
end

p = {name: "Pedro", arriving: "27 7 2016", departing: "29 7 2016"}
booking = HotelBooking.new(p)
puts booking.customer
puts booking.hotel.arriving
puts booking.hotel.departing
puts booking.hotel.name
puts booking.hotel.find_room
puts booking.find_hotels
booking.add_hotel
puts booking.find_hotels
