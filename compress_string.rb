def compress(str)

  new_str = []
  count = 0

  (str.length).times do |index|

    count += 1

    if(str[index] != str[index+1])
      new_str.push(str[index])
      new_str.push(count)
      count = 0
    end

  end

  new_str.join('')

end

puts compress('abbcccddddeeeeeffffffggggggghhhhhhhh')
