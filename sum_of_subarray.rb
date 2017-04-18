def find_sub_array(array, sum)

  current_sum = array.first
  start = 0

  array.each_with_index do |element, index|
    # puts "*"*100
    # puts "Iteration : #{index}"
    # puts "current_sum : #{current_sum}"

    while((current_sum > sum) && (start < (index-1))) do
      # puts "(current_sum > sum) && (start < (index-1)) : #{(current_sum > sum) && (start < (index-1))}"
      # puts "array[start] : #{array[start]}"
      # puts "start : #{start}"

      # puts "*"*100
      current_sum -= array[start]
      start += 1
    end

    if current_sum == sum
      puts "sub-array found #{start} to #{index} -> #{array[(start)..(index)]}"

      # return
    end

    if index+1 != array.length
      current_sum += array[index+1]
    end

  end

end

array = [15, 20, 3, 55, 93, 5, 88, 99, 12, 11, 2, 4, 81, 9, 5, 10, 13]
sum = 23

find_sub_array(array, sum)
