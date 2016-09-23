#make a game from scratch

def rps(first_player_throw)
  rules = [{"rock" => { "win" => "paper", "lose" => "scissors"}},
          {"paper" => { "win" => "rock", "lose" => "scissors"}},
          {"scissors" => { "win" => "rock", "lose" => "paper"}}]
  winner = ""
  computer = rules[0][0]
  puts computer
  rules.each do |item|
    item.each do |throw, rules|
      if first_player_throw == throw
        rules["win"] == computer ? winner = "Computer Wins!" : winner = "Player Wins!"
        winner = "draw" if first_player_throw == computer
      end
    end
  end
  puts winner
end

rps("rock")
