module FactorialDigitSum
  # finds factorial of input number
  def self.factorial(num)
    (1..num).inject(:*)
  end

  # finds sum of digits of the input number
  def self.sum_of_digits(number)
    number.to_s.chars.map(&:to_i).sum
  end
end
