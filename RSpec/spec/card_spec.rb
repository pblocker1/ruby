class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

# You should be describing behavior (what it's doing), you should not be describing how it's built.
RSpec.describe Card do 
  # the let keyword enables memoization or caching for the Card object created in each it/do block
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and that rank can change' do
    # expect is another word for an assertion
    expect(card.rank).to eq('Ace')
    # card.rank = 'Queen'
    # expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end


