describe 'all matcher' do
  it 'allows for aggregate checks (Ruby loop way)' do
    arr = [5, 7, 9]
    arr.each do |val| 
      expect(val).to be_odd
    end
  end
  it 'allows for aggregate checks  (RSpec all method)' do
    arr = [5, 7, 9]
    expect(arr).to all(be_odd)
    expect(arr).to all(be < 10)
    
    expect([[], [], []]).to all(be_empty)
    expect([2, 4, 6, 8, 10]).to all(be_even)
    expect([0, 0]).to all(be_zero)
  end
  describe [5, 7, 9] do
    it {is_expected.to all(be_odd)}
    it {is_expected.to all(be < 10)}
  end
end