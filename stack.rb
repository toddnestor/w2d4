class MyStack
  def initialize
    @store = []
    @max = []
    @min = []
  end

  def pop
    popped_item = @store.pop
    @max.pop if popped_item == max
    @min.pop if popped_item == min
    popped_item
  end

  def push(item)
    @store.push(item)
    @max.push(item) if max.nil? || item >= max
    @min.push(item) if min.nil? || item <= min
    @store
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def max
    @max.last
  end

  def min
    @min.last
  end
end
