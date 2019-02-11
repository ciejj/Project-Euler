require 'benchmark'
require_relative 'prime_factors'

limit = 13195
n=5000

puts "Brute Force result: #{PrimeFactors.brute_force(limit)}"
puts '----'

=begin
Benchmark.bm do |benchmark|
  benchmark.report('brute_force') do
    n.times do
        EvenFibonacciNumbers.brute_force(limit)
    end
  end
  benchmark.report('every_third') do
    n.times do
        EvenFibonacciNumbers.every_third(limit)
    end
  end

end
=end