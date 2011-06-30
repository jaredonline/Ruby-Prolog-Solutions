# 1.05 (*) Reverse a list.

require '01.Lists/linked_list'

class LinkedList
  
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