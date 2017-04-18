def park(arr)
  index_of_empty = arr.index(nil)
  arr[index_of_empty] = arr[0]
  arr[0] = nil

  arr.each_with_index do |element, index|
    arr[arr.index(nil)] = element
    arr[index+1] = nil
    puts arr
  end

end

park([2,3,4,nil,5,1])
