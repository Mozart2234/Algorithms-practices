require_relative '../../LinkedLists/singly_linked_list'
require 'set'

linked_list = SinglyLinkedList.new
linked_list.add(1)
linked_list.add(1)
linked_list.add(2)
linked_list.add(1)
linked_list.add(2)
linked_list.add(5)
linked_list.add(1)
linked_list.add(5)

def remove_dup(linked_list)
  items = Set.new

  linked_list.each do |item|
    if items.include?(item.data)
      linked_list.delete(item)
    else
      items << item.data
    end
  end
  linked_list
end

new_linked_list = remove_dup(linked_list)
new_linked_list.print
