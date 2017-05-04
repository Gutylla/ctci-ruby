def groupsOfAnagrams(words)
  hash = {}
  words.map do |word|
    sorted = word.chars.sort
    hash[sorted] = hash[sorted].to_i + 1
  end
  hash.values
end

# words = ["tea", "eat", "apple", "ate", "vaja", "cut", "java", "utc"]
# p groupsOfAnagrams(words) #== 4

p groupsOfAnagrams([""])
