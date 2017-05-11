require 'awesome_print'
# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {ListNode} head
# @return {TreeNode}
def sorted_list_to_bst(head)
  arr = ll_to_arr(head)
  ap arr
  ap sl_2_bst(arr)
end

def sl_2_bst(arr, start=0, stop=arr.length)
  return if start > stop

  mid = (start + stop) / 2
  return unless arr[mid]
  node = TreeNode.new(arr[mid])

  node.left = sl_2_bst(arr, start, mid-1)
  node.right = sl_2_bst(arr, mid+1, stop)

  node
end

def ll_to_arr(head)
  arr = []
  while head
    arr << head.val
    head = head.next
  end
  arr
end

def pre_order(root, arr=[])
  return unless root
  arr << root.val
  pre_order(root.left, arr)
  pre_order(root.right, arr)
  arr
end

# create LL
ln1 = ListNode.new(1)
ln2 = ListNode.new(2)
ln1.next = ln2
ln3 = ListNode.new(3)
ln2.next = ln3
ln4 = ListNode.new(4)
ln3.next = ln4
ln5 = ListNode.new(5)
ln4.next = ln5

ap pre_order(sorted_list_to_bst(ln1))
