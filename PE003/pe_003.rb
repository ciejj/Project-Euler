require 'benchmark'
require_relative 'prime_factors'

big_number = 7
n=5000

puts "Brute Force result: #{PrimeFactors.brute_force(big_number)}"
puts '----'

Benchmark.bm do |benchmark|
  benchmark.report('brute_force') do
    n.times do
      PrimeFactors.brute_force(big_number)
    end
  end
end
