class Game
  #Start by calling var = Game.new("MyName")

  attr_reader :name, :location

  def initialize(name)
    @name = name
    @location = Location.new
    menu
  end

  def menu
    puts "Welcome #{@name}!"
    puts "Close your eyes and imagine you're on a 5 x 5 tabletop"
    puts "You can move... but not off the edge of the table"
    puts "You're currently at location #{@location.coordinates} - the X on the board representation below"
    puts "N is up, S is down, W is left, E is right"
    puts
    @location.board_state(@location.coordinates)
    option = ""
    while option != "X"
      puts "press N, S, E or W to move, or X to exit"
      option = $stdin.gets.chomp.upcase
      @location.move(option)
    end
  end

end

class Location

  attr_reader :coordinates

  def initialize
    @coordinates = [1,1]
  end

  def move(direction)
    if direction == "N"
      @coordinates[0] += 1
    elsif direction == "S"
      @coordinates[0] -= 1
    elsif direction == "E"
      @coordinates[1] += 1
    elsif direction == "W"
      @coordinates[1] -= 1
    elsif direction == "X"
      exit(0)
    else
      puts "Can't understand your instruction"
    end
    #end game if the position breaks the X or Y limits of 0 or 5.
    explode if @coordinates[0] < 1 || @coordinates[0] > 5 || @coordinates[1] < 1 || @coordinates[1] > 5
    #display board state
    board_state(@coordinates)

  end

  def explode
    puts "💀 You ran off the edge of the board! 💀"
    exit(0)
  end
  #Displays a graphical representation of the board
  def board_state(coordinates)
    #Nested hashes with board locations
    #ToDo: Look at creating this automatically based on user requested board size
    board_coordinates = [{y: 5, x: 1}, {y: 5, x: 2}, {y: 5, x: 3}, {y: 5, x: 4}, {y: 5, x: 5},
                        {y: 4, x: 1}, {y: 4, x: 2}, {y: 4, x: 3}, {y: 4, x: 4}, {y: 4, x: 5},
                        {y: 3, x: 1}, {y: 3, x: 2}, {y: 3, x: 3}, {y: 3, x: 4}, {y: 3, x: 5},
                        {y: 2, x: 1}, {y: 2, x: 2}, {y: 2, x: 3}, {y: 2, x: 4}, {y: 2, x: 5},
                        {y: 1, x: 1}, {y: 1, x: 2}, {y: 1, x: 3}, {y: 1, x: 4}, {y: 1, x: 5}]
    current_board = ""
    board_coordinates.each do |square|
      #if the square matches the coordinates array, add an X for the location of robot.
      #or else add a O to show that no robot is is in that location.
      if square[:y] == coordinates[0] && square[:x] == coordinates[1]
        current_board << "X"
      else
        current_board << "O"
      end
      if current_board.length == 5
        puts current_board
        current_board = ""
      end
    end
    puts
    puts "Current Coordinates: #{coordinates}"
    puts current_board
  end

end

puts "Welcome! Please enter your name:"
name = $stdin.gets.chomp
game = Game.new(name)
