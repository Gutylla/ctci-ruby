require './linked_list.rb'

def sum(ll1, ll2)
  
end

l1 = LinkedList.new(7)
l1.add(1)
l1.add(6)
ap l1.to_s
l2 = LinkedList.new(5)
l2.add(9)
l2.add(2)
ap l2.to_s

ap sum(l1, l2)