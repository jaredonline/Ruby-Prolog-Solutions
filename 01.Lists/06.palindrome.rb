# 1.06 (*) Find out whether a list is a palindrome.
# 
#       A palindrome can be read forward or backward; e.g. [x,a,m,a,x].

# This function makes use of the reverse function we added in question 5
require '01.Lists/05.reverse_list' 

class LinkedList
  
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
    
    return reverse_list_str == temp_list_str
  end
  
end

def functional_palindrome?(list, reverse_list = nil)
  if reverse_list.nil?
    reverse_list = functional_reverse(list.clone)
  end
  
  if (list.nil? && !reverse_list.nil?) || (!list.nil? && reverse_list.nil?) || (list.value != reverse_list.value)
    return false
  elsif (list.nil? && reverse_list.nil?) || ((list.next.nil? && reverse_list.next.nil?) && (list.value == reverse_list.value))
    return true
  else
    return functional_palindrome?(list.next, reverse_list.next)
  end
end