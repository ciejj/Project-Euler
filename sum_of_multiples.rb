class SumOfMultiples
  def self.brute_force(limit)
    (1...limit).inject { |sum, i| (i % 3).zero? || (i % 5).zero? ? sum + i : sum }
  end
end
