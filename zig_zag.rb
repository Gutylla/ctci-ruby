# class ZigZag {
#   public:
#     int longestZigZag(vector < int > sequence) {
#       if (sequence.size() == 1) return 1;
#       vector < int > v(sequence.size() - 1);
#       for (int i = 1; i < sequence.size(); i++) {
#         v[i - 1] = sequence[i] - sequence[i - 1];
#       }
#       //    dir is first nonzero
#       int ii = 0;
#       while (ii < v.size() && v[ii] == 0)
#         ii++;
#       if (ii == v.size()) return 1;
#       int dir = v[ii];
#       int len = 2;
#       for (int i = ii + 1; i < v.size(); i++) {
#         if (v[i] * dir < 0) {
#           dir *= -1;
#           len++;
#         }
#       }
#       return len;
#     }
# };
require 'awesome_print'

def longest_zig_zag(sequence)

  # return 1 if only 1 element
  return 1 if sequence.count == 1

  v = []
  sequence.each_with_index do |element, index|
    next if index+1 >= sequence.count
    v[index] = sequence[index+1] - element
  end

  ii = 0
  while((ii < v.count) && (v[ii] == 0)) do
    ii += 1
  end

  return 1 if ii == v.size

  dir = v[ii]
  len = 2
  ap dir
  v.each.with_index(ii+1) do |e, i|
    next if i >= v.count
    puts "#{sequence[i]} \t#{v[i]} \t* \t#{dir} \t: #{v[i] * dir}"
    if (v[i] * dir) < 0
      dir *= -1
      len += 1
  	else
  	  len = 2
    end
  end

  len
end

puts longest_zig_zag([ 20, 1, 4, 10, 18, 21, 19, 12, 7, 13, 6, 14, 5 ]) == 6

# puts longest_zig_zag([ 1, 17, 5, 10, 13, 15, 10, 5, 16, 8 ]) == 7
# puts longest_zig_zag([ 10, 20 ]) == 2
# puts longest_zig_zag([ 20, 10 ]) == 2
# puts longest_zig_zag([ 20, 20 ]) == 1
# puts longest_zig_zag([ 44 ]) == 1
# puts longest_zig_zag([ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]) == 2
# puts longest_zig_zag([ 10, 9, 8, 7, 6, 7, 8, 9, 10 ]) == 3
# puts longest_zig_zag([ -12, 333, 700, 436, 1, 919, 959, 456, 456, 456, 1000, 193, 192, 13, 75, 818, 197, 197, 2, 777, 99, 81, 222, 109, 1000, 19, 27, 270, 62, 189, 987, 234, 55, 2, 718, 238, 901, 901, 900, 432, 55, 606, 89, 7, 7, 23, 789, 790, 800, 1000 ]) == 26
# puts longest_zig_zag([ 70, 55, 13, 2, 99, 2, 80, 80, 80, 80, 100, 19, 7, 5, 5, 5, 1000, 32, 32 ]) == 8
# puts longest_zig_zag([ 3, 3, 3, 3, 3 ]) == 1
# puts longest_zig_zag([ 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2 ]) == 3
# puts longest_zig_zag([ 1, 2, 2, 1, 1, 2, 3, 3, 2, 1, 1, 2, 3, 4, 4, 3, 2, 1, 1, 2, 3, 4, 5, 5, 4, 3, 2, 1 ]) == 9
# puts longest_zig_zag([ 396, 549, 22, 819, 611, 972, 730, 638, 978, 342, 566, 514, 752, 871, 911, 172, 488, 542, 482, 974, 210, 474, 66, 387, 1, 872, 799, 262, 567, 113, 578, 308, 813, 515, 716, 905, 434, 101, 632, 450, 74, 254, 1000, 780, 633, 496, 513, 772, 925, 746 ]) == 37
# puts longest_zig_zag([ 374, 40, 854, 203, 203, 156, 362, 279, 812, 955, 600, 947, 978, 46, 100, 953, 670, 862, 568, 188, 67, 669, 810, 704, 52, 861, 49, 640, 370, 908, 477, 245, 413, 109, 659, 401, 483, 308, 609, 120, 249, 22, 176, 279, 23, 22, 617, 462, 459, 244 ]) == 36
# puts longest_zig_zag([ 89, 106, 125, 142, 141, 137, 158, 184, 191, 189, 189, 206, 228, 240, 228, 263, 259, 256, 266, 287, 302, 297, 330, 341, 353, 353, 364, 376, 365, 398, 386, 420, 413, 419, 451, 441, 463, 484, 480, 487, 494, 520, 534, 542, 534, 541, 571, 584, 565, 577 ]) == 26
# puts longest_zig_zag([ 61, 82, 126, 97, 167, 186, 119, 154, 155, 142, 153, 181, 172, 192, 223, 272, 273, 260, 280, 330, 329, 350, 273, 324, 349, 306, 385, 375, 420, 416, 435, 457, 373, 477, 395, 487, 500, 439, 493, 537, 518, 549, 542, 500, 524, 541, 512, 589, 549, 543 ]) == 35
# puts longest_zig_zag([ 8, 6, 4, 2, 3, 5, 7, 9 ]) == 3
# puts longest_zig_zag([ 4, 1, 6, 7, 7, 8, 9, 8, 6, 8 ]) == 5
# puts longest_zig_zag([ 4, 6, 4, 4, 1, 2, 6, 7, 1, 3 ]) == 6
# puts longest_zig_zag([ 9, 1, 8, 2, 7, 3, 6, 4, 5, 5, 4, 6, 3, 7, 2, 8, 1, 9 ]) == 17
# puts longest_zig_zag([ 1, 1 ]) == 1
