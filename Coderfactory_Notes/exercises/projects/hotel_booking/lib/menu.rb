require './hotel_booking'
require './hotel'
require 'colorize'

def main_menu
  exit = false

  until exit
    puts "Welcome to HotelBooker".blue
    puts "1. See all hotels 📔 "
    puts "2. Choose an item 🍲 🍛 🍜 "
    puts "3. Check order 📖  "
    puts "4. Pay up 💳 "
    puts "5. Exit the program"
    puts "6. About HotelBooker"
    print "> "
    selection = $stdin.gets.chomp
    case selection
    when "1"
      show_all_hotels
    when "2"
      choose_item
    when "3"
      check_order
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
  `say "Hotel Booker. The future of hotel management software is NOW!"`
  gets
end

def show_all_hotels

  p = Hotel.new
  p.list_hotels

end

system "clear"
main_menu
