module NumberLetterCount

  # Counts letters of all written out numbers smaller than max
  # @param [Integer] max 
  # @return [Integer] number of letters
  def self.count_letter_range(max)
    (1..max).inject(0) {|sum,i| sum+count_number_letters(i)}
  end


  # Counts letters in the written out numbers
  #   work only for numbers from 1 to 1000
  # @param [Integer] number
  # @return [Integer] number of letters
  def self.count_number_letters(number)
    raise ArgumentError unless number.between?(1, 1000)

    count_hash = {
      1 => 3,   2 => 3, 3 => 5, 4 => 4, 5 => 4, 6 => 3, 7 => 5, 8 => 5, 9 => 4, 10 => 3,
      11 => 6, 12 => 6, 13 => 8, 14 => 8, 15 => 7, 16 => 7, 17 => 9, 18 => 8, 19 => 8,
      20 => 6, 30 => 6,  40 => 5, 50 => 5, 60 => 5, 70 => 7, 80 => 6, 90 => 6,
      00 => 7,
      1000 => 11
    }

    if count_hash[number].nil?
      h = number / 100
      if (number%100).zero?
        count_hash[00] + count_hash[h]
      elsif h.zero?
        t = number % 100 / 10 * 10
        d = number % 10
        count_hash[t] + count_hash[d]
      else
        3 + count_hash[00] + count_hash[h] + count_number_letters(number%100)
      end
    else
      count_hash[number]
    end
  end
end
