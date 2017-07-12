# Given the alphabet encoded as numbers (e.g., a=1, b   =2, ..., z=26),
# and a sequence of numbers (e.g., "23413259802"), how many strings can be generated.

def count(message)
  return 0 if message.empty?
  total      = 1
  n          = message.size
  prev_total = total
  i          = n-1

  while i >= 0

    current_char    = message[i].to_i
    adjact_char     = message[i,2].to_i

    current_count   = (current_char == 0) ? 0 : total

    current_count  += prev_total if i < n-1 && current_char > 0 && adjact_char < 27

    prev_total      = total
    total           = current_count

    i -= 1
  end

  message.nil? ? 0 : total
end

p count("102110")
# p count(23413259802)
# p count(1221)
