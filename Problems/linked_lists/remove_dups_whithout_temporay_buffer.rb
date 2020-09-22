require_relative '../../LinkedLists/singly_linked_list'

def remove_dups(linked_list)
  actual_node = linked_list.head
  while actual_node
    next_node = actual_node
    until next_node.next.nil?
      if next_node.next.data == actual_node.data
        next_node.next = next_node.next.next
      else
        next_node = next_node.next
      end
    end
    actual_node = actual_node.next
  end
  linked_list
end

linked_list = SinglyLinkedList.new
linked_list.add(1)
linked_list.add(1)
linked_list.add(2)
linked_list.add(1)
linked_list.add(2)
linked_list.add(5)
linked_list.add(1)
linked_list.add(5)

new_linked_list = remove_dups(linked_list)
new_linked_list.print