# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  return true unless head
  
  slow = head
  fast = head
  
  while fast.next && fast.next.next
    slow = slow.next
    fast = fast.next.next
  end

  slow.next = reverse(slow.next)
  slow = slow.next

  while slow
    return false if head.val != slow.val
    head = head.next
    slow = slow.next
  end

  true

end

def reverse(head)
  pre = nil

  while head
    nxt = head.next
    head.next = pre
    pre = head
    head = nxt
  end

  pre
end

n1 = ListNode.new(5)
n2 = ListNode.new(4)
n3 = ListNode.new(4)
n4 = ListNode.new(3)
n5 = ListNode.new(4)
n6 = ListNode.new(4)
n7 = ListNode.new(5)

n1.next = n2
n2.next = n3
n3.next = n5
n4.next = n5
n5.next = n6
n6.next = n7

p is_palindrome(n1)
