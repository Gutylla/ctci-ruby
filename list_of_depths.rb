require 'awesome_print'

BNode = Struct.new(:data, :left, :right)
Node = Struct.new(:data, :next_node)

def ll_of_depths(root)
  p root
  h = find_height(root)
  nodes_at_level(root, h, {}).map do |key, data|
    node = Node.new(data.shift)
    current = node
    data.map do |d|
      current.next_node = Node.new(d)
      current = current.next_node
    end
    p node
  end
end

def balanced?(root)
  return 0 unless root

  lh = balanced?(root.left)
  return -1 if lh == -1
  rh = balanced?(root.right)
  return -1 if rh == -1

  return -1 if (lh - rh).abs > 1

  [lh, rh].max + 1
end

def find_height(root)
  return 0 unless root
  [ find_height(root.left) , find_height(root.right) ].max + 1
end

def nodes_at_level(root, level, hash)
  return unless root

  hash [level] = [] unless hash[level]
  hash[level] << root.data

  if level > 1
    nodes_at_level(root.left, level-1, hash)
    nodes_at_level(root.right, level-1, hash)
  end

  hash
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

ll_of_depths(@n1)

p "balanced: #{(balanced?(@n1)) > 0}"

@n11 = BNode.new(11)
@n7.left = @n11

p "balanced: #{(balanced?(@n1)) > 0}"
