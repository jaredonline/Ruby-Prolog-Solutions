# 1.05 (*) Reverse a list.

class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
  def reverse
    head = nil
    next_list = self.next
    current_list = self
    
    while next_list != nil do
      current_list.next = head
      head = current_list
      current_list = next_list
      next_list = current_list.next
    end
    
    current_list.next = head
    head = current_list
    # 1 => 2, 2 => 3, 3 => 4, 4 => nil
    # head = nil
    # next_list => 2
    # current_list = 1
    
    # 1 => nil, 2 => 3, 3 => 4, 4 => nil
    # head = 1
    # current_list = 2
    # next_list = 3
    
    # 2 => 1, 1 => nil, 3 => 4, 4 => nil
    # head = 2
    # current_list = 3
    # next_list = 4
    
    # 3 => 2, 2 => 1, 1 => nil, 4 => nil
    # head = 3
    # current_list = 4
    # next_list = nil
    
    return head
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)
list.next.next.next.next = LinkedList.new(5)

list = list.reverse
while list.next != nil
  p list.value
  list = list.next
end
# => 4, 3, 2, 1