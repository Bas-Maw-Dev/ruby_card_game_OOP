class Card
  attr_accessor :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card
    "#{@value} #{@suit}"
  end

  def value
    case @value
    when 1 then :ace
    when 11 then :jack
    when 12 then :queen
    when 13 then :king
    else @value
    end
  end

  def self.build(suit)
    (1..13).map { |value| Card.new(value, suit) }
  end
end