module AmicableNumbers
  
  def self.factors_sum(number)
   root = Math.sqrt(number).ceil
   temp_sum = 1
   
   #handles case, when the number is sqare
   temp_sum += root if number == root * root 

   (2...root).sum(temp_sum){|x| (number % x).zero? ? x + number /x : 0} 
  end



  def self.sum_of_amicable_numbers(limit)
   sum=0
   (2..limit).each do |x|
     x_f_s = factors_sum(x)

     if x_f_s.between?(x+1,limit)
          if x == factors_sum(x_f_s)
            sum += x + x_f_s
         end
     end
   end
sum
  end

end

