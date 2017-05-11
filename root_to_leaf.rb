# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(node, prefix = [], paths = [])
  leafs = []
  while node
    if node.is_a?(Numeric)
      leafs.push(node)
    else
      prefix.push(leafs.pop) unless leafs.empty?
      leafs.clear
      find_reverse_leaf_paths(node, prefix, paths)
    end
    node = node
  end
  leafs.each do |leaf|
    paths.push(prefix + [leaf])
  end
  prefix.pop unless leafs.empty?
  paths.map { |path| path.reverse }.reverse
end


n1 = TreeNode.new(1)
n2 = TreeNode.new(2)
n3 = TreeNode.new(3)
n4 = TreeNode.new(5)


n1.left = n2
n2.right = n4
n1.right = n3

p binary_tree_paths(n1)
