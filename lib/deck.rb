require_relative './cards'

class Deck
  def initialize
    @cards = [Card.new(2, :spades)]
  end

  def draw
    @cards.pop
  end
end