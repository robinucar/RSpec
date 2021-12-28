# Combine expectations simply mean combining more than one expectation on single line.

describe 25 do

  # and keyword
  it 'can test for multiple matchers on a single line' do
    expect(subject).to be_odd.and be > 20 # with .and keyword

  end

  # one liner syntax
  it { is_expected.to be_odd.and be > 20 }
end

describe 'caterpillar' do

  it 'supports multiple matchers on sigle line' do
    expect(subject).to start_with('cat').and end_with('lar')
  end

  # one liner syntax
  it { is_expected.to start_with('cat').and end_with('lar') }
end

describe [:canada, :usa, :mexico] do
 # or keyword
  it 'can check for multible possibilities on single line' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico) # with or keyword
  end
end