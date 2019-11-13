module QuadraticPrimes

  def self.brute_force
    a_max = 0, b_max = 0, n_max = 0;
      (-1000..1000).each do |a|
        (-1000..1000).each do |b|
          n = 0
          while prime?(n*n + n*a +b)
            n+=1
          end
          if n > n_max 
            n_max = n
            a_max = a
            b_max = b
          end
        end
      end
       
    puts "length of the sequence: #{n_max}"
    puts "value of a: #{a_max}, value of b: #{b_max}"
    puts "product: #{a_max*b_max}"
  end
  
  
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


QuadraticPrimes.brute_force