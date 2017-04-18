def urilify(str, true_length)

  (str.length - 1).times do |index|
    if str[index] == ' '
      str[index] = '%20'
      index += 1
      while(index < (str.length - 1) && str[index] == ' ')
        str.delete_at(index)
      end
    end
  end

  str[0..(true_length-1)]
end

i = "Mr John Smith   "
l = 17

puts (urilify(i, 17) == "Mr%20John%20Smith")
