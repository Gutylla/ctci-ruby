# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums, ci=0, ei=nums.size-1)

  if ci == ei
    p nums
  end

  for i in ci..ei
    n = nums.dup
    n[i], n[ci] = n[ci], n[i]
    permute(n, ci+1, ei)
  end

end


permute([1,2,3])
