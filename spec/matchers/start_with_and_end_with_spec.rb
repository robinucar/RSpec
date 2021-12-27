describe 'start_with and end_with matchers' do

  describe 'caterpillar' do

    it 'shoulc check substring at the beggining or end' do
      # start_with
      expect(subject).to start_with('cat')

      # end_with
      expect(subject).to end_with('pillar')
    end

    # one liner syntax
    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do

    it 'should chech for elements at beginning or end of the array' do
      # start_with
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)

      #not_to
      expect(subject).not_to start_with(:b)

      # end_with
      expect(subject).to end_with(:d)
      expect(subject).to end_with(:c, :d)
      expect(subject).to end_with(:b, :c, :d)

      # not_to
      expect(subject).not_to end_with(:a, :b, :c)
    end

    # one liner syntax
    # start_with
    it { is_expected.to start_with(:a) }
    it { is_expected.to start_with(:a, :b) }

    #not_to
    it { is_expected.not_to start_with(:a, :c) }

    # end_with
    it { is_expected.to end_with(:d) }
    it { is_expected.to end_with(:c, :d) }

    # not_to
    it { is_expected.not_to end_with(:a) }
  end
end