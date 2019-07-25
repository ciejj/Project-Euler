module NonAbudantSums
  

  def self.find_abundant_numbers(limit)
    (2..limit).each_with_object([]) do |i, arr|
        puts "DEBUG: number: #{i} SUM: #{factors_sum(i)}"
      arr << i if i < factors_sum(i)
    end
  end

  def self.factors_sum(number)
    root = Math.sqrt(number).ceil
    temp_sum = 1

    # handles case, when the number is sqare
    temp_sum += root if number == root * root

    (2...root).sum(temp_sum) { |x| (number % x).zero? ? x + number / x : 0 }
  end
end


puts NonAbudantSums.find_abundant_numbers(100)