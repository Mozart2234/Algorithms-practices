# This class respresents a Node for a DoublyLinkedList
class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end

  def to_s
    "Node with value: #{@data}"
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

  def add(data)
    node = Node.new(data)
    if @head
      @tail.next = node
      @tail = node
    else
      @head = node
    end
    @tail = node
    @size += 1

    node
  end

  def search(term)
    node = @head
    while node
      return node if node.data == term

      node = node.next
    end

    nil
  end

  def find_first(&predicate)
    return nil unless block_given?

    current = @head
    while current
      return current if predicate.call(current)

      current = current.next
    end
  end

  def delete(node)
    return nil unless node

    if node == @head
      @head = if node.next.nil?
                @tail = nil
              else
                head.next
              end
    else
      tmp = @head
      tmp = tmp.next while tmp && tmp.next != node
      tmp.next = node.next if tmp
    end
    @size -= 1
  end

  def each
    node = @head
    until node.nil?
      yield node
      node = node.next
    end
  end

  def print
    each do |node|
      puts node.data
    end
  end
end
