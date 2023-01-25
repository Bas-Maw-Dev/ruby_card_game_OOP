class Card
  include Comparable
  attr_accessor :suit

  HUMAN_VALUES = {
    1 => :A,
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    9 => 9,
    10 => 10,
    11 => :J,
    12 => :Q,
    13 => :K
  }
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card
    "#{@value} #{@suit}"
  end

  def to_s
    "|#{human_value}-#{@suit}|"
  end

  def <=>(other)
    value <=> other.value
  end

  def human_value
    HUMAN_VALUES[value]
  end

  protected

  attr_reader :value

end