module SumSquareDifference
  
  # finds the difference in a brute force way - by calculating the sum of squares, ans square of sum  
  def self.brute_force(limit)
    square_of_sum(limit) - sum_of_squares(limit)
  end

  #find the difference with the arithmetic expressions
  def self.arithmetic(limit)
    square_of_sum_a = (limit * (limit + 1) / 2)**2
    sum_of_squares_a = (2 * limit + 1) * (limit + 1) * limit / 6
    square_of_sum_a - sum_of_squares_a
  end

  # returns sum of squares of all natural nubmers smaller then the limit
  def self.sum_of_squares(limit)
    (1..limit).inject { |sum, x| sum + x * x }
  end

  # returns square of sum of all natural numbers smaller than the limit
  def self.square_of_sum(limit)
    (1..limit).inject { |sum, x| sum + x }**2
  end
end
