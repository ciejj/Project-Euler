module LatticePaths

def self.number_of_paths(grid_size)
  (1..grid_size).inject(1) {|paths, i| paths * (grid_size+i)/i}
end

end


print LatticePaths.number_of_paths(20)