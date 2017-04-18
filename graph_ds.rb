class Graph

  Node = Struct.new(:data, :i, :visited)
  attr_accessor :vertices, :adjancey_matrix

  def initialize(*vertices)
    @vertices = vertices.map.with_index {|vertice, i| node(vertice, i) }
    @adjancey_matrix = Array.new(vertices.count) { Array.new(vertices.count) { 0 }  }
  end

  def node(data, i, visited=false)
    Node.new(data, i, false)
  end

  def list_vertices
    @vertices.map(&:data)
  end

  def add_edge(start, stop)
    if start >= 0 && stop <= vertices.count
      @adjancey_matrix[start][stop] = 1
      @adjancey_matrix[stop][start] = 1
    end
  end

  def list_edges
    adjancey_matrix.map(&:inspect)
  end

  def reset_visited
    @vertices.map { |v| v.visited = false }
  end

  def search_path(type, source_index, end_index)
    nodes = [source_index]

    loop do
      current_node = nodes.pop

      if current_node == nil
        reset_visited
        return false
      end

      if current_node == end_index
        reset_visited
        return true
      end

      vertice = @vertices.find do |vertice|
        vertice.i == current_node
      end

      next if vertice.visited

      vertice.visited = true if vertice
      vertice = nil

      children = (0..adjancey_matrix.length-1).to_a.select do |i|
        adjancey_matrix[current_node][i] == 1
      end

      if type == :dfs
        nodes = nodes + children
      else
        nodes = children + nodes
      end
    end

  end

  def transitive_closure(start, stop)
    closure = Array.new(vertices.count) { Array.new(vertices.count) { 0 }  }
    previous_closure = adjancey_matrix
    adjancey_matrix.length.times do |k|
      adjancey_matrix.length.times do |row|
        adjancey_matrix.length.times do |col|
          closure[row][col] << previous_closure[row][col] || (previous_closure[row][k] && previous_closure[k][col])
        end
      end
      previous_closure = closure
    end
    closure[start][stop] == 0
  end

end

g = Graph.new(*(('a'..'f').to_a))
g.add_edge(0, 2)
g.add_edge(0, 4)
g.add_edge(1, 2)
g.add_edge(1, 5)
g.add_edge(2, 3)
g.add_edge(3, 4)
g.add_edge(3, 5)

puts g.list_edges
p g.search_path(:bfs, 1, 4)
p g.search_path(:dfs, 1, 4)
p g.transitive_closure(1, 4)
p g.search_path(:bfs, 2, 6)
p g.search_path(:dfs, 2, 6)
p g.transitive_closure(2, 6)
