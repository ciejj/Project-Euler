require 'benchmark'
require_relative 'even_fibonacci_numbers'

limit = 4_000_000
n=5000

puts "Brute Force result: #{EvenFibonacciNumbers.brute_force(limit)}"
puts "Every Third result: #{EvenFibonacciNumbers.every_third(limit)}"
puts '----'

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