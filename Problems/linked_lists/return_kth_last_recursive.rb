require_relative '../../LinkedLists/singly_linked_list'

linked_list = SinglyLinkedList.new
linked_list.add('A')
linked_list.add('B')
linked_list.add('C')
linked_list.add('D')
linked_list.add('E')
linked_list.add('F')
linked_list.add('G')
linked_list.add('H')

def print_kth_to_last(head, k)
  return 0 if head.nil?

  index = print_kth_to_last(head.next, k) + 1
  if index == k
    puts "#{k}th to last node is #{head.data}"
  end

  index
end

print_kth_to_last(linked_list.head, 2)
print_kth_to_last(linked_list.head, 4)