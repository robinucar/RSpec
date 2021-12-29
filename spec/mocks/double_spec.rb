describe 'a random double' do
  it 'only allows defined method to be invoked' do
    # stunman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true) # accept multiple methods
    # expect(stunman.fall_off_ladder).to eq('Ouch')
    # expect(stunman.light_on_fire).to eq(true)

    # alternative syntax
    # stunman = double('Mr. Danger')
    # allow(stunman).to receive(:fall_off_ladder).and_return('Ouch') # to receive method only accept ONE symbol as an argument.
    # expect(stunman.fall_off_ladder).to eq('Ouch')

    # alternative syntax (combination of both above syntaxes)
    stunman = double('Mr. Danger')
    allow(stunman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true) # accept multiple methods
    expect(stunman.fall_off_ladder).to eq('Ouch')
    expect(stunman.light_on_fire).to eq(true)
  end
end