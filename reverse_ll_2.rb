# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)
  dummy = ListNode.new(0)
  dummy.next = head

  curr = head
  prev = dummy

  (m - 1).times { prev = curr; curr = curr.next }

  node1 = prev
  node2 = curr

  (n - m + 1).times do
    next_node = curr.next
    curr.next = prev
    prev = curr
    curr = next_node
  end

  node3 = prev
  node4 = curr

  node1.next = node3
  node2.next = node4

  dummy.next
end


n1 = ListNode.new(1)
n2 = ListNode.new(2)
n1.next = n2
n3 = ListNode.new(3)
n2.next = n3
n4 = ListNode.new(4)
n3.next = n4
n5 = ListNode.new(5)
n4.next = n5

p reverse_between(n1, 2, 4)
