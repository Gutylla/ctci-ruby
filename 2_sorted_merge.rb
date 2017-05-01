def merge_sorted(a, b)
  last_index = a.size + b.size - 1

  asize = a.size-1
  bsize = b.size-1

  while bsize >= 0
    if asize >= 0 && a[asize] > b[bsize]
      a[last_index] = a[asize]
      asize -= 1
    else
      a[last_index] =  b[bsize]
      bsize -= 1
    end
    last_index -= 1
  end

  p a

end

a = [1, 3, 12, 66, 77, 88, 111]
b = [21, 32, 43, 45, 91, 98]


merge_sorted(a, b)
