RSpec.describe FirstJrubyGem do
  it 'has a version number' do
    expect(FirstJrubyGem::VERSION).not_to be nil
  end

  it 'says hello' do
    expect(FirstJrubyGem::SayHello.new.hello('Silvio')).to eq('Hello Silvio')
  end
end
