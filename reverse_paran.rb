def reverseParentheses(s)
  paran_string = s.scan(/\(([^()]*)\)/i).flatten.last
  paran_string ? reverseParentheses(s.gsub!("(#{paran_string})", "#{paran_string.reverse}")) : s
end

s = "a(bc)de"
p reverseParentheses(s) == "acbde"

i = "a(bcdefghijkl(mno)p)q"
o = "apmnolkjihgfedcbq"

p reverseParentheses(i) == o
