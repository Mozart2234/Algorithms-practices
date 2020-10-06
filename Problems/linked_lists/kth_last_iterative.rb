require_relative '../../LinkedLists/singly_linked_list'

def kth_last(head, pos)
  pointer1 = head
  pointer2 = head

  (0...pos).each do |idx|
    return nil if pointer1.nil?
    pointer1 = pointer1.next
  end
  
  until pointer1.nil?
    pointer1 = pointer1.next
    pointer2 = pointer2.next
  end

  pointer2

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

position = 1
node = kth_last(linked_list.head, position)
puts "The #{position}th is #{node.data}"

