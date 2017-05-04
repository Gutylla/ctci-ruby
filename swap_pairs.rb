# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return [] unless head
  pre = ListNode.new(0)
  pre.next = head
  preHelper = pre
  p = head
  while p && p.next
    temp = p.next
    preHelper.next = temp
    preHelper = p
    p.next = temp.next
    p = temp.next
    temp.next = preHelper
  end
  pre.next
end

ListNode = Struct.new(:val, :next)

n1 = ListNode.new(1)
n2 = ListNode.new(2)
n1.next = n2


p swap_pairs(n1)
