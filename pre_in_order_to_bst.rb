require 'awesome_print'

# Definition for a binary tree node.
TreeNode = Struct.new(:val, :left, :right)

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  return if preorder.empty? || inorder.empty?

  node = TreeNode.new(preorder.shift)
  # p '--'*100
  # p inorder
  # p node.val
  i = inorder.index(node.val)
  # p i
  return node unless i
  node.left = build_tree(preorder, inorder[0..i-1])
  node.right = build_tree(preorder, inorder[i+1..-1])

  node
end


ap build_tree([1,2,3], [2,1,3])