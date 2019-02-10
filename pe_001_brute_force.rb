class PE001BruteForce
  def self.sum_of_multiples(limit)
    (1...limit).inject { |sum, i| (i % 3).zero? || (i % 5).zero? ? sum + i : sum }
  end
end
