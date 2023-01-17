require_relative './cards'

class Deck
  def draw
    Card.new(2, :spades)
  end
end