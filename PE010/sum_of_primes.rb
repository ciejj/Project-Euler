module SumOfPrimes
  # Finds sum of all prime numbers smaller than max_number
  #   by mean of sieve of Erathosthenes -
  #   multiples of primes numbers are removed from the array
  #   that holds all number smaller than max_number
  #
  # @param [Integer] max_number upper limit of prime numbers
  # @return [Integer] sum of prime number smaller than max_number
  def self.sieve_of_erathosthenes(max_number)
    arr = (2...max_number).to_a

    arr.each do |x|
      next if x.zero?

      y = 2 * x
      while y < max_number
        arr[y - 2] = 0
        y += x
      end
    end
    arr.inject(:+)
  end

  # Finds sum of all prime numbers smaller than max_number
  # by checking if they are prime
  #
  # @param [Integer] max_number upper limit of prime numbers
  # @return [Integer] sum of prime number smaller than max_number
  def self.brute_force(max_number)
    return 0 if max_number <= 1
    return 2 if max_number == 2

    (2..max_number).inject(0) do |sum, num|
      prime?(num) ? sum + num : sum
    end
  end

  # Checks, if input number is prime
  #
  # @param [Integer] number input number, that is being checked
  # @return [Bool] true if number is prime, false otherwise
  def self.prime?(number)
    return false if number <= 1
    return true if number == 2
    return false if number.even?

    i = 3
    while i * i <= number
      return false if (number % i).zero?

      i += 2
    end
    true
  end
end
