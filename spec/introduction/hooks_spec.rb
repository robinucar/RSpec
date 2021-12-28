describe 'before and after hooks' do
  before(:context) do
    puts 'Before context' # it will run before describe method
  end
  after(:context) do
    puts 'After context' # it will run after describe method
  end
  before(:example) do
    puts 'Before example' # it will run before every it block
  end
  after(:example) do
    puts 'After example' #it will run after every it block
  end
  it 'is just a random example' do
    expect(5 * 4).to eq 20
  end
   it 'is just another random example' do
    expect(3 - 2).to eq 1
   end
end