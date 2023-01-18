require_relative './cards'

class Deck
  def initialize
    cards = %i[hearts clubs diamonds spades].map do |suit|
      Card.build(suit)
    end.flatten
    # #flatten - https://www.geeksforgeeks.org/ruby-array-class-flatten-function/
    # #shuffle - https://www.geeksforgeeks.org/ruby-array-shuffle-function/
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end