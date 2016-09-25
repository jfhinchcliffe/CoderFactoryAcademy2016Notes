require './hotel_booking'
require './hotel'
require 'colorize'


def main_menu
  exit = false

  until exit
    puts "Welcome to HotelBooker".blue
    puts "1. See all hotels 📔 "
    puts "2. Book Hotel"
    puts "3. Add Hotel  "
    puts "4. Pay up 💳 "
    puts "5. Exit the program"
    puts "6. About HotelBooker"
    print "> "
    selection = $stdin.gets.chomp
    case selection
    when "1"
      show_all_hotels
    when "2"
      book_hotel
    when "3"
      add_hotel
    when "4"
      pay_up
    when "5"
      puts "👋 👋 👋 👋 👋 Later!👋 👋 👋 👋 👋"
      exit = true
    when "6"
      about
    end

  end

end

def about
  system "clear"
  puts " 🏢 " + "  HotelBooker  🏢 "
  puts "©1986, CompuHyperMegaSoftware.com"
  puts "Press any button to go back to the main menu"
  `say "Hotel Booker. The future of hotel management software is now!" -r 250 -v Zarvox`
  gets
end

def show_all_hotels
  Hotel.list_hotels
end

def book_hotel
  Hotel.book_hotel
end

def add_hotel
  Hotel.add_hotel({name: "Stanky", address: "Vancouver", total_rooms: 50, rooms_taken: 40, cost: 100})
end

#system "clear"

main_menu
#Hotel.list_hotels
