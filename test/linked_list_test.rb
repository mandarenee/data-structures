require 'test_helper'
require 'linked_list'

describe('Linked List') do
  it('should have a value after being created') do
    list = LinkedList.new(Node.new(22, nil))

    list.to_s.must_equal '22'
  end

  it('should have multiple nodes') do
    list = LinkedList.new(Node.new(22, nil))
    list.insert(3)

    list.to_s.must_equal '3, 22'
  end

  it('should return a node when searching for a value') do
    list = LinkedList.new(Node.new(22, Node.new(20, Node.new(18, nil))))

    list.search(18).val.must_equal 18
  end

  it("should return nil if the number doesn't exist in the linked list") do
    list = LinkedList.new(Node.new(22, Node.new(20, Node.new(18, nil))))

    list.search(4).must_be_nil
  end

  it("will remove a node") do
    list = LinkedList.new(Node.new(22, Node.new(20, Node.new(18, nil))))
    list.remove(20).val.must_equal 20
    list.to_s.must_equal '22, 18'
  end

  it("will properly remove a head node") do
    list = LinkedList.new(Node.new(22, Node.new(20, Node.new(18, nil))))
    list.remove(22).must_equal 22
    list.to_s.must_equal '20, 18'
  end

  it("will return nil if remove value doesn't exist") do
    list = LinkedList.new(Node.new(22, Node.new(20, Node.new(18, nil))))
    list.remove(4).must_be_nil
    list.to_s.must_equal '22, 20, 18'
  end
end
