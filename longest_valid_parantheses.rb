# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)

  l = 0
  r = 0
  max = 0

  s.chars.each do |c|
    if c == '('
      l += 1
    else
      r += 1
    end
    if l == r
      max = [max, 2*r].max
    elsif r > l
      l = 0
      r = 0
    end
  end

  l = 0
  r = 0

  s.chars.reverse.each do |c|
    if c == '('
      l += 1
    else
      r += 1
    end
    if l == r
      max = [max, 2*l].max
    elsif l > r
      l = 0
      r = 0
    end
  end

  max
end

p longest_valid_parentheses("()(()))")
p longest_valid_parentheses(")())")
