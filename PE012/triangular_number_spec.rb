require 'rspec/autorun'
require_relative 'triangular_number'

describe TriangularNumber do

    it 'brute force finds dividors of 3' do
        expect(TriangularNumber.divisors(3)).to match_array([1,3])
    end

    it 'brute force finds dividors of 28' do
        expect(TriangularNumber.divisors(28)).to match_array([1,2,4,7,14,28])
    end

    it 'find triangle number with at least 5 divisors brute force' do
        expect(TriangularNumber.triangular_number_with_n_divisors(5)).to eq(28)
    end

    it 'find triangle number with at least 5000 divisors' do
        expect(TriangularNumber.triangular_number_with_n_divisors(500)).to eq(76576500)
   end
end

