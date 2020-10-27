require_relative '../../LinkedLists/singly_linked_list'

def palindrome(head)
  slow = head
  fast = head
  stack = []
  while fast && !fast.next.nil?
    stack << slow.data
    slow = slow.next
    fast = fast.next.next
  end

  slow = slow.next unless fast.nil?

  while slow
    data = stack.pop
    return false if slow.data.downcase != data.downcase

    slow = slow.next
  end

  true
end

singly_list = SinglyLinkedList.new
singly_list.add('K')
singly_list.add('A')
singly_list.add('Y')
singly_list.add('a')
singly_list.add('k')

puts palindrome(singly_list.head)


