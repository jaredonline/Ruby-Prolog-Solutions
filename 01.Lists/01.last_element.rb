# 1.01 (*) Find the last element of a list

class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
  def last_element
    next_element = @next
    last_element = self
    while next_element != nil
      last_element = next_element
      next_element = next_element.next
    end
    
    return last_element
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)

p list.last_element.value # => 3