# 1.04 (*) Find the number of elements of a list.

class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
  def count
    counter = 1
    list = self
    while list.next != nil
      list = list.next
      counter += 1
    end
    counter
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)

p list.count # => 4

def functional_count(list, current_count = 1)
  if list.next.nil?
    return current_count
  else
    return functional_count(list.next, current_count + 1)
  end
end

p functional_count(list) # => 4