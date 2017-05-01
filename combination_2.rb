# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
    results = []
    candidates.sort!
    combine(candidates, 0, target, [], results)
    results
end

def combine(candidates, min, target, list, result)
  if(target == 0)
    result.push(list)
    return
  end

  (min..(candidates.length-1)).to_a.map do |i|
    if(target - candidates[i] >= 0)
      next if i > min && candidates[i] == candidates[i-1]
      t = list.dup
      t.push(candidates[i])
      combine(candidates, i+1, target - candidates[i], t, result)
    end
  end
end

 if(target - candidates[i] >= 0)
            next if (i > start && candidates[i] == candidates[i-1])
            t = list.dup
            t.push(candidates[i]) 
            combine(candidates, i+1, target - candidates[i], t, results)
        end