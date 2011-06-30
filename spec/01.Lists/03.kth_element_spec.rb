require '01.Lists/03.kth_element'

describe LinkedList do
  
  before do
    @list = LinkedList.new(1)
    @list.next = LinkedList.new(2)
    @list.next.next = LinkedList.new(3)
    @list.next.next.next = LinkedList.new(4)
  end
  
  context 'OO' do
    [1, 2, 3, 4].each_with_index do |element, index|
      index += 1 # Prolog wants the first element to be 1; Ruby wants it to be 0
      it "should return #{element} for the index #{index}" do
        @list[index].value.should == element 
      end
    end
  end
  
  context 'functional' do
    [1, 2, 3, 4].each_with_index do |element, index|
      index += 1 # Prolog wants the first element to be 1; Ruby wants it to be 0
      it "should return #{element} for the index #{index}" do
        functional_kth_element(@list, index).value.should == element
      end
    end
  end
  
end