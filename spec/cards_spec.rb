require_relative '../cards'

describe 'Card' do
  it 'can read a cards value' do
    c = Card.new('8', 'hearts')
    expect(c.card).to eq('8 hearts')
  end
end

describe 'Deck' do
  it 'can pick a card from the deck' do
    c = Deck.new.draw
    expect(c).to be_a Card 

  end
end