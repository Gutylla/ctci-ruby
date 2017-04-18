def isLucky(n)
  n_array = n.to_s.split(//)
  return false if n_array.count%2 != 0
  s = 0
  n_array[0..(n_array.count/2)-1].each_with_index do |e, i|
    s += (e.to_i - n_array[i + (n_array.count/2)].to_i)
  end
  s == 0
end

# n = 12890
# p isLucky(n) == false
n = 1230
p isLucky(n) == true
n = 239017
p isLucky(n) == false
