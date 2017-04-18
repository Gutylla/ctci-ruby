def addBorder(picture)
  border = top_bottom_border(picture[0].size+2)
  picture.each_with_index do |word, i|
    picture[i] = word_border(word)
  end
  picture.insert(0, border)
  picture.insert(-1, border)
end

def top_bottom_border(size)
  "*"*size
end

def word_border(word)
  "*#{word}*"
end


picture = ["abc",
           "ded"]

p addBorder(picture) == ["*****",
                         "*abc*",
                         "*ded*",
                         "*****"]
