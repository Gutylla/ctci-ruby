# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  candidates.sort!
  result = []
  combinationSum(candidates, target, 0, [], result)
  result
end

def combinationSum(candidates, target, min, list, result)
  if(target == 0)
    result.push(list)
    return
  end

  (min..(candidates.length-1)).to_a.map do |i|
    if(target - candidates[i] >= 0)
      tempSublist =  list.dup
      temp_target = target - candidates[i]
      tempSublist.push(candidates[i])
      combinationSum(candidates, temp_target, i+1, tempSublist, result)
    end
  end
end

p combination_sum([2, 3, 7], 7)

p combination_sum([10, 1, 2, 7, 6, 5], 8)
