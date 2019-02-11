require 'pry'

class PrimeFactors
  def self.brute_force(big_number)
    i = 2
    factors_array = []

    # list all factors of the big_number
    while i <= big_number
      if (big_number % i).zero?
        factors_array << i
        big_number /= i
      else i += 1
      end
    end

    # find the biggest prime factor
    factors_array.reverse_each { |f| return f if prime?(f) }
  end

  # returns true, if the number is prime
  def self.prime?(number)
    2.upto(number - 1).each { |k| return false if (number % k).zero? }
    true
  end
end
