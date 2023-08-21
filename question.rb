class Question 
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @question = nil
    @answer = nil
    @is_correct = nil
  end

  def set_q
    puts "#{@player_1}: Enter a math Question"
    @question = gets.chomp
  end

  def get_answer 
    puts "#{@player_2}: Enter your answer"
    @answer = gets.chomp
  end

  def check_answer
    puts "#{@player_1}: What that correct?"
    @is_correct = gets.chomp

    if @is_correct.match(/yes/i)
      return true
    end
    return false;
  end
    
end
