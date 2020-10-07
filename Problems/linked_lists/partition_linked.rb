require_relative '../../LinkedLists/singly_linked_list'

def partition(node, x)
  head = node
  tail = node
  while node
    next_node = node.next
    if node.data < x
      node.next = head
      head = node
    else
      tail.next = node
      tail = node
    end
    node = next_node
  end

  head
end

linked_list = SinglyLinkedList.new
linked_list.add(3)
linked_list.add(5)
linked_list.add(10)
linked_list.add(2)
linked_list.add(3)
linked_list.add(4)
linked_list.add(7)
linked_list.add(9)

head = partition(linked_list.head, 7)
while head
  puts head
  head = head.next
end


