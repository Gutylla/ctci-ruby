# @param {String} s
# @return {String[][]}
def partition(s)
  all_ss = []
  (0...s.length).map do |i|
    (i...s.length).map do |j|
      all_ss << s[i..j]
    end
  end

  all_ss = all_ss.collect do |str|
    str if str == str.reverse
  end.compact

  res = []
  all_ss.map do |str|
    p '--'*100
    p str
    p s
    p s.split(str)
  end
end


partition('aab')