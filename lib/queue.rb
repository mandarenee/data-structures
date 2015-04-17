Node = Struct.new(:val, :nxt)

class Queue
  attr_accessor :head, :tail, :size

  def enqueue(val)
    node = Node.new(val, nil)
    @head, @tail, @size = node, node, 0 if @head.nil?
    @size += 1
    @tail.nxt = node
    @tail = node
  end

  def dequeue
    fail "No queue object" if @head.nil?
    @size -= 1
    temp = @head.val
    @head = @head.nxt
    temp
  end
end
