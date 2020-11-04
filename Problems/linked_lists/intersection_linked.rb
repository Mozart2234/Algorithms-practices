require_relative '../../LinkedLists/singly_linked_list'
require 'byebug'

def intersection(node1, node2)
  result_node1 = get_size_and_tail(node1)
  result_node2 = get_size_and_tail(node2)
  return nil if result_node1.tail != result_node2.tail

  longer = result_node1.size > result_node2.size ? node1 : node2
  short = result_node1.size < result_node2.size ? node1 : node2

  longer = cut_longer_node(longer, (result_node1.size - result_node2.size).abs)

  while longer != short
    longer = longer.next
    short = short.next
  end
  longer
end

class Result
  attr_reader :size, :tail

  def initialize(size, tail)
    @size = size
    @tail = tail
  end
end

def get_size_and_tail(node)
  size = 0
  while node
    size += 1
    node = node.next
  end
  Result.new(size, node)
end

def cut_longer_node(node, size)
  size.times { node = node.next }
  node
end

tail_node1 = Node.new(2)
tail_node2 = Node.new(1)
intersection = Node.new(7)
intersection.next = tail_node1
tail_node1.next = tail_node2
head1 = Node.new(3)
head2 = Node.new(4)

next_node = Node.new(1)
head1.next = next_node
next_node2 = Node.new(5)
next_node.next = next_node2
next_node3 = Node.new(9)
next_node2.next = next_node3
next_node3.next = intersection

second_node1 = Node.new(6)
head2.next = second_node1
second_node1.next = intersection

node_response = intersection(head1, head2)
puts "The intersection node is #{node_response}"

puts "\n\n"

while head1
  print "#{head1} ->"
  head1 = head1.next
end
puts "\n"
while head2
  print "#{head2} -> "
  head2 = head2.next
end

