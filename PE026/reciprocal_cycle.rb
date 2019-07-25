module ReciprocalCycle
  

  def self.find_longest_cycle(max)
    max_cycle_length = 1
    max_cycle_length_denominator = 1

    (6..max).each do |i|
      if prime?(i)
        # puts "DEBUG: checking #{i}"
        c_l = unit_fraction_cycle(i)
        # puts "DEBUG:   fraction cycle's length: #{c_l}"
          if c_l > max_cycle_length
            max_cycle_length = c_l
            max_cycle_length_denominator = i
          end
      end
    end
  
    puts "#{max_cycle_length_denominator} is generating the longest cycle"
  end

  def self.unit_fraction_cycle(denr)
  a = 1
  t = 0
  begin
    a = a * 10 % denr
    t += 1
  end while a != 1
  t
  end

  def self.prime?(number)
    if number <= 1
      return false
    elsif number == 2
      return true
    elsif number.even?
      return false
    end

    i = 3
    while i * i <= number
      return false if (number % i).zero?

      i += 2
    end
    true
  end

end

ReciprocalCycle.find_longest_cycle(1000)