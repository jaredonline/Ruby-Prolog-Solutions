require '01.Lists/05.reverse_list'

describe LinkedList do
  before do
    @list = LinkedList.new(1)
    @list.next = LinkedList.new(2)
    @list.next.next = LinkedList.new(3)
    @list.next.next.next = LinkedList.new(4)
    @list.next.next.next.next = LinkedList.new(5)
  end
  
  it 'should reverse a list' do
    @list.to_s.should == "1,2,3,4,5"
    @list.reverse.to_s.should == "5,4,3,2,1"
  end
  
  it 'should functionally reverse the list' do
    @list.to_s.should == "1,2,3,4,5"
    functional_reverse(@list).to_s.should == "5,4,3,2,1"
  end
  
  it 'should not clobber the original variable' do
    functional_reverse(@list)
    @list.to_s.should == "1,2,3,4,5"
  end
end