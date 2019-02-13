require 'benchmark'
require_relative 'palindromic_number'

pn_3 = PalindromicNumber.new(3)

n=5
Benchmark.bm do |benchmark|
    benchmark.report('brute_force') do
      n.times do
        pn_3.brute_force
      end
    end
    benchmark.report('brute_force_optimized') do
      n.times do
        pn_3.brute_force_ptimized
      end
    end

end