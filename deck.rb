class Deck
  attr_reader :cards 

  def display
    # Displaying cards
    puts "=" * 30
    self.cards.each do |card| 
      puts "#{card.number}, #{card.cardType}"
    endn
    puts "=" * 30
  end
  
  def initialize
    @cards = []
    # build 52 cards
    ranks = ["A", "K", "Q", "J", "10", "9", "8", "7", "6", "5", "4", "3", "2"]
    
    ranks.each do |rank|
      @cards.push(Card.new "spade", rank)
      @cards.push(Card.new "heart", rank)
      @cards.push(Card.new "club", rank)
      @cards.push(Card.new "diamond", rank)
    end
  end

  def shuffle
    return @cards.shuffle!
  end

  def deal
    return @cards.shift
  end

end

class Card
  attr_accessor :cardType, :number
  def initialize cardType, number
     @cardType = cardType # spade, heart, diamond, club
     @number = number
  end
end

deck = Deck.new

# display cards
puts "Displaying Cards"
deck.display

puts "Shuffling Cards"
deck.shuffle
deck.display

# Dealing Deck
puts "Dealing Card"
deck.deal
deck.display

