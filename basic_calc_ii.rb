# @param {String} s
# @return {Integer}
def calculate(s)
  ss = s.split('=')
  result = ss.last
  exp = ss.first
  ss = ss.first.gsub(' ', '')
  val = 0
  ss.chars.map do |c|
    
  end
end

calculate("3+2*2 = 7")
