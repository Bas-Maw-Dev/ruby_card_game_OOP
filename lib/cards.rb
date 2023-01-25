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
    "|#{human_value}-#{@suit}|"
  end

  def <=>(other)
    value <=> other.value
  end

  def human_value
    case @value
    when 1 then :A
    when 11 then :J
    when 12 then :Q
    when 13 then :K
    else @value
    end
  end

  protected

  attr_reader :value

end