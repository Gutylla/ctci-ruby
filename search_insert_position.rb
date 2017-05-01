# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  l = 0
  u = nums.length-1


  while l <= u
      mid = (l + u)/2

        if nums[mid] == target
            return mid
        elsif nums[mid] > target
            u = mid - 1
        else
            l = mid + 1
        end
   end
   l

end


p search_insert([1,3,5,6], 5) == 2
p search_insert([1,3,5,6], 2) == 1
p search_insert([1,3,5,6], 7) == 4
p search_insert([1,3,5,6], 0) == 0
