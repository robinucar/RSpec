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
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
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
      expect(stunman).to receive(:ready?)
      expect(stunman).to receive(:act)
      expect(stunman).to receive(:fall_off_ladder)
      expect(stunman).to receive(:light_on_fire)
      subject.start_shooting # subject has to call start_shooting after receive all methods created in the stunman
    end
  end
end