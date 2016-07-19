require_relative "player"
require_relative "card"

class Board
  def initialize(size = 4)
    @grid = Array.new(size) { Array.new(size) }
    populate
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, val)
    x, y = pos
    @grid[x][y] = val
  end

  def hide
    self[pos].reveal
  end

  def reveal(pos)
    self[pos].reveal
  end

  def populate
    number_of_pairs = @grid.length ** 2 / 2
    arr_of_numbers = (1..number_of_pairs).to_a + (1..number_of_pairs).to_a
    arr_of_cards = arr_of_numbers.map! { |number| number = Card.new(number) }
    @grid.map! do |row|
      row.map! do |square|
        square = arr_of_cards.pop
      end
    end
  end

  def render
    system("clear")
    @grid.each do |row|
      row.each do |card|
        print card.to_s
      end
      puts
    end

    nil
  end

  def revealed?(pos)
  end

  def won?
  end
end
