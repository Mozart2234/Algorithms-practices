class Stack
  class Node
    attr_reader :data
    attr_accessor :next

    def initialize(data)
      @data = data
      @next = nil
    end
  end

  def initialize
    @top = nil
  end

  def pop
    return StandardError.new("Empty Stack") if @top.nil?
    value = @top.data
    @top = @top.next
    value 
  end

  def push(data)
    node = Node.new(data)
    node.next = @top
    @top = node
    @top.data
  end

  def peek()
    return StandardError.new("Empty Stack") if @top.nil?
    @top.data
  end

  def empty?
    @top.nil?
  end
end
