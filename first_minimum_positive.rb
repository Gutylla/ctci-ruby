# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  return 1 if nums.empty?

  l = nil
  u = nil

  nums.map do |n|
    if l.nil?
      l = n if n > 0
    elsif n < l && n > 0
      l = n
    end

    if u.nil?
      u = n if n > 0
    elsif n > u
      u = n
    end
  end

  hash = nums.each_with_object({}) { |n,h| h[n] = true }

  return 1 if l != 1
  return 2 if u == 1

  (l..u+1).to_a.map do |i|
    return i unless hash[i]
  end

end

# p first_missing_positive([3,4,-1,1])
p first_missing_positive([1,2,0])
