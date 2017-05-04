# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(str, pattern)
  str_index = 0
  pattern_index = 0
  m = 0
  asterix_index = -1

  while str_index < str.length

    p "-"*100
    p "pattern[pattern_index] : #{pattern[0..pattern_index]}"
    p "str[str_index] : #{str[0..str_index]}"

    if pattern_index < pattern.length && (pattern[pattern_index] == '?' || str[str_index] == pattern[pattern_index])
      str_index += 1
      pattern_index += 1

      p "match found || ?"

    elsif pattern_index < pattern.length && pattern[pattern_index] == '*'
      asterix_index = pattern_index
      m = str_index
      pattern_index += 1

      p "match *"

    elsif asterix_index != -1

      pattern_index = asterix_index + 1
      m += 1
      str_index = m

      p "match found *"

    else

      return false
    end
  end

  pattern_index += 1 while pattern_index < pattern.length && pattern[pattern_index] == '*'

  pattern_index == pattern.length
end

s = "abefcdgiescdfimde"
p = "ab*cd?i*de"
p is_match(s, p)
# p is_match("b", "??")

# p is_match('ab', '?*')

# p is_match("aab", "c*a*b")

# p is_match("a", "a*")

# p is_match("b", "?*?")

# p is_match("c", "*?*")

# p is_match("aa", "a")
