require_relative './lib/deck'

deck = Deck.new

card1 = deck.draw 
card2 = deck.draw 


puts "#{card1} "
puts "#{card2} "

if card1 > card2
  puts "#{card1} wins"
else
  puts "#{card2} wins"
end
