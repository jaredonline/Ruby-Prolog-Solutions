# 1.02 (*) Find the last but one element of a list.

require '01.Lists/linked_list'

class LinkedList
  
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

def functional_last_but_one(list)
  if list.next.nil?
    return list
  else
    return functional_last_but_one(list.next) unless list.next.nil? || list.next.next.nil?
    list
  end
end