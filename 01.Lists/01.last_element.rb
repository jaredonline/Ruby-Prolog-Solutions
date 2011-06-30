# 1.01 (*) Find the last element of a list

require '01.Lists/linked_list'

class LinkedList
  
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

def functional_last_element(list)
  return functional_last_element(list.next) unless list.next.nil?
  list
end