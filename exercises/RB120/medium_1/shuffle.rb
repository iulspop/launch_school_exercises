class Card
  include Comparable

  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
  RANK_VALUES = { 'Diamonds' => 1, 'Clubs' => 2, 'Hearts' => 3, 'Spades' => 4 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other_card)
    result = rank_value <=> other_card.rank_value
    result == 0 ? suit_value <=> other_card.suit_value : result
  end

  def rank_value
    VALUES.fetch(rank, rank)
  end

  def suit_value
    VALUES.fetch(suit, suit)
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if deck.empty?
    deck.pop
  end

  private

  attr_accessor :deck

  def reset
    @deck = SUITS.each_with_object([]) do |suit, deck|
      RANKS.each do |rank|
        deck << Card.new(rank, suit)
      end
    end

    self.deck = deck.shuffle
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.