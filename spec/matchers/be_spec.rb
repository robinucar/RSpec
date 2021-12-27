# falsy values ------ false, nil
# truthy values ------ everything else (string, array, empty array, 0, integer etc...)

describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(1).to be_truthy
    expect(1.75).to be_truthy
    expect([]).to be_truthy
    expect([1, 2, 3]).to be_truthy
    expect({a: 1, b: 2}).to be_truthy
    expect({}).to be_truthy
    expect(:symbol).to be_truthy

    expect(nil).not_to be_truthy
    expect(false).not_to be_truthy
  end
  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy

    expect([1, 2, 3]).not_to be_falsy
    expect({a: 1, b: 2}).not_to be_falsy
    expect({}).not_to be_falsy
    expect(:symbol).not_to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil    # only nil can be nil.
  end

  describe 'examples' do
    it 'can test truthy, falsy and nil values' do
       #example
    my_hash = {a: 1}
    expect(my_hash[:b]).to be_nil
    expect(my_hash[:b]).to be_falsy
    expect(my_hash[:b]).not_to be_truthy
    
    my_hash[:b] = 2
    expect(my_hash[:b]).to be_truthy
    expect(my_hash[:b]).not_to be_falsy
    expect(my_hash[:b]).not_to be_nil
    end
  end
end