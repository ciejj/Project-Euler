module LongestCollatzSequence
  # Returns next integer in the Collatz sequence
  # @param [Integer] number for which next number is generated
  # @return [Integer] 
  def self.next_in_sequence(number)
    (number % 2).zero? ? number / 2 : (3 * number + 1)
  end

  # Returns Collatz Sequence for the starting number
  # @param [Integer] number - starting number of the sequence
  # @return [Array] 
  def self.generate_sequence(number)
    collatz_sequence = []
    while number != 1
      collatz_sequence << number
      number = next_in_sequence(number)
    end
    collatz_sequence << 1
  end

  # Finds the number, smaller than limit,
  #   that generates the longest Colaltz Sequence
  # @param [Integer] limit- max value, below which numbers are checked
  # @return [Integer] 
  def self.find_longest_sequence_number(limit)
    max_length=1
    max_length_generator=1

    sequences_lengths = Hash.new(0)
    sequences_lengths[1]=1

    (2..limit).each do |x|
      n = next_in_sequence(x)

      # checks, if sequence length has been calculated for 
      #   the proceeding number
      if (sequences_lengths[n]).zero?
        temp_length = generate_sequence(x).length
      else
        temp_length = sequences_lengths[n] +1
      end
      
      sequences_lengths[x]=temp_length

      # checks, if the current number generates the longes solution
      if temp_length > max_length
        max_length = temp_length
        max_length_generator = x
      end
    end
    max_length_generator
  end

end
