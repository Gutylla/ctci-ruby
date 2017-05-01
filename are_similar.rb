def areSimilar(a, b)
  flag = 1
  ne = 0
  x = -1
  y = nil
  a.each_with_index do |x, i|
    if a[i] != b[i]
      flag = 0
      ne += 1
      if(x == -1)
        x = i
      else
        y = i
      end
    end
  end
  p flag
  p ne
  p x
  p y
  return true if flag == 1
  return false if ne != 2
  if ne == 2
    if(a[x] == b[y]) && (a[y] == b[x])
      return true
    else
      return false
    end
  end
end


a = [1, 2, 3] and b = [1, 2, 3]
p areSimilar(a, b) == true

a = [1, 2, 3] and b = [2, 1, 3]
p areSimilar(a, b) == true

a = [1, 2, 2] and b = [2, 1, 1]
p areSimilar(a, b) == false

a = [2, 3, 1]
b = [1, 3, 2]
p areSimilar(a, b) == true

a = [1, 2, 3]
b = [1, 10, 2]
p areSimilar(a, b) == false
