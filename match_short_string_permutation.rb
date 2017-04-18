def find_permutations(str, pattern)
  puts str
  str_hash = {}
  pattern_hash = {}
  (pattern.length).times do |index|
    str_hash[str[index]] = str_hash[str[index]].to_i + 1
    pattern_hash[pattern[index]] = pattern_hash[pattern[index]].to_i + 1
  end
  for i in (pattern.length..(str.length))
    puts "Found pattern in string : #{str[(i-4)..(i-1)]} - #{(i-4)}..#{(i-1)}" if compare_hash(pattern_hash, str_hash)
    str_hash[str[i-4]] -= 1
    str_hash[str[i]] = str_hash[str[i]].to_i + 1
  end
end

def compare_hash(pattern_hash, str_hash)
  pattern_hash.each do |key, value|
    return false if pattern_hash[key] != str_hash[key]
  end
  true
end

pattern = 'abbc'
str = 'cbabadcbbabbcbabaabccbabc'
find_permutations(str, pattern)
