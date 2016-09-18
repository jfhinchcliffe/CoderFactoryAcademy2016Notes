mystuff = ["one", "two", "three"]
puts mystuff
mystuff.push("four")
puts mystuff

things = []

10.times do
  #create an alphabet array, shuffle, take the letters at position 0 to 5 and join them to a string
  things << ("a".."z").to_a.shuffle[0,5].join
end

puts "My random things", things

ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "Wait, there aren't 10 things in that list. Let's fix it!"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#using math to make sure there's 10 items

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding #{next_one}"
  stuff.push << next_one
  puts "There are #{stuff.length} items now"
end

puts "There we go #{stuff}"

puts "Let's do some more things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')

def create_a_deck_of_cards
  suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
  numbers = (1..10).to_a
  face_cards = ["Jack", "Queen", "King", "Ace"]
  deck = []
  suits.each do |suit|
    numbers.each do |num|
      deck << "#{num} of #{suit}"
    end
    face_cards.each do |face|
      deck << "#{face} of #{suit}"
    end
  end
  return deck
end

deck = create_a_deck_of_cards
puts deck.shuffle
