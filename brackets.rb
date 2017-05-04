# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  r = []
  generate_one_by_one(r, '', n, n)
  r
end

def generate_one_by_one(result, temp, left, right)

    puts "result :  \t #{result}"
    puts "temp :    \t #{temp}"
    puts "left :    \t #{left}"
    puts "right :   \t #{right}"
    p '*'*30

  if(left == 0 && right == 0)
    result << temp
    puts 'put it in'
    p result
    p temp
    p ':'*100
    return
  end

  generate_one_by_one( result, temp + "(" , left-1, right) if left > 0
  generate_one_by_one( result, temp + ")" , left, right-1) if right > left

end
p generate_parenthesis(2)
