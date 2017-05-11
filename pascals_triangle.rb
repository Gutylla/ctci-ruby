# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  (num_rows-1).times do |i|
    p '-'
    i.upto(num_rows-1) do |j|
      p j-i
    end
  end
end

generate(5)