def commonCharacterCount(s1, s2)
  s2.split(//).inject(0) do |sum, char|
    sum += 1 if s1.sub!(char,'')
    sum
  end
end


s1 = "aabcc"
s2 = "adcaa"
p commonCharacterCount(s1, s2) == 3
