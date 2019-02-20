module SmallestMultiple
  def self.brute_force(min, max)
    dividable_by_all = false
    number = 1
    until dividable_by_all
      dividable_by_all = dividable_by_each_between(min, max, number += 1)
    end
    number
  end

  # finds smalles multiple of numbers between min and max
  # by finding all unique prime factors of each nubmers between min and max
  def self.unique_prime_factors(min, max)
    unique_prime_factors = Hash.new(0)
    output = 1

    (min..max).each do |num|
      prime_factors = Hash.new(0)
      find_prime_factors(num).each { |x| prime_factors[x] += 1 }

      prime_factors.each do |key, _value|
        unique_prime_factors[key] = [unique_prime_factors[key], prime_factors[key]].max
      end
    end

    unique_prime_factors.each do |base, exponent|
      output *= base**exponent
    end
    output
  end

  # reutrns true, if number is evenly dividable by all numbers between min and max
  def self.dividable_by_each_between(min, max, number)
    result = true
    (min..max).each { |n| result &&= (number % n).zero? }
    result
  end

  # returns the array of prime factors of the input number
  def self.find_prime_factors(number)
    factors_arr = []
    prime_factor = 2

    while (number % prime_factor).zero?
      factors_arr << prime_factor
      number /= prime_factor
    end

    prime_factor = 3
    while prime_factor <= number
      if (number % prime_factor).zero?
        factors_arr << prime_factor
        number /= prime_factor
      else
        prime_factor += 2
      end
    end
    factors_arr
  end
end
