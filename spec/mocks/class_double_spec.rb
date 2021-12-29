class Deck
  def self.build
    # Bussiness logic to build whole bunch of card
  end
end

class CardGame
  attr_reader :cards
  def start
    @cards = Deck.build
  end
end

describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    deck_class = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const
      # as_stubbed_const method always replace actual class with double class. If class has not defined yet this method still use created fake double class
    expect(deck_class).to receive(:build)
    subject.start # invoke the start method of CardGame class 
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end