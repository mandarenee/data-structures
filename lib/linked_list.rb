LinkNode = Struct.new(:val, :nxt)

class LinkedList
  attr_accessor :head

  def initialize(node = LinkNode.new)
    @head = node
    @list = ""
  end

  def insert(val)
    @head = LinkNode.new(val, @head)
  end

  def search(value)
    current_node = @head
    until current_node.nil? || current_node.val == value
      current_node = current_node.nxt
    end
    current_node
  end

  def remove(value)
    current_node = @head

    if current_node.val == value
      @head = current_node.nxt
      return current_node.val
    end

    until current_node.nxt.nil? || current_node.nxt.val == value
      current_node = current_node.nxt
      return nil if current_node.nxt.nil?
    end

    removed = current_node.nxt
    current_node.nxt = current_node.nxt.nxt
    removed
  end

  def to_s
    print_out(@head)
    puts @list
    @list
  end

  def print_out(node)
    @list << node.val.to_s
    return if node.nxt.nil?
    @list << ', '
    print_out(node.nxt)
  end
end
