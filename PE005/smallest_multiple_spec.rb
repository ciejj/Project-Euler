require 'rspec/autorun'
require_relative 'smallest_multiple'

describe SmallestMultiple do
  it 'finds that 12 is dividable by 1,2,3' do
    expect(SmallestMultiple.dividable_by_each_between(1, 3, 12)).to eq(true)
  end

  it 'finds that 12 is dividable by 1,2,3,4' do
    expect(SmallestMultiple.dividable_by_each_between(1, 4, 12)).to eq(true)
  end

  it 'finds that 12 is NOT dividable by 1,2,3,4,5' do
    expect(SmallestMultiple.dividable_by_each_between(1, 5, 12)).to eq(false)
  end

  it 'finds that 2520 is dividable by each of the numbers from 1 to 10' do
    expect(SmallestMultiple.dividable_by_each_between(1, 10, 2520)).to eq(true)
  end

  it 'finds 2520 as the smallest number dividable by each of numbers from 1 to 10 - brute force' do
    expect(SmallestMultiple.brute_force(1,10)).to eq(2520)
  end

  it 'finds 2520 as the smallest number dividable by each of numbers from 1 to 10 - unique prime factors' do
    expect(SmallestMultiple.unique_prime_factors(1,10)).to eq(2520)
  end

 it 'finds prime factors of 4' do
  expect(SmallestMultiple.find_prime_factors(4)).to eq([2,2])
 end

 it 'finds prime factors of 5' do
  expect(SmallestMultiple.find_prime_factors(5)).to eq([5])
 end

 it 'finds prime factors of 12' do
  expect(SmallestMultiple.find_prime_factors(12)).to eq([2,2,3])
 end
 
 it 'finds 2520 as the smallest number dividable by each of numbers from 1 to 10 - unique prime factors' do
  expect(SmallestMultiple.unique_prime_factors(1,20)).to eq(232792560)
end


end