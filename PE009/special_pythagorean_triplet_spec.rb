require 'rspec/autorun'
require_relative 'special_pythagorean_triplet'

describe SpecialPythagoreanTriplet do

  it 'finds the triplet, which sum is 12' do
    expect(SpecialPythagoreanTriplet.find_triplet(12)).to eq([3,4,5])
  end

  it 'finds the triplet, which sum is 1000' do
    expect(SpecialPythagoreanTriplet.find_triplet(1000)).to eq([200,375,425])
  end
  
  it 'finds the product of triplet, which sum is 1000' do
    expect(SpecialPythagoreanTriplet.brute_force(1000)).to eq(31875000)
  end

end
