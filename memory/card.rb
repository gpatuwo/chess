class Card
  attr_reader :value

  def self.shuffled_pairs(num_pairs)
  end

  def initialize(value, revealed = false)
    @value = value
  end

  def hide
    @revealed = false
  end

  def to_s
    @revealed ? " #{value.to_s} " : " x "
  end

  def reveal
    @revealed = true
  end

  def revealed?
    @revealed
  end

  def ==(other_card)
    @value == other_card.value
  end
end
