def sortByHeight(a)
  tree_indexes = a.each_index.select { |i| a[i] == -1 }
  a = a.sort!.drop(tree_indexes.count)
  tree_indexes.map do |ti|
    a.insert(ti, -1)
  end
  a
end


a = [-1, 150, 190, 170, -1, -1, 160, 180]
p sortByHeight(a) == [-1, 150, 160, 170, -1, -1, 180, 190]