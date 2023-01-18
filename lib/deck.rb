require_relative './cards'

class Deck
  def initialize
    spades = (1..13).map { |value| Card.new(value, :spades) }
    @cards = spades.shuffle
  end

  def draw
    @cards.pop
  end
end