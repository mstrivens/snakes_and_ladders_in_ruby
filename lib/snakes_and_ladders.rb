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
    roll_total = current_move.inject(:+)
    @player_1_position += roll_total
  end

  def position
    @player_1_position
  end
end
