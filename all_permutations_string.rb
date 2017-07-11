require 'benchmark/ips'

def swap_char(input, i, j)
  input[i], input[j] = input[j], input[i]
  input
end

def permute_string_rec(input, current_index, ending_index, perms)

  if (current_index == ending_index)
    perms << input.dup
    return
  end

  for i in current_index..ending_index
    swapped_input = swap_char(input.dup, current_index, i)
    permute_string_rec(swapped_input, current_index + 1, ending_index, perms)
  end

  perms.uniq
end

def permute_string(input)
  permute_string_rec(input, 0, input.length - 1, [])
end

p permute_string('GUTTU')


# def fact(n)
#   return 1 if n == 0 || n == 1
#   n * fact(n-1)
# end

# def per(s)
#   r = []

#   n = s.length
#   fc = fact(n)

#   j = 1
#   m = 0

#   (fc-1).times do |i|

#     perm = s
#     k = 0

#     while (k != fc/n)

#       while (j != n-1)
#         r << perm.dup

#         swap(perm, j, j+1)

#         i += 1
#         j += 1
#         k += 1
#       end

#       j = 1
#     end

#     m += 1
#     break if m == n
#     swap(s, 0, m)
#   end
#   r
# end

# def swap(s, i, j)
#   temp = s[i]
#   s[i] = s[j]
#   s[j] = temp
# end

# # Benchmark.ips do |x|

# # x.report("recursive") do |times|
# p stringPermutations('ABC').map {|x| x.join }
# # end

# # x.report("iterative") do |times|
# # p per('ABA')
# # end

# # x.report("inbuilt") do |times|
# # p 'ABA'.chars.permutation.map(&:join)
# # end

# # x.compare!

# # end
