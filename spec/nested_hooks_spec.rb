describe 'nested hooks   (A)' do

  before(:context) do
    puts 'Outer Before context' #it will run only before high level describe which is (A)
  end

  before(:example) do
    puts 'Outer Before example ' # it will run before example 1. ALSO BEFORE EXAMPLES 2, 3
  end

  it 'does basic math (1)' do
    expect(1 + 1).to eq 2
  end

  context 'with condition B' do
    before(:context) do
      puts 'Inner Before context' # it will run only before second high level context which is (B)
    end
    before(:example) do
      puts 'Inner Before example' # it will run before example 2 and 3 BUT NOT 1
    end
    it 'does some more basic math (2)' do
      expect( 5 + 6).to eq 11
    end
    it 'does substraction as well (3)' do
      expect(11 - 6).to eq 5
    end
  end
end
