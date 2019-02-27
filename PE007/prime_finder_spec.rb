require 'rspec/autorun'
require_relative 'prime_finder'

describe PrimeFinder do
  it 'finds that 3 is prime number' do
    expect(PrimeFinder.is_prime?(3)).to eq(true)
  end

  it 'finds that 4 is not prime number' do
    expect(PrimeFinder.is_prime?(4)).to eq(false)
  end

  it 'finds that 13 is prime number' do
    expect(PrimeFinder.is_prime?(4)).to eq(false)
  end

  it 'finds 6th prime' do
    expect(PrimeFinder.brute_force(6)).to eq(13)
  end

  it 'finds 10001th prime' do
    expect(PrimeFinder.brute_force(10001)).to eq(104743)
  end


end
