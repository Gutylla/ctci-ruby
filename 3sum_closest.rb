# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  return nil if nums.count < 3
  nums.sort!

  result = nums[0..2].inject(:+)

  (nums.length-2).times do |i|
    next if i > 0 && nums[i] == nums[i-1]
    a = nums[i]
    s = i+1
    e = nums.length-1

    while(s < e)
      sum = nums[i] + nums[s] + nums[e]

      if sum == target
        return target
      elsif sum < target
        s += 1
      else
        e -= 1
      end

      result = sum if (sum-target).abs < (result-target).abs

    end

  end

  result

end

p three_sum_closest([1,1,1,0], -100)
