class MergeSort
  attr_reader :list
  def initialize(list)
    @list = [list]
    @length = @list[0].length
  end

  def breakdown(arr)
    @list = []
    arr.each do |unit|
      @list << unit[0...unit.length / 2]
      @list << unit[unit.length / 2...unit.length]
    end
    return @list if @list.length == @length
    breakdown(@list)
  end

  def sort
    breakdown(@list)
    until @list.length == 1
      list = @list
      @list = []
      (0...list.length).step(2) do |n|
        @list << merge(list[n], list[(n + 1)])
      end
    end
    @list = @list[0]
  end

  def merge(left, right)
    merged = []
    until left == [] || right == []
      if left[0] < right[0]
        merged << left.shift
      else
        merged << right.shift
      end
    end
    merged  + left + right
  end
end
