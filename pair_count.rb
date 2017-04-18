require 'set'

def count_pair(array, difference)
  # hash = {}
  # array.each_with_object(hash) { |element, hash| hash[element] = 1 }
  # pair_count = 0
  # array.each do |element|
  #   pair_count += 1 if hash[element+2]
  #   pair_count += 1 if hash[element-2]
  #   hash[element] = nil
  # end
  # pair_count

  set = array.to_set
  pair_count = 0
  array.each do |element|
    pair_count += 1 if set.include?(element+2)
    pair_count += 1 if set.include?(element-2)
    set.delete(element)
  end
  pair_count
end

puts count_pair([1,7,5,9,2,12,3], 2)