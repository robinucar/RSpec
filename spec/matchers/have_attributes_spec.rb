class ProfessionalWrestler
  attr_reader :name, :finishing_move
  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

describe 'have_attributes' do

  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do

    it 'checks for object attribute and proper values' do
      # only one attribute can be checked
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin') 
      expect(subject).to have_attributes(finishing_move: 'Stunner')

      # multible attributes can be checked
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') 
    end

    # one liner syntax
    it {is_expected.to have_attributes(name: 'Stone Cold Steve Austin')}

    it {is_expected.to have_attributes(finishing_move: 'Stunner')}

    it {is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')}

  end

end