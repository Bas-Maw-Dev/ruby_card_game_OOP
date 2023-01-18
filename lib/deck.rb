require_relative './cards'

class Deck 
  SUITS = %i[hearts clubs diamonds spades].freeze

  def initialize
    cards = SUITS.map { |suit| Card.build(suit) }.flatten
    
    # #flatten - https://www.geeksforgeeks.org/ruby-array-class-flatten-function/
    # #shuffle - https://www.geeksforgeeks.org/ruby-array-shuffle-function/
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end