require_relative 'stackqueue'

def max_window(array, size) #o(n^2)?
  max_range = nil

  i = 0
  while array.length - i >= size
    sub_array = array[i, size]
    range = sub_array.max - sub_array.min

    max_range = range if max_range.nil? || range > max_range
    i += 1
  end

  max_range
end

def optimized_max(array, size) #O(n)
  max_range = nil

  queue = StackQueue.new

  array.each do |el|
    queue.enqueue(el)

    if queue.size == size
      range_sum = queue.max - queue.min
      max_range = range_sum if max_range.nil? || range_sum > max_range
      queue.dequeue
    end
  end

  max_range
end
