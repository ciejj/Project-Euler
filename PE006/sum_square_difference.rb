module SumSquareDifference


  def self.brute_force(limit)
   square_of_sum(limit) - sum_of_squares(limit)
  end  

  def self.arithmetic(min,max)
  end
  # returns sum of squares of all natural nubmers smaller then the limit
    def self.sum_of_squares(limit)
    (1..limit).inject { |sum, x| sum + x * x }
  end

  #returns square of sum of all natural numbers smaller than the limit
  def self.square_of_sum(limit)
    (1..limit).inject { |sum, x| sum + x }**2
  end
end
