def alternatingSums(a)
 sum1 = 0
 sum2 = 0
 a.each_with_index do |x,i|
  sum1 += x if i%2 == 0
  sum2 += x if i%2 == 1
 end
 [sum1,sum2]
end


a = [50, 60, 60, 45, 70]
p alternatingSums(a) == [180, 105]