require '01.Lists/04.num_elements_in_list'

describe LinkedList do
  before do
    @list = LinkedList.new(1)
    @list.next = LinkedList.new(2)
    @list.next.next = LinkedList.new(3)
    @list.next.next.next = LinkedList.new(4)
  end
  
  it 'should OO return the count' do
    @list.count.should == 4
  end
  
  it 'should functionally return the count' do
    functional_count(@list).should == 4
  end
end