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
    list = @list.reverse
    str = []
    str << list.value
    while list.next != nil
      list = list.next
      str << list.value
    end
    str.join(',').should == "5,4,3,2,1"
  end
  
  it 'should functionally reverse the list' do
    list = functional_reverse(@list)
    str = []
    str << list.value
    while list.next != nil
      list = list.next
      str << list.value
    end
    str.join(",").should == "5,4,3,2,1"
  end
end