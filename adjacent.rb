def adjacentElementsProduct(inputArray)
  current_prod = inputArray[0] * inputArray[1]
  inputArray.each.with_index(1) do |x, i|
    next if i >= inputArray.length-1
    prod = inputArray[i] * inputArray[i+1]
    current_prod = prod if prod > current_prod
  end
  current_prod
end


inputArray = [1, 2, 3, 0]
puts adjacentElementsProduct(inputArray) == 6
