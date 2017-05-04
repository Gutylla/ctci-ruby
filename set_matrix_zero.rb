# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  arr = { rows: [], columns: [] }

  w = matrix.length
  h = matrix.first.length

  w.times do |i|
    h.times do |j|
      if matrix[i][j] == 0
        arr[:rows] << i
        arr[:columns] << j
      end
    end
  end

  arr[:rows].uniq!
  arr[:columns].uniq!

  arr[:rows].map do |i|
    h.times do |j|
      matrix[i][j] = 0
    end
  end

  w.times do |i|
    arr[:columns].map do |j|
      matrix[i][j] = 0
    end
  end

  matrix

end

p set_zeroes([[-4,-2147483648,6,-7,0],[-8,6,-8,-6,0],[2147483647,2,-9,-6,-10]])
