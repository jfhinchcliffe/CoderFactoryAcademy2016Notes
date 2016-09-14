  print "How old are you? "
  age = gets.chomp
  print "How tall are you? "
  height = gets.chomp
  print "What do you weigh? "
  weight = gets.chomp

  puts "You are #{age} years old, #{height} cm tall and weigh #{weight} kg"

  #my form

  print "Press 1 to receive a backrub \n Press 2 to receive a crisp $20 note \n Press 3 to get outta here"
  answer = gets.chomp

  if answer == '1'
    puts "Sweet sweet massage. You feel your stress melting away"
  elsif answer == '2'
    puts "$20 richer! time to blow it on blackjack and hookers!"
  elsif answer == '3'
    puts "later ya dirty animal!"
  else
    puts "Wrong input, suckah!"
  end
