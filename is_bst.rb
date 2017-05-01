BNode = Struct.new(:data, :left, :right)

def is_bst?(root)
  previous_value = nil
  if root
    return false unless is_bst?(root.left)
    p root.data
    p previous_value
    p previous_value && root.data < previous_value
    p '-'*10
    return false if previous_value && root.data < previous_value
    previous_value = root.data
    return is_bst?(root.right)
  end
  true
end


# (1..10).to_a.map do |i|
#   instance_variable_set("@n#{i}", BNode.new(i))
# end

# @n1.left = @n2
# @n1.right = @n3
# @n2.left = @n4
# @n2.right = @n8
# @n8.left = @n10
# @n8.right = @n9
# @n3.left = @n5
# @n3.right = @n6
# @n5.right = @n7

# p is_bst?(@n1)


root = BNode.new(4)
root.left = BNode.new(2)
root.right = BNode.new(5)
root.left.left = BNode.new(1)
root.left.right = BNode.new(3)
p is_bst?(root)
