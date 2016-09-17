#Creates a deck of cards
suits = ['Hearts','Clubs','Spades','Diamonds']
nums = (2..10).to_a
large_cards = ['Jack', 'Queen', 'King', 'Ace']
# puts suits
# puts nums
# puts large_cards

deck = []
suits.each do |suit|
  nums.each do |num|
    deck << "#{num} of #{suit}"
  end
  large_cards.each do |lc|
    deck << "#{lc} of #{suit}"
  end
end
i = 1
2.times do
  deck << "Joker #{i}"
  i += 1
end

puts deck
puts deck.length.to_s + " cards total"
