require_relative 'stack'

class StackQueue
  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def enqueue(item)
    @in_stack.push(item)
  end

  def dequeue
    queueify
    @out_stack.pop
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty?
  end

  def min
    return @out_stack.min if @in_stack.min.nil?
    return @in_stack.min if @out_stack.min.nil?

    if @in_stack.min < @out_stack.min
      @in_stack.min
    else
      @out_stack.min
    end
  end

  def max
    return @out_stack.max if @in_stack.max.nil?
    return @in_stack.max if @out_stack.max.nil?

    if @in_stack.max > @out_stack.max
      @in_stack.max
    else
      @out_stack.max
    end
  end

  def queueify
    if @out_stack.empty?
      @out_stack.push(@in_stack.pop) until @in_stack.empty?
    end
  end

end
