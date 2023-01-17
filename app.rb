require_relative "./lib/deck"

card = Deck.new.draw

puts "#{card.value}"