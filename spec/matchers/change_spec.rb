describe 'change matcher' do
  subject { [1, 2, 3] }
  it 'checks that a method changes the object states' do
    # from...to part is optional
    #expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    

    # more dynamic syntax usage of by    (optional)
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end
  
  it 'accepts negative arguments' do
    # from...to part is optional
    #expect { subject.pop }.to change { subject.length }.from(3).to(2)

    # more dynamic syntax usage of by    (optional)
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end