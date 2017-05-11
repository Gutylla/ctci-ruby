# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
@prev = nil
def recover_tree(root)
  return unless root
  recover_tree(root.left)
  p @prev
  p root.val
  if @prev && root.val < @prev && root.left
    root.left.val = root.val
    root.val = @prev
  elsif @prev && root.val > @prev && root.right
    root.left.val = root.val
    root.val = @prev
  end
  @prev = root.val
  recover_tree(root.right)
  root
end

t0 = TreeNode.new(0)
t1 = TreeNode.new(1)

t0.left = t1

p recover_tree(t0)