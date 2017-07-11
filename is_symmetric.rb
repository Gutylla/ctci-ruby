require 'awesome_print'

# Definition for a binary tree node.
TreeNode = Struct.new(:data, :left, :right)

# @param {TreeNode} root
# @return {Boolean}
def isSymmetric(root)
  return 1 if root.nil?
  return 0 if root.left.nil? && !root.right.nil?
  return 0 if !root.left.nil? && root.right.nil?
  return 0 if root.left.data != root.right.data
  isSymmetric(root.left) && isSymmetric(root.right) ? 1 : 0
end

n1 = TreeNode.new(1)
n2 = TreeNode.new(2)
n1.left = n2
n3 = TreeNode.new(2)
n1.right = n3
n4 = TreeNode.new(4)
n2.left = n4
n5 = TreeNode.new(5)
n2.right = n5
n6 = TreeNode.new(4)
n3.left = n6
n7 = TreeNode.new(5)
n3.right = n7

p isSymmetric(n1)