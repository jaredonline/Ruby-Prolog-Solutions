require '01.Lists/02.last_but_one'

describe LinkedList do
  
  before do
    @list = LinkedList.new(1)
    @list.next = LinkedList.new(2)
    @list.next.next = LinkedList.new(3)
    @list.next.next.next = LinkedList.new(4)
  end
  
  it 'should return the last but one element' do
    @list.last_but_one_element.value.should == 3
  end
  
  it 'should functionally return the last but one element' do
    functional_last_but_one(@list).value.should == 3
  end
  
end