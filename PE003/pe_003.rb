require 'benchmark'
require_relative 'prime_factors'

big_number = 600851475143
n=500


puts "Arithmetic result: #{PrimeFactors.arithmetic(big_number)}"
puts "Brute Force result: #{PrimeFactors.arithmetic_improved(big_number)}"
puts '----'


Benchmark.bm do |benchmark|
  benchmark.report('arithmetic') do
    n.times do
      PrimeFactors.arithmetic(big_number)
    end
  end
  benchmark.report('arithmetic_improved') do
    n.times do
      PrimeFactors.arithmetic(big_number)
    end
  end
 
end
