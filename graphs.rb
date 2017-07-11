  # DFS
def depth_first_search(adj_matrix, source_index, end_index)
  stack = [source_index]

  while !stack.empty?
    curr_node = stack.pop

    return true if curr_node == end_index

    children = (0..adj_matrix.length-1).to_a.select do |i|
      adj_matrix[curr_node][i] == 1
    end

    stack = stack + children
  end
end


# //Warshall's algorithm: to get transitive closure from adjacency matrix
# /*
#  * Idea: If you can get from vertex L to vertex M, and you can get from M to N, then you can get from L to N.
#  *
#  */
def transitive_closure(adj_matrix, source_index, end_index)
  closure = [[]]
  prevClosure = adj_matrix
  adj_matrix.length.times do |k|
    adj_matrix.length.times do |row|
      col_arr = Array.new
      adj_matrix.length.times do |col|
        col_arr << prevClosure[row][col] || (prevClosure[row][k] && prevClosure[k][col])
      end
      closure[row] = col_arr
    end
    prevClosure = closure
  end
  closure[source_index][end_index] == 0
end

adj_matrix = [
  [0, 0, 1, 0, 1, 0],
  [0, 0, 1, 0, 0, 1],
  [0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 1, 1],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
]


p depth_first_search(adj_matrix, 1, 4)
puts transitive_closure(adj_matrix, 1, 4) #.to_a.map(&:inspect)
