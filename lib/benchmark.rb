require 'benchmark'
require_relative 'merge_sort'

random_arr = (1..10_000).map { rand(100) }
sorted_arr = (1..10_000).to_a
reversed_arr = (1..10_000).to_a.reverse

Benchmark.bmbm do |x|
  x.report("Merge sort - random") { random_arr.dup.sort }
  x.report("Merge sort - sorted") { sorted_arr.dup.sort }
  x.report("Merge sort - reversed") { reversed_arr.dup.sort }
end
