# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  res = 0
  map = {}
  nums.map do |n|
    unless map[n]
      left = map[n-1] ? map[n-1] : 0
      right = map[n+1] ? map[n+1] : 0

      sum = left + right + 1
      map[n] = sum


      res = [res, sum].max

      map[n - left] = sum
      map[n + right] = sum
      p map
      p res
    end
  end
  res
end


p longest_consecutive([1,6,100,22,2,78,11,3,33,5,4,-1,0])