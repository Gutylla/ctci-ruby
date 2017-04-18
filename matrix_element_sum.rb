def matrixElementsSum(matrix)
  matrix.each_with_index do |floor, i|
    floor.each_with_index do |room, j|
      if room == 0
        (i...(matrix.length)).to_a.map do |i|
          matrix[i][j] = 0
        end
      end
    end
  end
  matrix.flatten.inject(0, :+)
end


matrix = [[0, 1, 1, 2],
          [0, 5, 0, 0],
          [2, 0, 3, 3]]

p matrixElementsSum(matrix) == 9
