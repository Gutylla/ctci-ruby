# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  return false if nums.empty? || target.nil?
  pivot = nil
  i = 0
  while i < nums.length-1
    if nums[i] > nums[i+1]
      pivot = i
      break
    end
    i += 1
  end

  return i if target == nums[i]

  if target < nums[i] && target >= nums[0]
    s = 0
    e = i
  elsif  target < nums[i] && target < nums[0]
    s = i+1
    e = nums.length
  end

  return false unless s && e

  nums[s..e].each_with_index { |n, i| return true if n == target}

  false
end

a = [1]
p search(a, 1)
