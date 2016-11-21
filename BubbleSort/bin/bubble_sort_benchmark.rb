require 'benchmark'
require_relative '../lib/bubbleSort'
#require 'bubbleSort'
#bubble=BubbleSort::bubbleSort.new([12])
#include Benchmark
arr = []
arr.push(6)
arr.push(2)
arr.push(5)
arr.push(3)
arr.push(324)
puts arr
Benchmark.bm do |x|
  puts'#bubbleSort'
  x.report('sort array') do
    BubbleSort::bubbleSort.new(arr)
  end





end