class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage
  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end

describe Garage do
  let(:car) { instance_double(Car)}

  before do
    allow(Car).to receive(:new).and_return(car) # when ever we call Car.new it will return car we created by instance_double
  end
  it 'adds a car to its storage' do
    # subject = Garage
    subject.add_to_collection('Honda Civic') # method has been invoked first
    expect(Car).to have_received(:new).with('Honda Civic')
    expect(subject.storage.length).to eq(1)
    expect(subject.storage.first).to eq(car)
  end
end