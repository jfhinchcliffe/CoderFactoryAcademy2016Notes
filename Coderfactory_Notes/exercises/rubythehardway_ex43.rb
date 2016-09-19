class Game
  #extend Scene
  attr_reader :name, :location

  def initialize(name)
    @name = name
    @location = Location.new
    #menu
  end

  # def menu
  #   puts "Welcome! You're currently on a 5 x 5 table"
  #   puts "You can move... but not off the edge of the table"
  #   puts "press N, S, E or W to move"
  #   option = $stdin.gets.chomp
  #   @location.move(option)
  # end
end

class Location

  attr_reader :coordinates

  def initialize
    @coordinates = [1,1]
    puts "Initial Board State:"
    #board_state(@coordinates)
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
    else
      puts "Can't understand your instruction"
    end

    explode if @coordinates[0] < 1 || @coordinates[0] > 5 || @coordinates[1] < 1 || @coordinates[1] > 5

    board_state(@coordinates)

  end

  def explode
    puts "You ran off the edge of the board!"
    exit(0)
  end

  def board_state(coordinates)
    board_coordinates = [{y: 5, x: 1}, {y: 5, x: 2}, {y: 5, x: 3}, {y: 5, x: 4}, {y: 5, x: 5},
                        {y: 4, x: 1}, {y: 4, x: 2}, {y: 4, x: 3}, {y: 4, x: 4}, {y: 4, x: 5},
                        {y: 3, x: 1}, {y: 3, x: 2}, {y: 3, x: 3}, {y: 3, x: 4}, {y: 3, x: 5},
                        {y: 2, x: 1}, {y: 2, x: 2}, {y: 2, x: 3}, {y: 2, x: 4}, {y: 2, x: 5},
                        {y: 1, x: 1}, {y: 1, x: 2}, {y: 1, x: 3}, {y: 1, x: 4}, {y: 1, x: 5}]
    current_board = ""
    board_coordinates.each do |square|
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

    puts current_board
  end

end

game = Game.new("Jason")
puts game.name
puts game.location.coordinates
puts game.location.move("N")
puts game.location.move("N")
puts game.location.move("S")
puts game.location.move("S")
puts game.location.move("E")
puts game.location.move("E")
puts game.location.move("E")
puts game.location.move("E")
puts game.location.move("E")
