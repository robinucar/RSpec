class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

describe Person do
  subject { described_class.new('Robin') }
  let(:louis) { described_class.new('Louis') }
  it 'represents a great person' do
    expect(subject.name).to eq 'Robin'
    expect(louis.name).to eq 'Louis'
  end
end

