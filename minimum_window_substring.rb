# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  return '' if s.size < t.size
  return '' if t.size.zero?

  s = s.chars
  t = t.chars
  m = t.each_with_object({}) { |c, memo| memo[c] ||= 0; memo[c] += 1 }

  lbound = 0
  minstr = []

  require_num = t.size
  minlen = s.size + 1

  s.each_with_index do |c, ubound|
    next unless m.key?(c)

    m[c] -= 1
    require_num -= 1 if m[c] >= 0

    if require_num.zero?

      while true
        cc = s[lbound]
        if m.key?(cc)
          m[cc] += 1
          require_num += 1 if m[cc] > 0
          break if require_num.nonzero?
        end
        lbound += 1
      end

      strlen = ubound - lbound + 1
      if minlen > strlen
        minlen = strlen
        minstr = s.slice(lbound, strlen)
        p minstr
      end
      lbound += 1
    end
  end
  minstr.join
end

p min_window("ADOBECODEBANCLABC", 'ABC')
p min_window("PAQRBCXA", 'ABC')
