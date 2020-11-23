class Queue
  class Node
    attr_accessor :next
    attr_reader :data
    def initialize(data)
      @data = data
      @next = nil
    end
  end

  def initialize
    @first = nil
    @last = nil
  end

  def add(data)
    node = Node.new(data)
    if @first.nil?
      @first = node
    else
      @last.next = node
    end
    @last = node
    nil
  end

  def remove
    return StandardError.new('Queue empty') if @first.nil?

    data = @first.data
    @first = @first.next

    if @first.nil?
      @last = nil
    end

    data
  end

  def peek
    return StandardError.new('Queue empty') if @first.nil?
    
    @first.data
  end

  def empty?
    @first.nil?
  end
end
