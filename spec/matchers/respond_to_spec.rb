class HotChocolate
  def drink
    'Delicious'
  end

  def discard 
    'PLOP!'
  end

  def purchase(number)
    'Awesome, I just purchased #{number} more hot chocolate beverages!'
  end
end

describe HotChocolate do

  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard) # to check multiple methods. They have to separete by comma

    # not_to
    expect(subject).not_to respond_to(:eat)
  end

  it 'also confirms that an object respond to a method with argument' do
    expect(subject).to respond_to(:purchase).with(1).arguments

    # not to
    expect(subject).not_to respond_to(:purchase).with(2).arguments
  end

  # one liner syntax
  it { is_expected.to respond_to(:drink) }
  it { is_expected.to respond_to(:drink, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }

  # to_not
  it { is_expected.not_to respond_to(:eat) }
end