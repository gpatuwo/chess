require_relative "pieces"
require 'colorize'

class Board #1. make grid 2.populate grid 3. moves pieces (if valid move from Pieces) 4. game over?
  # def self.populate_board(board)
  #   # create all the different pieces
  #   # place the 16 pieces on each side
  #   # place nil in remaining pos
  # end

  attr_accessor :grid
  def initialize(fill_board = true)
    @sentinel = NullPiece.instance.to_s
  make_starting_grid(fill_board)
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

  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def dup
  end

  def empty?(pos)
  end

  def in_check?(color)
  end

  def move_piece(turn_color, start_pos, end_pos)
      # raise if start_pos.empty?
      # raise if end_pos is invalid move
      # else
      #delete the piece at board[start_pos]
      # board[end_pos] = piece
  end

  def move_piece!(from_pos, to_pos)
  end

  def pieces
  end

  def valid_pos?(pos)
  end

  protected

  def fill_back_row(color)
    row_num = color == :white ? 0 : 7

    @grid[row_num] = [Rook.new(color, self, [row_num, 0]).to_s,
                    Knight.new(color, self, [row_num, 1]).to_s,
                    Bishop.new(color, self, [row_num, 2]).to_s,
                    Queen.new(color, self, [row_num, 3]).to_s,
                    King.new(color, self, [row_num, 4]).to_s,
                    Bishop.new(color, self, [row_num, 5]).to_s,
                    Knight.new(color, self, [row_num, 6]).to_s,
                    Rook.new(color, self, [row_num, 7]).to_s]
  end

  def fill_pawns_row(color)
    row_num = color == :white ? 1 : 6
    @grid[row_num].map!.with_index { |square, idx| square = Pawn.new(color, self, [row_num, idx]).to_s }
  end

  def find_king(color)
  end

  def make_starting_grid(fill_board)
    if fill_board
      @grid = Array.new(8) { Array.new(8) { @sentinel } }
      fill_back_row(:white)
      fill_pawns_row(:white)
      fill_back_row(:black)
      fill_pawns_row(:black)
    end
  end

  private
  attr_reader :sentinel
end
