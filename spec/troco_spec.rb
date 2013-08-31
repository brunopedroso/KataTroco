require 'troco'

describe 'troco' do
  
  it 'dah o troco' do
    troco(1,2).should == [1]
    troco(1,3).should == [1,1]
    troco(1,4).should == [1,1,1]
    troco(1,6).should == [5]
    troco(1,7).should == [5,1]
    troco(1,11).should == [10]

    troco(0.5, 1).should == [0.5]
    troco(1.5, 2).should == [0.5]
    troco(1, 1.1).should == [0.1]
    troco(1, 1.05).should == [0.05]
    troco(1, 1.01).should == [0.01]
    troco(1, 1.06).should == [0.05, 0.01]
  end

  it 'agora complica' do
    troco(1, 1.66).should == [0.5, 0.1, 0.05, 0.01]
  end

end
