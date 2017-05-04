require 'awesome_print'
# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return [] unless head
  return head if k == 0 || !head.next

  current = head

  c = 0
  while current
    c += 1
    current = current.next
  end

  i = k%c

  i =  c if i == 0
  p i
  i.times do
    ap head

    second_last = ListNode.new(-1)
    second_last.next = head
    last = head

    while last.next
      second_last = second_last.next
      last = last.next
    end

    p last
    p second_last

    last.next = head
    second_last.next = nil
    head = last

  end

  head

end

l1 = ListNode.new(1)
l2 = ListNode.new(2)
l3 = ListNode.new(3)
# l1.next = l2
# l2.next = l3

p rotate_right(l1, 1)
