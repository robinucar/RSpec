describe '#even?' do
  describe 'with even numbers' do
    it 'should return true' do
      expect(4.even?).to eq true
    end
  end
  describe 'with odd numbers' do
    it 'should return false' do
      expect(5.even?).to eq false
    end
  end
end