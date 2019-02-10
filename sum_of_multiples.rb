class SumOfMultiples
  def self.brute_force(limit)
    (0...limit).inject { |sum, i| (i % 3).zero? || (i % 5).zero? ? sum + i : sum }
  end

  def self.geometric(limit)
    sum_of_x_multiples(3, limit-1) + sum_of_x_multiples(5, limit-1) - sum_of_x_multiples(15, limit-1)
  end

  def self.sum_of_x_multiples(x, limit)
    x * (limit / x) * ((limit / x) + 1) / 2
  end
end
