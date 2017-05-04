# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  sc = 0
  e = 0
  max = 0
  (nums.length-1).times do |i|
    p '-'*100
    p "i : #{i}"
    p "sc : #{sc}"
    p "nums[i] : #{nums[i]}"
    max = [max, i + nums[i]].max
    p "max : #{max}"

    if( i == e )
      sc += 1
      e = max
    end

  end
  sc
end


# p jump [0]
# p jump [1, 2]
# p jump [1,1,1,1]
# p jump [1,3,2]
# p jump [3,2,1]
p jump([9,7,9,4,8,1,6,1,5,6,2,1,7,9,0])
