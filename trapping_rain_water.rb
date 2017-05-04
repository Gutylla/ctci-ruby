# @param {Integer[]} height
# @return {Integer}
def trap(height)
  l = 0
  r = height.length-1
  level = 0
  water = 0
  while (l < r)
    k = nil
    if height[l] <= height[r]
      k = l
      l += 1
    else
      k = r
      r -= 1
    end

    lower = height[k]
    level = [level, lower].max
    water += level - lower

    p "*"*20 + "data" + "*"*20
    p height[l..r]
    p "k : #{k}"
    p "lower : #{lower}"
    p "level : #{level}"
    p "water : #{water}"
  end
  water
end

p trap([0,1,0,2,1,0,1,3,2,1,2,1]) #, return 6.
# p trap([4,4,4,7,1,0])
# p trap([0,2,0])
# p trap([4,2,3]) # 1
