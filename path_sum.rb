require 'awesome_print'

TreeNode = Struct.new(:val, :left, :right)

(1..10).to_a.map do |i|
  instance_variable_set("@n#{i}", TreeNode.new(i))
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

def path_sum(root, sum)
  return [] if root.nil?
  path(root, sum)
end

private def path(root, sum, tracing=[], paths=[])
  tracing.push(root)

  if root.left.nil? && root.right.nil?
    paths << tracing.map(&:val) if tracing.map(&:val).inject(:+) == sum
  else
    path(root.left, sum, tracing, paths) if root.left
    path(root.right, sum, tracing, paths) if root.right
  end

  x = tracing.pop
  tracing.empty? ? paths : x
end

p path_sum(@n1, 20)