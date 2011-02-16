# 1.06 (*) Find out whether a list is a palindrome.

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
  
  def palindrome?
    temp_list = self
    temp_list_values = [temp_list.value]
    while temp_list.next != nil
      temp_list_values << temp_list.value
      temp_list = temp_list.next
    end
    temp_list_str = temp_list_values.join(',')
    
    reverse_list = self.reverse
    reverse_list_values = [reverse_list.value]
    while reverse_list.next != nil
      reverse_list_values << reverse_list.value
      reverse_list = reverse_list.next
    end
    reverse_list_str = reverse_list_values.join(',')
    
    return true if reverse_list_str == temp_list_str
    return false if reverse_list_str != temp_list_str
  end
  
end

list = LinkedList.new(1)
list.next = LinkedList.new(4)
list.next.next = LinkedList.new(3)
list.next.next.next = LinkedList.new(4)
list.next.next.next.next = LinkedList.new(5)

p list.palindrome? # => false