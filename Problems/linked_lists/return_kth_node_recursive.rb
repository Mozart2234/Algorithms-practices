require_relative '../../LinkedLists/singly_linked_list'

class Index
  attr_accessor :value

  def initialize
    @value = 0
  end
end

def kth_last(head, k)
  idx = Index.new
  kth_to_last(head, k, idx)
end

def kth_to_last(head, k, idx)
  return nil if head.nil?

  node = kth_to_last(head.next, k, idx)
  idx.value += 1
  return head if idx.value == k

  node
end

linked_list = SinglyLinkedList.new
linked_list.add('A')
linked_list.add('B')
linked_list.add('C')
linked_list.add('D')
linked_list.add('E')
linked_list.add('F')
linked_list.add('G')
linked_list.add('H')

num = 5
node = kth_last(linked_list.head, num)
puts "#{num}th to last node is #{node.data}"
