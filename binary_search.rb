def binary_search(array, key)
  low = 0
  high = array.length - 1
  while low <= high
    mid = (low + high)/2
    return mid if array[mid] == key
    if array[mid] < key
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return -1
end

def quicksort(arr, start=0, stop=arr.length-1)
  return arr if start >= stop
  p arr
  i = partition(arr, start, stop)
  
  quicksort(arr, start, i-1)
  quicksort(arr, i+1, stop)

  arr
end

def partition(arr, start, stop)

  i = start
  j = start
  pivot = arr[stop]

  while i < stop

    if arr[i] < pivot
      arr[j], arr[i] = arr[i], arr[j]
      j += 1
    end

    i += 1
  end

  arr[stop], arr[j] = arr[j], arr[stop]

  j
end


arr = [1, 12, 23, 34, 45, 56, 67, 78].reverse
p binary_search(arr, 78)
p quicksort((1..10).to_a.reverse.shuffle)
