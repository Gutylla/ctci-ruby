def almostIncreasingSequence(sequence)
  count = 0
  if sequence.count <= 2
    return true
  else
    i = 0
    while((count < 2) && (i < sequence.count-1)) do
      if sequence[i] >= sequence[i+1]
        count += 1
        if (((i - 1) >= 0) && (sequence[i - 1] >= sequence[i + 1]))
          if ((i + 2) < sequence.count) && (sequence[i] >= sequence[i + 2])
            return false
          end
        end
      end
      i += 1
    end
  end
  !(count > 1)
end


# sequence = [1, 3, 2, 1]
# p almostIncreasingSequence(sequence) == false
# sequence = [1, 3, 2]
# p almostIncreasingSequence(sequence) == true
sequence = [1, 2, 1, 3, 4, 5, 2]
p almostIncreasingSequence(sequence) == false
# sequence = [1, 2, 3, 10, 55, 66, 77]
# p almostIncreasingSequence(sequence) == true
