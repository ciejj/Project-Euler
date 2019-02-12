class PrimeFactors

  def self.arithmetic(big_number)
    prime_factor = 2

    while prime_factor <= big_number
      if (big_number % prime_factor).zero?
        big_number /= prime_factor
      else prime_factor += 1
      end
    end
    prime_factor
  end

  def self.arithmetic_improved(big_number)
    prime_factor = 2

    while (big_number / prime_factor).zero?
        big_number /= prime_factor
    end

    prime_factor=3

    while prime_factor <= big_number
      if (big_number % prime_factor).zero?
        big_number /= prime_factor
      else
        prime_factor += 2
      end
    end
    prime_factor
  end

end
