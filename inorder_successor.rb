require :awesome_print.to_s

Node = Struct.new(:data, :left, :right, :parent)

def inorder_traversal(root, array=[])
  return unless root
  inorder_traversal(root.left, array)
  array << root.data
  inorder_traversal(root.right, array)
  array
end


def inorder_successor(node)
  # Found right children -) return leftmost node of right subtree.
  if node.right
    found = left_most_child(node.right)
  else
    # Go up until we're on left instead of right
    temp_node = node
    parent = node.parent
    while parent && parent.left != temp_node
      temp_node = parent
      parent = parent.parent
    end
    found = parent
  end
  found ? found.data : 'Last node of in-order traversal'
end

def left_most_child(root)
  return unless root
  while root.left
    root = root.left
  end
  root
end


n1 = Node.new(5)
n2 = Node.new(10)
n3 = Node.new(15)
n4 = Node.new(20)
n5 = Node.new(25)
n6 = Node.new(30)
n7 = Node.new(35)
n8 = Node.new(40)
n9 = Node.new(45)
n10 = Node.new(50)

n1.right = n2
n3.left  = n1
n3.right = n4
n5.left  = n3
n5.right = n7
n7.right = n9
n7.left  = n6
n9.right = n10
n9.left  = n8
n2.parent = n1
n1.parent = n3
n4.parent = n3
n3.parent = n5
n8.parent = n9
n10.parent = n9
n6.parent = n7
n9.parent = n7
n7.parent = n5

p inorder_traversal(n5)

p inorder_successor(n1)
p inorder_successor(n2)
p inorder_successor(n3)
p inorder_successor(n4)
p inorder_successor(n5)
p inorder_successor(n6)
p inorder_successor(n7)
p inorder_successor(n8)
p inorder_successor(n9)
p inorder_successor(n10)
