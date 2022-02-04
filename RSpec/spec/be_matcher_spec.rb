# used to match truthy, falsy or nil
RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be truthy
  end

  it 'can test for falsiness' do
    expect(nil).to be_falsy
    expect(false).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end
end