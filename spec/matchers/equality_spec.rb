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

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'checks about object identity' do
      expect(c).to eq d # two different arrays but values are the same  it will pass the test

      expect(c).to eql d # two different arrays but values and types are the same   it will pass the test

      expect(c).to equal e # they are the same array not different. Two different names for same object. it will pass

      expect(c).to be e    # they are the same array not different. Two different names for same object. it will pass

      #expect(c).to equal d ## they are not same array. there are two different arrays with same value. The adresses of memory of these arrays
      #is totally different. So it will not pass the equal test method. 
      
      expect(c).not_to equal d #it will pass because they are 2 different arrays with same value they are not identical

      expect(c).not_to equal [1, 2, 3] #it will pass because they are 2 different arrays with same value they are not identical
    end
  end
end

# to sum up: 
# eq = same value
# eql = same value + same type
# equal = checks identity, memory adress, object has to be same
# be = checks identity, memory adress, object has to be same