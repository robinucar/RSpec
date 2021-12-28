describe 'satisfy matcher' do
  subject { 'racecar' }
 

  it 'as a palindrome' do
    expect(subject).to satisfy { |val| val == val.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
end

describe 'satisfy matcher with not_to' do
  subject { 'test' }
 

  it 'as a not palindrome' do
    expect(subject).not_to satisfy { |val| val == val.reverse }
  end

  it 'can accept a custom error message' do
    expect(subject).not_to satisfy('not be a palindrome') do |value|
      value == value.reverse
    end
  end
end