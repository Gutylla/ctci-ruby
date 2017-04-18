def checkPalindrome(string)
  string = string.delete(' ')
  if string.length == 1 || string.length == 0
    true
  else
    string[0] == string[-1] ? checkPalindrome(string[1..-2]) : false
  end
end

puts checkPalindrome('aabaa') == true
puts checkPalindrome('aaaa') == true
puts checkPalindrome('a            ab aa') == true
