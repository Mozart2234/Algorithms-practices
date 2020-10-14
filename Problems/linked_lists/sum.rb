require_relative '../../LinkedLists/singly_linked_list'

def addLists(node1, node2)
  next1 = node1&.next
  next2 = node2&.next
  if next1.nil? && next2.nil?
    value1 = node1&.data || 0
    value2 = node2&.data || 0
    total = value1 + value2
    node = Node.new
    if total >= 10
      res_node = Node.new
      res_node.data = 1
      node.data = total - 10
      node.next = res_node
    else
      node.data = total
    end
    return node
  end

  response_node = addLists(next1, next2)
  node = Node.new

  value1 = node1&.data || 0
  value2 = node2&.data || 0
  total = value1 + value2
  if total >= 10
    response_node.data += 1
    node.data = total - 10
    node.next = response_node
  else
    node.next = response_node
    node.data = total
  end

  node
end

linked_list1 = SinglyLinkedList.new
linked_list1.add(7)
linked_list1.add(1)
linked_list1.add(6)

linked_list2 = SinglyLinkedList.new
linked_list2.add(5)
linked_list2.add(9)
linked_list2.add(8)

new_head = addLists(linked_list1.head, linked_list2.head)

while new_head
  print "#{new_head.data}"
  print ' -> ' unless new_head.next.nil?
  new_head = new_head.next
end


