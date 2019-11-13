module NonAbudantSums
  
  LIMIT = 28123

  def self.can_be_written_as_abudant
    abudant_numbers = find_abundant_numbers
    print abudant_numbers.size
    arr = Array.new(abudant_numbers.size,false)
      abudant_numbers.each do |i|
      (abudant_numbers[i]..abudant_numbers.size).each do |j|
        arr[abudant_numbers[i] + abudant_numbers[j]]=true if abudant_numbers[i] + abudant_numbers[j] <= LIMIT
        puts 'changing!'
      end
    end
    arr
  end

  def self.find_abundant_numbers
    (2..LIMIT).each_with_object([]) do |i, arr|
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

print NonAbudantSums.can_be_written_as_abudant