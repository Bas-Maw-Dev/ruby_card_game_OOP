class Card
  include Comparable
  attr_accessor :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card
    "#{@value} #{@suit}"
  end

  def to_s
    "|#{value}-#{@suit}|"
  end

  def <=>(other)
    value <=> other.value
  end

  def value
    case @value
    when 1 then :A
    when 11 then :J
    when 12 then :Q
    when 13 then :K
    else @value
    end
  end

  def self.build(suit)
    (1..13).map { |value| Card.new(value, suit) }
  end

  protected

  attr_reader :value

end