# both subject and let are similar/ do the same thing
RSpec.describe Hash do
  subject(:bob) do
    {a: 1, b: 2}
  end
  
  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end
end