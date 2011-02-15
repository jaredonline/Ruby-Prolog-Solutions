# 1.03 (*) Find the K'th element of a list.
# The first element in the list is number 1.

class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
  def [](element)
    counter = 1
    list = self
    while counter != element
      list = list.next
      counter += 1
    end
    list
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)

p list[3].value # => 3

def functional_kth_element(list, element)
  if element == 1
    return list
  else
    return functional_kth_element(list.next, element - 1)
  end
end

p functional_kth_element(list, 3).value # => 3