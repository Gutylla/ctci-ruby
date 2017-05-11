# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  m = []

  while true
    n = get_sum_of_squares(n)
    break if m.include?(n) || n == 1
    m << n
  end

  n == 1
end

def get_sum_of_squares(n)
  n = n.to_s.split('')
  sum = 0

  n.map do |ni|
    sum += ni.to_i**2
  end

  sum
end


p is_happy(2)