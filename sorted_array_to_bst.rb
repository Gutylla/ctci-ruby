require 'awesome_print'

Node = Struct.new(:data, :left, :right)

def convert(sorted_array, start=0, stop=sorted_array.length)

  return if start > stop

  mid = (start + stop) / 2

  node = Node.new(sorted_array[mid])
  node.left = convert(sorted_array, start, mid-1)
  node.right = convert(sorted_array, mid+1, stop)

  node
end

def pre_order(node)
  return if node.nil?
  arr = []
  arr << node
  pre_order(node.left)
  pre_order(node.right)
  arr.flatten
end


ap pre_order convert([1, 2, 3, 4, 5, 6, 7])
