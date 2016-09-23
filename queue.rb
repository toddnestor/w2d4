class MyQueue
  def initialize
    @store = []
  end

  def enqueue(item)
    @store << item
  end

  def dequeue(item)
    @store.shift
  end

  def peek
    @store.first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end
