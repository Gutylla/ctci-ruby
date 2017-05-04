# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Interval[]}
def merge(intervals)
    return intervals if intervals.length == 1
    arr = []
    i = 0
    while i < intervals.length
        if i < intervals.length-1 && intervals[i].end >= intervals[i+1].start
            arr << Interval.new([intervals[i].start, intervals[i+1].start].min, [intervals[i].start, intervals[i+1].end].max)
            i += 2
        else
            arr << intervals[i]
            i += 1
        end
    end
    arr
end
Interval = Struct.new(:start, :end)
p merge [Interval.new(1,4),Interval.new(1,5)]