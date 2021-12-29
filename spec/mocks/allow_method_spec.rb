describe 'allow method rewiev' do
  it 'can customize return value for methods on double' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15) # will always return 15
    expect(calculator.add).to eq(15)
    expect(calculator.add(15)).to eq(15)
    expect(calculator.add(3)).to eq(15)
    expect(calculator.add(-2, -3, -5)).to eq(15)
    expect(calculator.add('Hello')).to eq(15)
    expect(calculator.add([1, 2, 3])).to eq(15)
    expect(calculator.add({ a:5, b: 'hello' })).to eq(15)
    expect(calculator.add(false)).to eq(15)
    expect(calculator.add(nil)).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end

  it 'can return mulltiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil) 
    
=begin

  when mock_array.pop invoked first it will return :c 
  when mock_array.pop invoked second it will return :b
  when mock_array.pop invoked after second time it will always return nil

=end
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq (:b)
    expect(mock_array.pop).to eq(nil)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to eq(nil)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to eq(nil)
  end
end