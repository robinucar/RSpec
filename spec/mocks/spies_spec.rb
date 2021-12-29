# spy is almost the same as double. it creates fake object for test
# when we use spy, we write our expectations after the fact (after the method has been invoked)
describe 'spies' do
  let(:animal) { spy('animal')}

  it 'confirms that a message has been received' do
    animal.eat_food # spy call method before expectation, double call method after expectation
    expect(animal).to have_received(:eat_food) # *** Present perfect tense...

    # not to
    expect(animal).not_to have_received(:eat_human) 
  end

  it 'resets between example' do # isolation
    expect(animal).not_to have_received(:eat_food) 
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')

    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with('Sushi')
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end

end