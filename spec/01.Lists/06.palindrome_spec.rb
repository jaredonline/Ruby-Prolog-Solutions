require '01.Lists/06.palindrome'

describe LinkedList do
  
  context 'OO' do
    before do
      @list = LinkedList.new(1)
      @list.next = LinkedList.new(4)
      @list.next.next = LinkedList.new(3)
      @list.next.next.next = LinkedList.new(4)
      @list.next.next.next.next = LinkedList.new(5)
    end
    
    it 'returns false when not a palindrome' do
      @list.palindrome?.should == false
    end
    
    it 'returns true when a palindrome' do
      @list.next.next.next.next = LinkedList.new(1)
      @list.palindrome?.should == true
    end
  end
  
  context 'functional' do
    before do
      @list = LinkedList.new(1)
      @list.next = LinkedList.new(4)
      @list.next.next = LinkedList.new(3)
      @list.next.next.next = LinkedList.new(4)
      @list.next.next.next.next = LinkedList.new(5)
    end
    
    it 'returns false when not a palindrome' do
      functional_palindrome?(@list).should == false
    end
    
    it 'returns true when a palindrome' do
      @list.next.next.next.next = LinkedList.new(1)
      functional_palindrome?(@list).should == true
    end
  end
  
end