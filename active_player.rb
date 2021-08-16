# initializes P1 as first player, then calling 'change_active_player' switches the active player between 1 and 2
class Active_player 
  attr_reader :active_player

  def initialize
    @active_player = 1
  end

  def change_active_player
    if (@active_player == 1)
      @active_player = 2
    else 
      @active_player = 1
    end

    return @active_player
  end

end 
