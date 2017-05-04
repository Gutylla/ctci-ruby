# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  arr = Array.new(word1.length+1) { Array.new(word2.length+2) }

  arr.first.length.times { |i| arr[0][i] = i }
  arr.length.times { |j| arr[j][0] = j }

  (1..word1.length).to_a.map do |i|
    (1..word2.length).to_a.map do |j|
      if word1[i-1] == word2[j-1]
        arr[i][j] = arr[i-1][j-1]
      else
        arr[i][j] = [arr[i-1][j], arr[i][j-1], arr[i-1][j-1]].compact.min + 1
      end
    end
  end

  arr[word1.length-1][word2.length-1]
end


p min_distance("plasma", "altruism")
