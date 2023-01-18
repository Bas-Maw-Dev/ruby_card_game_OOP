require_relative './cards'

class Deck
  def initialize
    hearts = Card.build(:hearts)
    clubs = Card.build(:clubs)
    diamonds = Card.build(:diamonds)
    spades = Card.build(:spades)
# #flatten - https://www.geeksforgeeks.org/ruby-array-class-flatten-function/
# #shuffle - https://www.geeksforgeeks.org/ruby-array-shuffle-function/
    @cards = [hearts, clubs, diamonds, spades].flatten.shuffle
  end

  def draw
    @cards.pop
  end
end