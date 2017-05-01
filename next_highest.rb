# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  original = nums.dup

  return if nums.length < 1
  index = nil

  (nums.length-1).times do |i|
    if nums[i] < nums[i+1]
      index = i
    end
  end

  lowest_index = nil

  if index
    (index+1..nums.length-1).to_a.map do |j|
      if nums[index] < nums[j]
        lowest_index = j
      end
    end
  end

  if index && lowest_index
    t = nums[index]
    nums[index] = nums[lowest_index]
    nums[lowest_index] = t
  end


  l = (index || -1) + 1
  u = nums.length-1
  while l < u
    temp = nums[l]
    nums[l] = nums[u]
    nums[u] = temp

    l += 1
    u -= 1
  end

end


p next_permutation([1,2,3,4])
p next_permutation([1,3,2])
p next_permutation([3,2,1])
p next_permutation([1,2])
p next_permutation([5,4,7,5,3,2])
