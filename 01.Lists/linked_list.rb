# The base LinkedList class that each problem will extend in order to solve the problem
# 
class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
  # this method is for comparison testing, and shouldn't be used in actual problem solving
  # 
  def to_a
    array = [@value]
    
    list = self
    while list.next != nil
      list = list.next
      array << list.value
    end
    
    array
  end
  
  def to_s
    to_a.join(",")
  end
  
end