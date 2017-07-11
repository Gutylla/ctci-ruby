require 'awesome_print'
# Definition for singly-linked list.
ListNode = Struct.new(:val, :next)

# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
  return unless head
  slow = head
  fast = head

  # find mid of the LL
  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  reversed_list = reversed_list(slow.next)

  slow.next = nil
  current = head

  while reversed_list
    insert = reversed_list
    reversed_list = reversed_list.next
    insert.next = current.next
    current.next = insert
    current = insert.next
  end

  head
end

def reversed_list(head)
  pre = nil

  while head
    next_node = head.next
    head.next = pre
    pre = head
    head = next_node
  end

  pre
end

n1 = ListNode.new(1)
n2 = ListNode.new(2)
n3 = ListNode.new(3)
n4 = ListNode.new(4)
n5 = ListNode.new(5)
n6 = ListNode.new(6)
n7 = ListNode.new(7)

n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5
n5.next = n6
n6.next = n7

p reorder_list(n1)
