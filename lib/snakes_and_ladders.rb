class SnakesAndLadders
  def dice
    rand(1..6)
  end

  def move
    moves = []
    moves.push(dice, dice)
    moves.inject(:+)
  end
end
