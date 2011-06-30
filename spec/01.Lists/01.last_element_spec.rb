require '01.Lists/01.last_element'

describe LinkedList do
  
  before do
    @list = LinkedList.new(1)
    @list.next = LinkedList.new(2)
    @list.next.next = LinkedList.new(3)
  end
  
  it 'should OO return the last element' do
    @list.last_element.value.should == 3
  end
  
  it 'should functionally return the last element' do
    functional_last_element(@list).value.should == 3
  end
  
end