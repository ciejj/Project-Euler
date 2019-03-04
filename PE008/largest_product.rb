module LargestProduct
  # Returns largest product of n (n_o_d) adjacent digits from the input series
  #   by calculating every product of n (n_o_d) adjacent digits
  #
  # @param [Integer] n_o_d - number of digits, that product is checked
  # @param [String] series - input number
  #
  # @return [Integer] largest product of N adjacent digits
  def self.brute_force(n_o_d, series)
    max_product = 0

    (0..series.length - n_o_d).each do |s_p|
      prod = product(series[s_p, n_o_d])
      max_product = [prod, max_product].max
    end
    
    max_product
  end

  # Returns largest product of n (n_o_d) adjacent digits from the input series
  #   by calculating every product of n (n_o_d) adjacent digits
  #   it uses <inject> iterator instead of  <each>
  #
  # @param [Integer] n_o_d - number of digits, that product is checked
  # @param [String] series - input number
  #
  # @return [Integer] largest product of N adjacent digits
  def self.brute_force_inject(n_o_d, series)
    (0..series.length - n_o_d).inject(0) do |max_product,s_p|    
      # s_p - starting position of subseries
      prod = product(series[s_p, n_o_d])
      max_product = [prod, max_product].max
    end
    
  end

  # Returns product of multiplication of all the digits from input string
  #
  # @param [String] string_of_digits - string consisting digits only
  # @return [Integer] product of multiplication of input digits
  def self.product(string_of_digits)
    array_of_digits = string_of_digits.chars.map(&:to_i)
    array_of_digits.inject { |product, digit| product * digit }
  end


  # Returns largest product of n (n_o_d) adjacent digits from the input series
  #   it calculates the first product of n_o_d digits,
  #   then product is divided by its first digit, and mulitplied by next digit
  #   it works around dividing by 0 by calculating product from scratch instead
  #
  # @param [Integer] n_o_d - number of digits, that product is checked
  # @param [String] series - input number
  #
  # @return [Integer] largest product of N adjacent digits
  def self.slide_and_multiply(n_o_d, series)

    prod = product(series[0, n_o_d])
    max_product=prod

    (0..(series.length - n_o_d-1)).each do |s_p|
      if series[s_p].to_i != 0 
        prod /= series[s_p].to_i
        prod *= series[s_p + n_o_d].to_i
      else
        prod = product(series[s_p+1,n_o_d])
      end
      max_product = [prod, max_product].max
    end
    max_product

  end
end

