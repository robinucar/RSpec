class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


#test
describe Card do
 let(:card) {Card.new('Ace', 'Spades')}
  
 it 'has a rank' do
  comparison = 'Ace'
  expect(card.rank).to eq 'Ace'
 end

 it 'has a suit' do
  expect(card.suit).to eq 'Spades'
 end

 it 'has custom error message' do
  comparison = 'Spades'
  expect(card.suit).to eq(comparison), "Hey I expected #{comparison}, but I got #{card.suit} instead..."
 end
end