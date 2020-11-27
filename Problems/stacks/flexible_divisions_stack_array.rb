module Multiple
  def adjust_index(index, max)
    ((index % max) + max) % max
  end
end

# This is a class for handle multistack in on single array but with flexible
# divisions
#
class MultiStack
  include Multiple
  attr_reader :values
  # StackInfo is a class for saving info about stack
  class StackInfo
    include Multiple
    attr_accessor :start, :size, :capacity

    def initialize(start, capacity)
      @start = start
      @capacity = capacity
      @size = 0
    end

    def whitin_stack_capacity?(index, max)
      return false if index.negative? || index >= max

      contiguos_index = index < @start ? index + max : index
      final = start + @capacity
      @start <= contiguos_index && contiguos_index < final
    end

    def last_capacity(max)
      adjust_index(@start + @capacity - 1, max)
    end

    def last_element(max)
      adjust_index(@start + @size - 1, max)
    end

    def full?
      @size == @capacity
    end

    def empty?
      @size.zero?
    end
  end

  private_constant :StackInfo

  def initialize(number_of_stacks, default_size)
    @info = Array.new(number_of_stacks)
    (0...number_of_stacks).each do |i|
      @info[i] = StackInfo.new(i * number_of_stacks, default_size)
    end
    @values = Array.new(number_of_stacks * default_size, 0)
  end

  def push(stack_num, value)
    return StandardError.new('Full Stack') if all_stack_are_full?

    stack = @info[stack_num]
    expand(stack_num) if stack.full?

    stack.size += 1
    @values[stack.last_element(@values.length)] = value
  end

  def pop(stack_num)
    stack = @info[stack_num]

    return StandardError.new('Empty Stack') if stack.empty?

    value = @values[stack.last_element(@values.length)]
    @values[stack.last_element] = 0
    stack.size -= 1
    value
  end

  def peek(stack_num)
    stack = @info[stack_num]
    return StandardError.new('Empty Stack') if stack.empty?

    @values[stack.last_element]
  end

  def all_stack_are_full?
    number_of_elements == values.length
  end

  def number_of_elements
    total = 0
    @info.each do |i|
      total += i.size
    end
    total
  end

  private

  def expand(stack_number)
    shift((stack_number + 1) % @info.length) # I love this part
    @info[stack_number].capacity += 1
  end

  def shift(stack_num)
    puts "Shifting -> #{stack_num}"

    stack = @info[stack_num]

    if stack.size >= stack.capacity
      next_stack = (stack_number + 1) % @info.length
      shift(next_stack)
      stack.capacity += 1
    end

    index = stack.last_capacity(@values.length)
    while stack.whitin_stack_capacity?(index, @values.length)
      values[index] = @values[previous_index(index)]
      index = previous_index(index)
    end

    @values[stack.start] = 0
    stack.start = next_index(stack.start)
    stack.capacity -= 1
  end

  def next_index(index)
    adjust_index(index + 1, @values.length)
  end

  def previous_index(index)
    adjust_index(index - 1, @values.length)
  end

end
