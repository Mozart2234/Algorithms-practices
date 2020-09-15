require_relative './singly_linked_list'

linked_list = SinglyLinkedList.new

linked_list.add('Holi')
linked_list.add('Hola')

linked_list.print

puts '-----------------------'

e = linked_list.find_first { |item| item.data == 'Holi' }
puts e
puts e.object_id

linked_list.each { |item| puts item }