RSpec.describe Hash do
  # RSpec subject is doing lines 3 and 4 behind the scences. Both are valid
  # let(:my_hash) { {} }
  # let(:subject) { Hash.new }
  it 'should start off empty' do
    expect(subject.length).to eq(0)
  end
end