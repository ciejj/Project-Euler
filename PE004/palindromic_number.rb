class PalindromicNumber
  attr_reader :min, :max

  def initialize(number_of_digits)
    @min = ('1' + '0' * (number_of_digits - 1)).to_i
    @max = ('1' * number_of_digits).to_i * 9
  end

  def brute_force()
    largest_palindrome = 0

    (min..max).reverse_each do |x|
      (min..max).reverse_each do |y|
        if palindrome?(x * y)
          largest_palindrome = [largest_palindrome, x*y].max
        end
      end
    end
    largest_palindrome
  end

  def brute_force_optimized()
    largest_palindrome = 0

    (min..max).reverse_each do |x|
      (x..max).reverse_each do |y|
        if (x*y) > largest_palindrome && palindrome?(x * y)
          largest_palindrome = x*y
        end
      end
    end
    largest_palindrome
  end



  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end


end
