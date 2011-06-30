# 1.03 (*) Find the K'th element of a list.
# 
#       The first element in the list is number 1.
#       Example:
#       ?- element_at(X,[a,b,c,d,e],3).
#       X = c

require '01.Lists/linked_list'

class LinkedList
  
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

def functional_kth_element(list, element)
  if element == 1
    return list
  else
    return functional_kth_element(list.next, element - 1)
  end
end