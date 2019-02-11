class PrimeFactors

  def self.brute_force(limit)
    max=0
    i=2

    while (i < limit)
      if limit % i == 0
      max= i
      limit = limit/i
      else i+=1
      end
    end
    
    max
  end
end