require "singleton"

class Piece
  def present?
    true
  end

  def to_s
    " x "
  end
end

class NullPiece
  include Singleton
  def present?
    false
  end

  def to_s
    "   "
  end
end
