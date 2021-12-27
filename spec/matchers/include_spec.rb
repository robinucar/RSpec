describe 'include matcher' do

  describe 'hot chocolate' do

    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('late')
      expect(subject).to include('choc')

      # not_to
      expect(subject).not_to include ('abcd')
    end
    
    # one liner syntax
    it { is_expected.to include('hot') }
    it { is_expected.to include('choc') }
    it { is_expected.to include('late') }

    #not_to
    it { is_expected.not_to include('abcd') }

  end

  describe [10, 20, 30] do

    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20) # testing multiple value accepted. they have to separeted by comma
      
      # not_to
      expect(subject).not_to include(40)
      expect(subject).not_to include(50, 'Hello', true)
    end

    # one liner syntax
    it {is_expected.to include(10)}
    it {is_expected.to include(10, 20)}

    # not to
    it {is_expected.not_to include(100)}
    it {is_expected.not_to include(-10, false, {})}
  end

  describe ({a: 4, b: 5}) do
    it 'can check key instance' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
      expect(subject).to include(:b, :a)

      # not_to
      expect(subject).not_to include(:c)
      expect(subject).not_to include(:c, :d)
    end

    it 'can check key-value pair' do
      expect(subject).to include(a: 4)
      expect(subject).to include(a: 4, b: 5)
      expect(subject).to include( { a: 4, b: 5 } )

      # not_to 
      expect(subject).not_to include(c: 4)
      expect(subject).not_to include(c: 4, d: 5)
      expect(subject).not_to include( { c: 4, d: 5 } )
    end

    #one liner syntax
    it { is_expected.to include(a: 4) }
    it { is_expected.to include(b: 5) }
    it { is_expected.to include(a: 4, b: 5) }

    #not_to
    it { is_expected.not_to include(a: 5) }
    it { is_expected.not_to include(b: 4) }
    it { is_expected.not_to include(c: 8) }
    
    
  end

end
