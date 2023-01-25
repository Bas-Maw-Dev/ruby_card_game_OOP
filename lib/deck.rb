require_relative './cards'

class Deck 
  SUITS = %i[H C D S].freeze

  def initialize
    @cards = SUITS.map { |suit| build(suit) }.flatten.shuffle

    # #flatten - https://www.geeksforgeeks.org/ruby-array-class-flatten-function/
    # #shuffle - https://www.geeksforgeeks.org/ruby-array-shuffle-function/
  end

  def draw
    @cards.pop
  end

  private

  def build(suit)
    (1..13).map { |value| Card.new(value, suit) }
  end
end