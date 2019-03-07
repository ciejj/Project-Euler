module TriangularNumber
  # Finds smallest triangular number, which has at least specified number_of_divisors
  #
  # @param [Integer] number_of_divisors minimum number of divisors
  # @return [Integer] smallest triangular number
  def self.triangular_number_with_n_divisors(number_of_divisors)
    tn = 1 # number of triangular number
    div = 1 # number of divisors of current triangular number

    while div < number_of_divisors
      tn += 1
      div = divisors(triangular_number(tn)).length
    end
    triangular_number(tn)
  end

  # Returns n-th triangular number,
  #   which is sum of all natural number smaller than n
  # @param [Integer] n - number of the triangular number
  # @return [Integer] triangular number
  def self.triangular_number(n)
    n * (n + 1) / 2
  end

  # Finds array of divisors of input number
  #
  # @param [Integer] number
  # @return [Array] divisors of number
  def self.divisors(number)
    (1..Integer.sqrt(number)).each_with_object([]) do |n, factors|
      if (number % n).zero?
        factors << n
        factors << number / n
      end
    end
  end
end
