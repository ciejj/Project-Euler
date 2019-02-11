require 'pry'

class PrimeFactors

  def self.brute_force(limit)
    i = 2
    factors_array = Array.new

    while i <= limit

      if (limit % i).zero?
        #binding.pry
        factors_array << i
        limit /= i
      else i += 1
      end
    end

    factors_array.last
  end
end