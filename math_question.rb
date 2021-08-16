class Math_question
  attr_reader :number_1, :number_2, :correct_answer, :wrong_answer

  def initialize
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
    @correct_answer = ['YES! You are correct', 'Awesome job', 'Good, that is the right answer']
    @wrong_answer = ['Seriously? No!', 'How did you get that wrong?!', "Nope!"]
  end

  def change_numbers
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
  end

  def new_question
    puts "Player #{Current_player.active_player}: What does #{number_1} plus #{number_2} equal?"

    answer = gets.chomp.to_i

    if (answer == number_1 + number_2)
      puts "Player #{Current_player.active_player}: #{correct_answer[rand(0..2)]}"

      puts "P1: #{P1.lives}/3 vs P2: #{P2.lives}/3"
    else
      puts "Player #{Current_player.active_player}: #{wrong_answer[rand(0..2)]}"

      if (Current_player.active_player == 1)
        P1.lives -= 1
      else 
        P2.lives -= 1
      end

      puts "P1: #{P1.lives}/3 vs P2: #{P2.lives}/3"
    end
  end
end