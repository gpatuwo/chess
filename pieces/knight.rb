require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
    [1, 2, -1, -2].permutation(2).reject { |el| el.reduce(:+) == 0 }
  end
end
