class Piece
  attr_reader :color

  def initialize(color, board, pos)
    @color, @board, @pos = color, board, pos
  end

  def to_s
    " #{symbol} "
  end

  def empty?
    false
  end

  def valid_moves

  end

  private

  def move_into_check?(to_pos)
  end

end
