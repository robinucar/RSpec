describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15

    expect(1).to be >= -1
    expect(1).to be >= 1

    expect(22).to be <= 100
    expect(22).to be <= 22
  end
  describe 100 do
    # one liner syntax
    it { is_expected.to be > 90 }

    it { is_expected.to be < 200 }

    it { is_expected.to be >= 90 }
    it { is_expected.to be >= 100 }

    it { is_expected.to be <= 200 }
    it { is_expected.to be <= 100 }

    # not_to be + comparison
    it { is_expected.not_to be > 190 }

    it { is_expected.not_to be < 90 }

    it { is_expected.not_to be >= 110 }
    

    it { is_expected.not_to be <= 90 }
  end
end