# Given the alphabet encoded as numbers (e.g., a=1, b   =2, ..., z=26),
# and a sequence of numbers (e.g., "23413259802"), how many strings can be generated.

def count(sequence)
  sum = 0
  i = 1

  if (sequence.to_s.length > 0 && sequence.to_i < 27)
    sum = 1
  end

  while (i < sequence.to_s.length)
    sum = sum + count(sequence.to_s[i,sequence.to_s.length])
    i += 1
  end
  sum
end

p count(121)
# p count(23413259802)
# p count(1221)
