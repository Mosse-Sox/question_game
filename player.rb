class Player
  attr_reader :player_name
  attr_reader :lives

  def initialize(player_name)
    @player_name = player_name
    @lives = "3/3"
  end

  def loseOneLife
   case @lives
   when "3/3"
    @lives = "2/3"
   when "2/3"
    @lives = "1/3"
   else 
    @lives = "0/3"
   end
  end

end


