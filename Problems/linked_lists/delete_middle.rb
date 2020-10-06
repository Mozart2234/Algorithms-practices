require_relative '../../LinkedLists/singly_linked_list'

def delete_middle(node)
  return false if node.next.nil?

  node.data = node.next.data
  node.next = node.next&.next

  true
end

linked_list = SinglyLinkedList.new
first = linked_list.add('A')
linked_list.add('B')
linked_list.add('C')
node_d = linked_list.add('D')
linked_list.add('E')
linked_list.add('F')
linked_list.add('G')
last = linked_list.add('H')

delete_middle(first)
linked_list.print
puts '--------'
delete_middle(node_d)
linked_list.print
puts '--------'
delete_middle(last)
linked_list.print






