require 'pry'

class PrimeFactors

  def self.brute_force(limit)
    i=2
    factors_array = Array.new

    while (i <= limit)

      if limit % i == 0
        #binding.pry
      factors_array << i
      limit = limit/i
      else i+=1
      end
    end
    
    factors_array
  end
end