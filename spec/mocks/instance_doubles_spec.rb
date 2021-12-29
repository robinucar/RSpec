class Person
  def a
    sleep(3)
    "Hello"
  end
end

describe Person do
  describe 'regular double' do
    it 'can implement any method' do 
      person = double(a: "Hello", b: 20) 
      # even if person class does not have b method the test will still pass.
      # because we used regular double and it has just created a fake person
      expect(person.a).to eq 'Hello'
    end
  end
  describe 'instance double' do
    it 'can only implement method that are defined on the class' do
      # person = instance_double(Person, a: 'Hello', b: 20) # test will fail because Person class does not have b method

      person = instance_double(Person, a: 'Hello')
      expect(person.a).to eq 'Hello'

      #an alternative syntax with allow method

      person = instance_double(Person)
      # allow(person).to receive(:a).with(3, 10).and_return("Hello") # test will fail. because a method in the class does not have any argument
      allow(person).to receive(:a).with(no_args).and_return("Hello")
      expect(person.a).to eq("Hello")
    end
  end
end