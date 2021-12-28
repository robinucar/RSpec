describe Hash do
  subject(:bob) do
    {a: 1, b: 2}
  end

  it 'has two key-value pairs' do
    expect(bob.length).to eq 2 # with customized name bob (subject = bob)
    expect(subject.length).to eq 2 
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(bob.length).to eq 2 # with customized name bob (subject = bob)    subject defined outer of scop
      expect(subject.length).to eq 2  # subject defined outer of scop
    end
  end
end