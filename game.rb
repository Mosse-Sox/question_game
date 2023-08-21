require "./question"

class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def start
    turn = 1

    while @player_1.lives != "0/3" && @player_2.lives != "0/3"
      puts "--- Turn :#{turn} ---"

      if turn % 2 == 0 
        q1 = Question.new(@player_2.player_name, @player_1.player_name)
        q1.set_q
        q1.get_answer
        is_correct = q1.check_answer
        if !is_correct
          @player_1.loseOneLife
        end
      else 
        q1 = Question.new(@player_1.player_name, @player_2.player_name)
        q1.set_q
        q1.get_answer
        is_correct = q1.check_answer
        if !is_correct
          @player_2.loseOneLife
        end
      end
      puts "#{@player_1.player_name}: #{@player_1.lives} vs #{@player_2.player_name}: #{@player_2.lives}"
      turn = turn + 1
    end

    if @player_1.lives == "0/3"
      puts "#{@player_2.player_name} wins with a score of #{@player_2.lives}"
    else 
      puts "#{@player_1.player_name} wins with a score of #{@player_1.lives}"
    end
  end
end

