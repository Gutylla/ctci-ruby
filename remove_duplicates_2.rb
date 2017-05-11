# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  i = 0
  nums.each do |n|
    if i < 2 || n > nums[i-2]
      nums[(i+=1)-1] = n
    end
  end
  i
end

p remove_duplicates([1,1,1,2,2,3])
