require 'benchmark'
require_relative 'sum_of_multiples'

limit = 1000
n=500

puts "Brute Force result: #{SumOfMultiples.brute_force(limit)}" 

puts "----"

Benchmark.bm do |benchmark|
  benchmark.report('brute_force') do
    n.times do
      SumOfMultiples.brute_force(limit)
    end
  end
end
