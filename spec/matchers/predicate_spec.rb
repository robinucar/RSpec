describe 'predicate methods and predicate matchers' do
  it 'can be tested with ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq true
    expect(result.odd?).not_to eq true

    arr = []
    expect(arr.empty?).to eq true
    arr << 1
    expect(arr.empty?).to eq false
    expect(arr.empty?).not_to eq true

    expect(0.zero?).to eq true
    expect(1.zero?).to eq false
    expect(2.zero?).not_to eq true
  end
  it 'can be tested with predicate matchers' do
    result = 16 / 2
    expect(result).to be_even
    expect(result).not_to be_odd

    arr = []
    expect(arr).to be_empty
    arr << 1
    expect(arr).not_to be_empty

    expect(0).to be_zero
    expect(1).not_to be_zero
  end

  describe 0 do
    # one liner syntax
    it { is_expected.to be_zero }
  end
end