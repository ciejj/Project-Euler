require 'benchmark'
require_relative 'sum_of_primes'

n = 5

Benchmark.bm do |benchmark|
  benchmark.report('brute force') do
    n.times do
      SumOfPrimes.brute_force(2_000_000)
    end
  end
  benchmark.report('sieve') do
    n.times do
      SumOfPrimes.sieve_of_erathosthenes(2_000_000)
    end
  end
end
