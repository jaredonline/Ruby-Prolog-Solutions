# 1.02 (*) Find the last but one element of a list.

class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
  def last_but_one_element
    next_element = @next
    last_element = self
    last_but_one = nil
    while next_element != nil
      last_but_one = last_element
      last_element = next_element
      next_element = next_element.next
    end
    
    return last_but_one unless last_but_one.nil?
    return self if last_but_one.nil?
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(2)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)

p list.last_but_one_element.value # => 3

def functional_last_but_one(list)
  if list.next.nil?
    return list
  else
    return functional_last_but_one(list.next) unless list.next.nil? || list.next.next.nil?
    list
  end
end

p functional_last_but_one(list).value # => 3 