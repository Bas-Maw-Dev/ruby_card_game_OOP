require_relative './cards'

class Deck 
  SUITS = %i[H C D S].freeze

  def initialize
    @cards = SUITS.map { |suit| Card.build(suit) }.flatten.shuffle

    # #flatten - https://www.geeksforgeeks.org/ruby-array-class-flatten-function/
    # #shuffle - https://www.geeksforgeeks.org/ruby-array-shuffle-function/
  end

  def draw
    @cards.pop
  end
end