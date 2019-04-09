module PrimeFinder
  def self.prime?(number)
    if number <= 1
      return false
    elsif number == 2
      return true
    elsif number.even?
      return false
    end

    i = 3
    while i * i <= number
      return false if (number % i).zero?

      i += 2
    end
    true
  end

  def self.brute_force(number_of_the_prime)
    raise ArgumentError if number_of_the_prime < 1
    return 2 if number_of_the_prime == 1

    i = 2
    number = 3
    while i < number_of_the_prime
      number += 2
      i += 1 if prime?(number)
    end
    number
  end
  end
