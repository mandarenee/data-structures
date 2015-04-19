require 'test_helper'
require 'merge_sort'

describe('Merge Sort') do
  it('should sort') do
    list = MergeSort.new([3, 8, 5, 2, 4, 7, 1, 6])
    list.sort

    list.list.must_equal [1, 2, 3, 4, 5, 6, 7, 8]
  end
end
