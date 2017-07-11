# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)

  helper('', n , n, [])

end

def helper(str, left , right, results)

    if left == 0 && right == 0
        results << str.dup
    end

    helper(str + '(', left-1, right, results) if left >= 0
    helper(str + ')', left, right - 1, results) if right > left

    results
end
p generate_parenthesis(3)
