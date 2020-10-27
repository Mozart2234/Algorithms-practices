require_relative '../../LinkedLists/singly_linked_list'

def palindrome(head)
  new_list = reverse(head)
  palindrome?(head, new_list)
end

def reverse(node)
  head = nil
  while node
    n = Node.new(node.data)
    n.next = head
    head = n
    node = node.next
  end

  head
end

def palindrome?(node1, node2)
  while node1 && node2
    if node1.data.downcase != node2.data.downcase
      return false
    end

    node1 = node1.next
    node2 = node2.next
  end

  node1.nil? && node2.nil?
end

singly_list = SinglyLinkedList.new
singly_list.add('K')
singly_list.add('A')
singly_list.add('Y')
singly_list.add('a')
singly_list.add('k')

puts palindrome(singly_list.head)


