module DistinctPowers
  def self.find_distinct_terms
    
    distinct_terms = []
    
    (2..100).each do |a|
      (2..100).each do |b|
      distinct_terms << a**b unless distinct_terms.include?(a**b)    
      end
    end
    puts distinct_terms.size
  end
end

DistinctPowers.find_distinct_terms