require 'test_helper'
require 'binary_tree'

describe('Binary tree') do
  it('should have a value after being created') do
    @peter = BinaryTree.new("Peter", nil, nil)
    @peter.manager.must_equal 'Peter'
  end

  it('should print out a tree in pre-order') do
    load_binary_tree
    @tim.preorder(@tim)
    @tim.list.must_equal %w(Tim Jony Dan Katie Peter Andrea Phil Craig Eddie)
  end

  it('should print out a tree in order') do
    load_binary_tree
    @tim.in_order(@tim)
    @tim.list.must_equal %w(Dan Jony Peter Katie Andrea Tim Craig Phil Eddie)
  end

  it('should print out a tree in post-order') do
    load_binary_tree
    @tim.post_order(@tim)
    @tim.list.must_equal %w(Dan Peter Andrea Katie Jony Craig Eddie Phil Tim)
  end
end
