require 'rspec/autorun'
require_relative 'factorial_digit_sum'

describe FactorialDigitSum do
  it 'finds factorial of 3' do
    expect(FactorialDigitSum.factorial(3)).to eq(6)
  end

  it 'finds factorial of 10' do
    expect(FactorialDigitSum.factorial(10)).to eq(3_628_800)
  end

  it 'finds sum of digits of 10!' do
    factorial = FactorialDigitSum.factorial(10)
    expect(FactorialDigitSum.sum_of_digits(factorial)).to eq(27)
  end

  it 'finds sum of digits of 100!' do
    factorial = FactorialDigitSum.factorial(100)
    expect(FactorialDigitSum.sum_of_digits(factorial)).to eq(648)
  end


end
