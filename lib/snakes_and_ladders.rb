class SnakesAndLadders
  SIX_SIDED_DICE = (1..6)
  def initialize
    @player_1_position = 0
  end

  def dice
    rand(SIX_SIDED_DICE)
  end

  def move
    current_move = []
    current_move.push(dice, dice)
    set_roll_total_from(current_move)
    add_to_player_1_position
  end

  def position
    @player_1_position
  end

private
    def set_roll_total_from(current_move)
      @roll_total = current_move.inject(:+)
    end

    def add_to_player_1_position
      @player_1_position += @roll_total
    end
end
