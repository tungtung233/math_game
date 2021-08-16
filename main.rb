require './player'
require './active_player'
require './math_question'

def start
  Math_logic.new_question

  if (P1.lives != 0 && P2.lives != 0)
    puts "----- NEW TURN -----"
    Current_player.change_active_player
    Math_logic.change_numbers
    start
  else
    string = "wins with a score of"

    if (P1.lives == 0)
      puts "Player 2 #{string} #{P2.lives}/3"
    else
      puts "Player 1 #{string} #{P1.lives}/3"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end

P1 = Player.new
P2 = Player.new
Current_player = Active_player.new

Math_logic = Math_question.new

start
