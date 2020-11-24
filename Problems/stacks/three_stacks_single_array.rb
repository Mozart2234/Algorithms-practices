# This is a class for handle three stack in one single array
class MultiStack
  def initialize(size)
    @number_stack = 3
    @stack_capacity = size
    @values = Array.new(size * @number_stack, 0)
    @sizes = Array.new(size, 0)
  end

  def push(stack, value)
    return StandardError.new('Stackoverflow') if full?(stack)

    @sizes[stack] += 1
    @values[last_index(stack)] = value
    value
  end

  def pop(stack)
    return StandardError.new('Empty stack') if empty?(stack)

    index = last_index(stack)
    value = @values[index]
    @values[index] = 0
    @sizes[stack] -= 1
    value
  end

  def peek(stack)
    return StandardError.new('Empty stack') if empty?(stack)

    @arr[last_index(stack)]
  end

  def empty?(stack)
    @sizes[stack].zero?
  end

  def full?(stack)
    @sizes[stack] == @stack_capacity
  end

  private

  def last_index(stack)
    start = stack * @stack_capacity
    size = @sizes[stack]
    start + size - 1
  end
end
