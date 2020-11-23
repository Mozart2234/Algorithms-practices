require_relative '../../LinkedLists/singly_linked_list'

def find_begginng_of_loop(head)
  slow = head
  fast = head

  while slow && fast.next
    slow = slow.next
    fast = fast.next.next
    break if slow == fast
  end

  if fast.nil? || fast.next.nil?
    return nil
  end

  slow = head
  while slow != fast
    slow = slow.next
    fast = fast.next
  end

  return fast
end

head = Node.new(1)
loop_node = Node.new(4)

next_node = Node.new(2)
head.next = next_node
next_node2 = Node.new(3)
next_node.next = next_node2
next_node2.next = loop_node
next_node3 = Node.new(5)
loop_node.next = next_node3
next_node4 = Node.new(6)
next_node3.next = next_node4
next_node5 = Node.new(7)
next_node4.next = next_node5
next_node6 = Node.new(8)
next_node5.next = next_node6
next_node7 = Node.new(9)
next_node6.next = next_node7
next_node8 = Node.new(10)
next_node7.next = next_node8
next_node9 = Node.new(11)
next_node8.next = next_node9
next_node9.next = loop_node

node_response = find_begginng_of_loop(head)
if node_response
  puts "The loop_node node is #{node_response.data}"
else
  puts "This is a un-loop linked list"
end


