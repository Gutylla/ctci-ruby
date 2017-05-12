require 'awesome_print'

Node = Struct.new(:data, :left, :right)

def convert(sorted_array, start=0, stop=sorted_array.length)

  return if start > stop

  mid = (start + stop) / 2
  return unless sorted_array[mid]
  node = Node.new(sorted_array[mid])
  node.left = convert(sorted_array, start, mid-1)
  node.right = convert(sorted_array, mid+1, stop)

  node
end

def pre_order(node, arr = [])
  return if node.nil?
  arr << node.data
  pre_order(node.left, arr)
  pre_order(node.right, arr)
  arr.flatten
end

def in_order(node, arr = [])
  return if node.nil?
  pre_order(node.left, arr)
  arr << node.data
  pre_order(node.right, arr)
  arr.flatten
end

ap convert([1, 2, 3, 4, 5, 6, 7])
p pre_order(convert([1, 2, 3, 4, 5, 6, 7]))
p in_order(convert([1, 2, 3, 4, 5, 6, 7]))
