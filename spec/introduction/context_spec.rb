describe '#even?' do
  context 'with even numbers' do
    it 'should return true' do
      expect(4.even?).to eq true
    end
  end
  context 'with odd numbers' do
    it 'should return false' do
      expect(5.even?).to eq false
    end
  end
end