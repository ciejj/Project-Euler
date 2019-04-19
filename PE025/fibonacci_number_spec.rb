require 'rspec/autorun'
require_relative 'fibonacci_number'

describe FibonacciNumber do
  context 'when it is looking for the first term to contain three digits' do
    it 'finds 12' do
      expect(FibonacciNumber.first_number_with_digits(3)).to eq(12)
    end
  end

  context 'when it is looking for the first term to contain two digits' do
    it 'finds 7' do
      expect(FibonacciNumber.first_number_with_digits(2)).to eq(7)
    end
  end

  context 'when it is looking for the first term to contain 1000 digits' do
    it 'finds 4782' do
      expect(FibonacciNumber.first_number_with_digits(1000)).to eq(4782)
    end
  end
end
