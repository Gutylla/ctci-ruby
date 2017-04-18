def find_sub_array(array, sum)

  current_sum = 0
  hash = Hash.new

  array.each_with_index do |element, index|
    # puts hash

    current_sum += element

    if current_sum == sum
      puts "found sub array : 0 to #{index} -> #{array[0..index]}"
      return
    end

    # puts "element:  #{element} | current_sum: #{current_sum} | sum: #{sum} | current_sum-sum : #{current_sum - sum} | hash[current_sum-sum] : #{hash[current_sum-sum]}"

    if !hash[current_sum-sum].nil?
      puts "found sub array : #{hash[current_sum-sum]+1} to #{index} -> #{array[(hash[current_sum-sum]+1)..index]}"
    end

    hash[current_sum] = index

  end

end

array = [15, 20, 3, 55, 93, 5, 88, 99, 12, 11, 2, 4, 81, 9, 5, 10, 13, 54, 112, -1, -2, 26]
sum = 23

find_sub_array(array, sum)
