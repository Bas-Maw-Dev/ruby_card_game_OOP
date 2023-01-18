require_relative './cards'

class Deck
  def initialize
    cards = [
      Card.build(:hearts),
      Card.build(:clubs),
      Card.build(:diamonds),
      Card.build(:spades)
    ].flatten
# #flatten - https://www.geeksforgeeks.org/ruby-array-class-flatten-function/
# #shuffle - https://www.geeksforgeeks.org/ruby-array-shuffle-function/
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end