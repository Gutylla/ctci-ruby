def side_max(array)
  i = 0
  n = array.size
  arr = [array[0]]

  while i < array.size
    arr[i] = [arr.last, array[i]].max
    i += 1
  end

  arr
end

def trap(array)
  left_max = side_max(array)
  right_max = side_max(array.reverse).reverse

  sum = 0
  array.each_with_index do |a, i|
    sum += [left_max[i], right_max[i]].min - a
  end

  sum
end

p [0,1,0,2,1,0,1,3,2,1,2,1]
p trap([0,1,0,2,1,0,1,3,2,1,2,1]) #, return 6.

# p trap([4,4,4,7,1,0])
# p trap([0,2,0])
# p trap([4,2,3]) # 1
