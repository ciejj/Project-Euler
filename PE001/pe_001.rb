require 'benchmark'
require_relative 'sum_of_multiples'

limit = 1000
n=5000

puts "Brute Force result: #{SumOfMultiples.brute_force(limit)}"
puts "geometric result: #{SumOfMultiples.geometric(limit)}"
puts '----'

Benchmark.bm do |benchmark|
  benchmark.report('brute_force') do
    n.times do
      SumOfMultiples.brute_force(limit)
    end
  end
  benchmark.report('geometric') do
    n.times do
      SumOfMultiples.geometric(limit)
    end
  end
end
