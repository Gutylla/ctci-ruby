def merge_sort(unsorted_array)
  return unsorted_array if unsorted_array.size < 2

  left = unsorted_array[0..((unsorted_array.size/2)-1)]
  right = unsorted_array[((unsorted_array.size/2))..(unsorted_array.size-1)]

  left = merge_sort(left)
  right = merge_sort(right)

  unsorted_array = merge(left, right, unsorted_array)
end

def merge(left, right, array)
  l_index = 0
  r_index = 0
  k = 0

  while( l_index < left.size && r_index < right.size )
    if(left[l_index] <  right[r_index])
      array[k] = left[l_index]
      l_index += 1
    else
      array[k] = right[r_index]
      r_index += 1
    end
    k += 1
  end

  while(l_index <  left.size)
    array[k] = left[l_index]
    l_index += 1
    k += 1
  end

  while(r_index <  right.size)
    array[k] = right[r_index]
    r_index += 1
    k += 1
  end

  array

end

unsorted_array = [ 12, 3, 1, 66, 77, 32, 98, 21, 43, 45, 91 ]
p merge_sort(unsorted_array)
