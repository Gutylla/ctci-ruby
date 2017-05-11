# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root, s=[])
  return unless root

  is_symmetric(root.left, s)
  s << root.val
  is_symmetric(root.right, s)

  while s
    return false if s.pop != s.shift
  end

  s.empty?

end


[1,2,2,3,4,4,3]
