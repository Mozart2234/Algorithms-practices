# This class respresents a Node for a DoublyLinkedList
class Node
  attr_accessor :prev, :next
  attr_reader :data

  def initialize(data)
    @data = data
    @prev = nil
    @next = nil
  end

  def to_s
    data
  end
end

# This class respresents a DoublyLinkedList
class SinglyLinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(node)
    if @head
      node.prev = @tail
      @tail.next = node
    else
      @head = node
    end
    @tail = node
    @size += 1
  end

  def search(term)
    node = @head
    while !node.nil?
      return node if node.to_s == term

      node = node.next
    end

    nil
  end

  def delete(term)
    node = search(term)
    return false if node.nil?

    if @size == 1
      @head = nil
      @tail = nil
    elsif node.to_s == @head.to_s
      @head = node.next
      @head.prev = nil
    else
      node.prev&.next = node.next
      node.next&.prev = node.prev
    end
    @size -= 1
    true
  end

  def list
    node = @head
    while !node.nil?
      puts node
      node = node.next
    end
  end
end

linked_list = DoublyLinkedList.new
node = Node.new('Hola')
node1 = Node.new('Holi')

linked_list.add(node)
linked_list.add(node1)

linked_list.list
puts "----------------"
puts "Total elements"
puts linked_list.size

puts "\n-----------------"
puts "Searching Elements..."
node_found = linked_list.search('Holi')
if node_found.nil?
  puts 'Node not found'
else
  puts node_found
end

puts "\n----------------"
node2 = Node.new('Holi2')
linked_list.add(node2)
linked_list.list
puts "Removing element"
linked_list.delete('Holi')
linked_list.list
linked_list.delete('Holi2')
linked_list.list
linked_list.delete('Hola')
linked_list.list
