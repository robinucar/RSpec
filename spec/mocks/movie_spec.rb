class Actor
  def initialize(name)
    @name = name
  end
  
  def ready?
    sleep(3)
    true
  end

  def act
    'I love you, baby'
  end

  def fall_off_ladder
    'Call my agent! No way!'
  end
  
  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor
  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

=begin actor = Actor.new('Bradd Pitt')
movie = Movie.new(actor)
movie.start_shooting 
=end

describe Movie do
  let(:stunman) { double('Mr. Danger', ready?: true, act: 'Any String!', fall_off_ladder: 'Sure! Lets do it', light_on_fire: true) }
  subject {described_class.new(stunman)}

  describe '#start_shooting' do

    it 'expect an actor to do 3 actions' do
      expect(stunman).to receive(:light_on_fire).once # once means that the method will be invoked one time
      # alternative syntax
      expect(stunman).to receive(:fall_off_ladder).exactly(1).times # the method will be invoked one time


      expect(stunman).to receive(:light_on_fire).at_most(5).times # if the mothod invoked more than 5 times test will not pass

      expect(stunman).to receive(:act).twice # alternative syntax: expect(stunman).to receive(:act).exactly(2).times

      expect(stunman).to receive(:ready?).at_least(1).times # the method must be invoked at the least 1 time
      
      subject.start_shooting # subject has to call start_shooting after receive all methods created in the stunman
      
    end
  end
end