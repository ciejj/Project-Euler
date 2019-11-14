distinct_terms =  (2..100).each_with_object([]) do |a, arr|
    (2..100).each do |b|
     arr << a**b unless arr.include?(a**b)    
    end
  end

puts distinct_terms.size
