class SnakesAndLadders
  SIX_SIDED_DICE = (1..6)
  def game
    move
    player_1_position = [0]
  end

  def dice
    rand(SIX_SIDED_DICE)
  end

  def move
    current_move = []
    current_move.push(dice, dice)
    current_move.inject(:+)
  end
end
