require 'rspec/autorun'
require_relative 'sum_of_primes'

describe SumOfPrimes do
  it 'finds that 1 is not prime' do
    expect(SumOfPrimes.prime?(1)).to eq(false)
  end

  it 'finds that 2 is prime' do
    expect(SumOfPrimes.prime?(2)).to eq(true)
  end

  it 'finds that 17 is prime' do
    expect(SumOfPrimes.prime?(17)).to eq(true)
  end

  it 'finds that 12 is not prime' do
    expect(SumOfPrimes.prime?(12)).to eq(false)
  end

  it 'finds sum of primes smaller than 10' do
    expect(SumOfPrimes.brute_force(10)).to eq(17)
  end

  it 'finds sum of primes smaller than 2000000' do
    expect(SumOfPrimes.brute_force(2_000_000)).to eq(142_913_828_922)
  end

  it 'finds sum of primes smaller than 10' do
    expect(SumOfPrimes.sieve_of_erathostenes(10)).to eq(17)
  end

  it 'finds sum of primes smaller than 2000000' do
    expect(SumOfPrimes.sieve_of_erathostenes(2_000_000)).to eq(142_913_828_922)
  end
end
