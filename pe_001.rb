require 'benchmark'
require_relative 'pe_001_brute_force'

limit = 1000
n=5000
Benchmark.bm do |benchmark|
  benchmark.report('brute_force') do
    n.times do
      PE001BruteForce.sum_of_multiples(limit)
    end
  end
end
