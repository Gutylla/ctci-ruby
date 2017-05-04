# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  t_hash = str_to_hash(t)

  s_hash = {}
  (s.length).times do |i|
    s_hash[s[i]] = [] unless s_hash[s[i]]
    s_hash[s[i]] << i
  end

  t = s_hash.select { |k,_| t_hash.keys.include?(k) }
  return '' if t.values.flatten.empty?
  s[t.values.flatten.min, t.values.flatten.max+1]
end

def str_to_hash(str)
  str.chars.each_with_object({}) { |c, h| h[c] = h[c].to_i + 1 }
end

p min_window("a", 'aa')
