def sorted_permutations(input_arr)
  input_arr.permutation.to_a
end

sp = sorted_permutations([0,1,2,3,4,5,6,7,8,9])

print sp[999999].join