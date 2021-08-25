require 'rspec'
require './lib/deck'

describe Deck do
  describe "#initialize" do
  it 'exists' do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:club, '5', 5)
    cards = [card1, card2, card3, card4]
    deck = Deck.new(cards)
    expect(deck).to be_a(Deck)
  end
  it "contains an array" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:club, '5', 5)
    cards = [card1, card2, card3, card4]
    deck = Deck.new(cards)
    expect(deck.cards).to be_an Array
  end
  it "has individual card attributes inside the array" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:club, '5', 5)
    cards = [card1, card2, card3, card4]
    deck = Deck.new(cards)
    expect(deck.cards[0].suit).to eq :diamond
  end
end
  # describe '#remove_card' do
  #   it 'removes card as expected'
  # end
end
