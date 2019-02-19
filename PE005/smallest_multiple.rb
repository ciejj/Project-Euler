module SmallestMultiple
  def self.brute_force(min, max)
    dividable_by_all = false
    number = 1
    until dividable_by_all
      dividable_by_all = dividable_by_each_between(min, max, number += 1)
      puts number
    end
    number
  end

  # reutrns true, if number is evenly dividable by all numbers between min and max
  def self.dividable_by_each_between(min, max, number)
    result = true
    (min..max).each { |n| result &&= (number % n).zero? }
    result
  end
end
