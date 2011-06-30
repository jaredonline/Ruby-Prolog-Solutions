# 1.04 (*) Find the number of elements of a list.

require '01.Lists/linked_list'

class LinkedList
  
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

def functional_count(list, current_count = 1)
  if list.next.nil?
    return current_count
  else
    return functional_count(list.next, current_count + 1)
  end
end