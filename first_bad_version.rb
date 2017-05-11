# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  val = -1
  slab = ((n*2)**(0.5)).to_i
  p slab
  slab.downto(1) do |i|
    if is_bad_version(i)
      val = i
      break
    end
  end
  val.downto(1) do |j|
    return j if is_bad_version(j)
  end
end

p first_bad_version(100)