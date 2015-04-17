require "minitest/autorun"
require "minitest/spec"
require "minitest/pride"

def load_binary_tree
  @peter = BinaryTree.new("Peter", nil, nil)
  @andrea = BinaryTree.new("Andrea", nil, nil)
  @dan = BinaryTree.new("Dan", nil, nil)
  @katie = BinaryTree.new("Katie", @peter, @andrea)
  @craig = BinaryTree.new("Craig", nil, nil)
  @eddie = BinaryTree.new("Eddie", nil, nil)
  @jony = BinaryTree.new("Jony", @dan, @katie)
  @phil = BinaryTree.new("Phil", @craig, @eddie)
  @tim = BinaryTree.new("Tim", @jony, @phil)
end
