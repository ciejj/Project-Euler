require 'benchmark'
require_relative 'palindromic_number'

n=5

puts PalindromicNumber.brute_force(3)

Benchmark.bm do |benchmark|
    benchmark.report('brute_force') do
      n.times do
        PalindromicNumber.brute_force(3)
      end
    end
   
  end