puts "Do you take door number 1 or 2?"
print "> "
door = $stdin.gets.chomp.to_i
puts door
if door == 1
  puts "You fell in a pit and died"
elsif door == 2
  puts "You fell in another pit and survived with 2 broken legs"
  puts "You're stuck down there for days, getting hungrier and hungrier"
  puts "An enormous rat appears do you 1: shoo it away, 2: befriend it and drink its milk"
  rat_question = $stdin.gets.chomp
  if rat_question == "1"
    puts "The rat calls his rat army down upon you!"
  elsif rat_question == "2"
    puts "You grow strong on sweet sweet rat-milk. Your legs mend and you escape"
  end
else
  puts "Wrong command, suckah!"
end

puts door * 10
