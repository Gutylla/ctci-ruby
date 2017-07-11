require 'awesome_print'
BNode = Struct.new(:data, :left, :right)

def is_bst?(root)
  # assuming all tree values are positive.
  prev = BNode.new
  return is_binary_search_tree_rec(root, prev)
end

def is_binary_search_tree_rec(root, prev)

  return true unless root

  return false unless is_binary_search_tree_rec(root.left, prev)

  return false if (prev.data && prev.data > root.data)

  prev.data = root.data

  return false unless is_binary_search_tree_rec(root.right, prev)

  true
end

def inorder(root, results=[])
  return unless root
  inorder(root.left, results)
  results << root.data
  inorder(root.right, results)
  results
end


(1..10).to_a.map do |i|
  instance_variable_set("@n#{i}", BNode.new(i))
end

@n1.left = @n2
@n1.right = @n3
@n2.left = @n4
@n2.right = @n8
@n8.left = @n10
@n8.right = @n9
@n3.left = @n5
@n3.right = @n6
@n5.right = @n7

p is_bst?(@n1)
p inorder(@n1)

@n5.left = @n3
@n3.left = @n1
@n3.right = @n2
@n1.left = @n1.right = nil
@n2.left = @n2.right = nil
@n3.left = @n3.right = nil
@n5.right = @n7
@n7.left = @n6
@n7.right = @n8
@n8.left = @n8.right = nil

p is_bst?(@n5)
p inorder(@n5)

root = BNode.new(4)
root.left = BNode.new(2)
root.right = BNode.new(5)
root.left.left = BNode.new(1)
root.left.right = BNode.new(3)

p is_bst?(root)
p inorder(root)
