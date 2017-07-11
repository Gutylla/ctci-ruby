def level_order_traversal(root)

  return [] unless root

  current_q = [root]
  next_q = []
  level = 1
  temp = []
  r = []

  while !current_q.empty?

    node = current_q.shift

    next_q << node.left if node.left
    next_q << node.right if node.right

    temp << node.val if node

    if current_q.empty?
      level += 1
      current_q = next_q.dup
      next_q.clear
      r << temp.dup
      temp.clear
    end

  end

  r

end

BNode = Struct.new(:val, :left, :right)

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



p level_order_traversal(@n1)
