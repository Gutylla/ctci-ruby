def allLongestStrings(inputArray)
  a = [inputArray[0]]
  (1..inputArray.length-1).to_a.map do |e|
    if inputArray[e].size >= a[0].size
      a.clear unless inputArray[e].size == a[0].size
      a << inputArray[e]
    end
  end
  a
end


inputArray = ["aba", "aa", "ad", "vcd", "aba"]
p allLongestStrings(inputArray) == ["aba", "vcd", "aba"]
