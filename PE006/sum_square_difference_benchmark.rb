require 'benchmark'
require_relative 'sum_square_difference'

n = 10_000
Benchmark.bm do |benchmark|
  benchmark.report('brute_force') do
    n.times do
      SumSquareDifference.brute_force(100)
    end
  end
  benchmark.report('arithmetic') do
    n.times do
      SumSquareDifference.arithmetic(100)
    end
  end
end
