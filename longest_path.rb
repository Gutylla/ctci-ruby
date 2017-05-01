require :awesome_print.to_s

class Graph

  Node = Struct.new(:visited, :data)
  attr_accessor :vertices, :adjancey_matrix

  def initialize(*vertices)
    @vertices = vertices.map { |v| Node.new(false, v) }
    @adjancey_matrix = Array.new(vertices.count) { Array.new(vertices.count) { 0 }  }
  end

  def add_edge(to, from)
    if to >= 0 && from <= vertices.count
      @adjancey_matrix[to][from] = 1
      @adjancey_matrix[from][to] = 1
    end
  end

  def bfs(source_index)

    q = [source_index]
    hash = { source_index => 0 }

    while q
      node = q.pop
      p node
      children = (0..adjancey_matrix.length-1).to_a.map do |i|
        unless hash[i]
          q.push(i)
          hash[i] = hash[node].to_i + 1
          p hash
        end
      end

    end

  end

end

g = Graph.new(*(0..9).to_a)
g.add_edge(0,1)
g.add_edge(1,2)
g.add_edge(2,9)
g.add_edge(2,4)
g.add_edge(2,3)
g.add_edge(4,5)
g.add_edge(1,6)
g.add_edge(6,7)
g.add_edge(6,8)

p g.bfs(5)
