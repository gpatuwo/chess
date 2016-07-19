require_relative "pieces"

class Board #1. make grid 2.populate grid 3. moves pieces (if valid move from Pieces) 4. game over?
  # def self.populate_board(board)
  #   # create all the different pieces
  #   # place the 16 pieces on each side
  #   # place nil in remaining pos
  # end

  attr_accessor :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) { NullPiece.instance } }
    # Board.populate_board(@grid)
  end


  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def move(start_pos, end_pos)
      # raise if start_pos.empty?
      # raise if end_pos is invalid move
      # else
      #delete the piece at board[start_pos]
      # board[end_pos] = piece
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

  def find_king(color)

  end
end
