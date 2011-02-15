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
    
    return head
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)
list.next.next.next.next = LinkedList.new(5)

list = list.reverse
str = []
str << list.value
while list.next != nil
  list = list.next
  str << list.value
end
p str.join(",") # => 5, 4, 3, 2, 1

def functional_reverse(list, head = nil)
  if list.nil?
    return head
  elsif list.next.nil?
    list.next = head
    head = list
    return head
  else
    next_list = list.next
    list.next = head
    head = list
    return functional_reverse(next_list, head)
  end
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)
list.next.next.next.next = LinkedList.new(5)

list = functional_reverse(list)
str = []
str << list.value
while list.next != nil
  list = list.next
  str << list.value
end
p str.join(",") # => 5, 4, 3, 2, 1