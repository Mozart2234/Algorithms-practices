require_relative '../../LinkedLists/singly_linked_list'

class IsPalindrome
  attr_reader :status
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def calculate?(tail)
    return true if tail.nil?

    status = calculate?(tail.next)
    return status unless status

    status = @head.data.downcase == tail.data.downcase
    puts "#{head.data} = #{tail.data}"
    @head = @head.next

    status
  end
end


linked_list = SinglyLinkedList.new
linked_list.add('k')
linked_list.add('A')
linked_list.add('y')
linked_list.add('A')
linked_list.add('K')

response = IsPalindrome.new(linked_list.head).calculate?(linked_list.head)

puts response




