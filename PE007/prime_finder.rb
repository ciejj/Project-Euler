module PrimeFinder 

    def self.is_prime?(number)
        if number <= 1
            return false
        elsif number == 2
            return true
        elsif number %2==0
            return false
        end

        i=3
        while i*i <= number
          if (number % i).zero? 
            return false
          else 
            i+=2
          end
        end
        true

    end

    def self.brute_force(number_of_the_prime)
        
        i=1
        number=1
        while i < number_of_the_prime
            number+=2
            i+=1 if is_prime?(number)
            puts number
        end
        number
    end
end
