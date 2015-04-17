require 'test_helper'
require 'queue'

describe('Queue') do
  it('enqueue(value): adds value to the queue') do
    queue = Queue.new
    queue.enqueue(22)
    queue.enqueue(39)
    queue.size.must_equal 2
  end

  it('dequeue(): removes the correct item from the queue and returns its value') do
    queue = Queue.new
    queue.enqueue(22)
    queue.enqueue(39)
    queue.dequeue
    queue.size.must_equal 1
  end

  it('size(): return the size of the queue. Should return 0 if the queue is empty.') do
    queue = Queue.new
    queue.enqueue(22)
    queue.enqueue(39)
    queue.enqueue(15)
    queue.enqueue(12)
    queue.dequeue
    queue.size.must_equal 3
  end
end
