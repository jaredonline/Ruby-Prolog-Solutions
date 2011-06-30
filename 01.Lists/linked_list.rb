# The base LinkedList class that each problem will extend in order to solve the problem
# 
class LinkedList
  
  attr_accessor :next
  attr_accessor :value
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
end