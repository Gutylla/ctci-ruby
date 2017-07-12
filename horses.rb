def arrange(arr, k)
  jumble = []
  i = 0
  while i < arr.size
    j = i
    temp = []
    while j < k+i
      temp << arr[j]
      j += 1
    end
    jumble << temp
    i += j
  end

  min = -1
  jumble.map do |e|



  end
end


p arrange(['w','w','w','b'], 2)
