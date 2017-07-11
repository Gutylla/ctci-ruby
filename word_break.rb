DIC = [ "mobile","samsung","sam","sung","man","mango",
        "icecream","and","go","i","like","ice","cream" ]


def word_break(string)
  return true if string.empty?
  str_arr = string.split(//)
  (str_arr.count - 1).times do |index|
    if DIC.include?(string[0..index])
      if word_break(string[index..(str_arr.count-index)])
        return true
      end
    end
  end

  false
end

# p word_break("ilikesamsung") == true
# p word_break("iiiiiiii") == true
# p word_break("") == true
# p word_break("ilikelikeimangoiii") == true
p word_break("samsungandmango") == true
# p word_break("samsungandmangok") == false
