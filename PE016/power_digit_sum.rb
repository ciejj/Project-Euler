module PowerDigitSum
  def self.calculate_digit_sum(number, power)
    (number**power).to_s.chars.map(&:to_i).sum
  end
end
