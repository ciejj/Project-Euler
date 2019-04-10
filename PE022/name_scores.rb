class NameScores
  attr_reader :names

  def initialize(file_path)
    raw_input = File.read(file_path)
    @names = raw_input.delete('"').split(',').sort
  end

  def value(name)
    name.each_byte.sum { |x| x - 64 }
  end

  def calculate_score
      names.each_with_index.sum {|name, index| value(name)*(index+1)}
  end
  
end
