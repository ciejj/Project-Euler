module SpecialPythagoreanTriplet

  # Finds the product of pythagorean triplet
  # 
  # @param [Integer] sum of a,b,c 
  # @return [Integer] product of multiplication of a,b,c
  def self.brute_force(sum)
    triplet = find_triplet(sum)
    triplet.inject(:*)
  end

  # Finds the a, b, and c values by iterating over a and b
  # 
  # @param [Integer] sum of a,b,c 
  # @return [Array] array of triplets [a,b,c]
  def self.find_triplet(sum)

    (1..sum / 3).each do |a|
      (a..sum / 2).each do |b|
        c = sum - a - b
        return [a, b, c] if (a * a + b * b) == c * c
      end
    end
    return 0
  end

end

