describe Hash do
  it 'should start off empty hash and then store some data' do
    expect(subject.length).to eq 0
    subject[:some_key] = 'Some Value'
    expect(subject.length).to eq 1
  end
  it 'is isolated between examples' do
    expect(subject.length).to eq 0
  end
end