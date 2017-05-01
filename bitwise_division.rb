# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  return ((2**31)-1) if (!divisor || (dividend == (-2**31) && divisor == -1))
  sign = ((dividend < 0) ^ (divisor < 0)) ? -1 : 1
  dvd = dividend.abs
  dvs = divisor.abs
  res = 0
  while (dvd >= dvs)
    temp = dvs
    multiple = 1
    while (dvd >= (temp << 1))
      temp <<= 1
      multiple <<= 1
    end
    dvd -= temp
    res += multiple
  end
  sign == 1 ? res : -res
end

p divide(9, 3)
