require 'awesome_print'

class Node

  attr_accessor :data, :next

  def initialize(data)
    @data = data
    self.next = nil
  end

end

class LinkedList

  attr_accessor :head

  def initialize(item)
    @head = Node.new(item)
  end

  def add(item)
    list = head
    list = list.next while list.next
    list.next = Node.new(item)
  end

  def remove(data)
    list = head

    if list.data == data
      if list.next
        @head = list.next
      else
        ap "Cannot delete the only node"
      end
      return
    end

    while list
      if list.next && list.next.data == data
        list.next = list.next.next ? list.next.next : nil
      end
      list = list.next
    end

  end

  def to_s
    list = head
    values = []
    while !list.nil?
      values << list.data
      list = list.next
    end
    values.join(' -> ')
  end

end

# ll = LinkedList.new(1)
# (2..10).to_a.map do |i|
#   ll.add(i)
# end
# ap ll.to_s
# ll.remove(3)
# ap ll.to_s
