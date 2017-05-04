# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  nums.each_with_index do |num1, i|
    p '--'*100
    j = 0
    temp = nums
    while j < nums.length
      p j
      f = temp[i]
      temp[i] = temp[j]
      temp[j] = f
      p temp
      temp[j] = temp[i]
      temp[i] = f
      j += 1
    end
    p '**'*100
  end
end


p permute([1,2,3])