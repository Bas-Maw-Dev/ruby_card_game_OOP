require_relative '../cards'

describe 'Card' do
  it 'can read a cards value' do
    c = Card.new('8', 'hearts')
    expect(c.card).to eq('8 hearts')
  end
end