#Simple Game

#Setup - making an array of monsters and weapons to call from within the game
def get_monster
  ["Troll", "Ogre", "ManBearPig", "Mother-in-Law"].sample
end

def get_weapon
  ["Bare Hands", "Lance", "Grandma's Teeth", "A severed leg"].sample.to_s
end

def starting_location
  puts "You're in an eerie room. It's quite gloomy, but you can make out a"
  puts "tunnel to your west, and a door to your east. Which way do you go?"

  direction = $stdin.gets.chomp.downcase
  if direction == "west"
    abandoned_tomb
  elsif direction == "east"
    harry_potters_sex_dungeon
  end
end

def abandoned_tomb
  puts "You're in an old tomb. And dear god! There's a #{get_monster}"
  puts "Running right towards you!"
  puts "Straining to see in the gloom, you make out a weapon on the floor - "
  puts "it's #{get_weapon}! There's also a door to the north!"

  direction = $stdin.gets.chomp.downcase
  if direction.include?("get") || direction.include?("pick") || direction.include?("weapon")
    puts "You pick up the weapon and swing at the monster. It falls! You win!"
    exit(0)
  elsif direction == "north"
    puts "You head through the door"
    harry_potters_sex_dungeon
  else
    puts "I don't get what you mean, stranger!"
    abandoned_tomb
  end
end

def harry_potters_sex_dungeon
  puts "Harry turns around, whip in hand, and admires you. Welcome to my"
  puts "dungeon, he smirks. He raises his 14 inch wand and prepares to "
  puts "strike you with it. "
  puts "There's an exit to the south, and there's also a #{get_weapon} on the floor"
  puts "What do you do?"
  direction = $stdin.gets.chomp.downcase
  if direction.include?("get") || direction.include?("pick") || direction.include?("weapon")
    puts "You pick up the weapon and swing at the monster. It falls! You win!"
    exit(0)
  elsif direction == "south"
    puts "You head through the door"
    abandoned_tomb
  else
    puts "I don't get what you mean, stranger!"
    harry_potters_sex_dungeon
  end
end

starting_location
