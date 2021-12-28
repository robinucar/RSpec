class ProgrammingLanguage
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end


describe ProgrammingLanguage do
  let(:language) {ProgrammingLanguage.new('JavaScript')} #with argument
  it 'should store the name of language as JavaScript' do
    expect(language.name).to eq 'JavaScript'
  end
  
  context 'with no argument' do
    let(:language) {ProgrammingLanguage.new} # without argument
    it 'should store default to Ruby as the name of language' do
      expect(language.name).to eq 'Ruby'
    end
  end
end