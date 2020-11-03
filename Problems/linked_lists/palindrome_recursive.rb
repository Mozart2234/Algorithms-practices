require_relative '../../LinkedLists/singly_linked_list'

class Result
  attr_accessor :node, :result

  def initialize(node, result)
    @node = node
    @result = result
  end

  def to_s
    "node #{@node.data} : status: #{@result}"
  end
end

def is_palindrome(head)
  length = length_of_list(head)
  p = is_palindrome_recursive(head, length)
  p.result
end

def is_palindrome_recursive(head, length)
  return Result.new(head, true) if head.nil? || length <= 0
  return Result.new(head.next, true) if length == 1

  res = is_palindrome_recursive(head.next, length - 2)

  return res if !res.result || res.node.nil?

  res.result = head.data.downcase == res.node.data.downcase

  res.node = res.node.next

  res
end

def length_of_list(head)
  size = 0
  while head
    size += 1
    head = head.next
  end
  size
end
singly_list = SinglyLinkedList.new
singly_list.add('K')
singly_list.add('A')
singly_list.add('Y')
singly_list.add('a')
singly_list.add('k')

puts is_palindrome(singly_list.head)
