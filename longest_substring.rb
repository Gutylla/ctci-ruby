# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.empty?
    dict = {}
    max_len = 0
    start = -1
    s.length.times do |i|
        start = dict[s[i]] if dict[s[i]] && (dict[s[i]] > start)
        dict[s[i]] = i
        max_len = [max_len, i - start].max
        p "start : #{start}"
        p "dict : #{dict}"
        p "s[i] : #{s[i]}"
        p "dict[s[i]] : #{dict[s[i]]}"
        p "max_len : #{max_len}"
        p "(i - start) : #{(i - start)}"
        p '--'
    end
    max_len == 0 ? 1 : max_len
end

p length_of_longest_substring ('ababc')