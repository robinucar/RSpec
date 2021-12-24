describe 'equality matchers' do
  let(:a) { 3.0 } # ruby float
  let(:b) { 3 } # ruby integer

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq 3
      expect(b).to eq 3.0
      expect(a).to eq b
    end
  end

  describe 'eql matcher' do
    it 'tests same value, including same type'do
    # expect(a).to eql 3        will not pass the test because of type difference
    # expect(b).to eql 3.0      will not pass the test because of type difference
    # expect(a).to eql b        will not pass the test because of type difference
    # to pass test we need to use not_to eql method 
    expect(a).not_to eql 3
    expect(b).not_to eql 3.0
    expect(a).not_to eql b
    # or
    expect(a).to eql 3.0
    expect(b).to eql 3
    end
  end
end