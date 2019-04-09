require 'rspec/autorun'
require_relative 'amicable_numbers'

describe AmicableNumbers do
  context 'examples from the problem' do
    it 'finds sum of factors of 220' do
      expect(AmicableNumbers.factors_sum(220)).to eq(284)
    end
    it 'finds sum of factors of 284' do
      expect(AmicableNumbers.factors_sum(284)).to eq(220)
    end
  end
  context 'numbers that are squares' do
    it 'finds sum of factors of 25' do
      expect(AmicableNumbers.factors_sum(25)).to eq(6)
    end
    it 'finds sum of factors of 64' do
      expect(AmicableNumbers.factors_sum(64)).to eq(63)
    end
  end

  context 'solving problem' do
   it 'finds sum of all amicable numbers below 10000' do
    expect(AmicableNumbers.sum_of_amicable_numbers(10000)).to eq(31626)
  end
  end

end
