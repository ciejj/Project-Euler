require 'rspec/autorun'
require_relative 'sum_square_difference'

describe SumSquareDifference do
  it 'finds sum_of_squares for limit=2' do
    expect(SumSquareDifference.sum_of_squares(2)).to eq(5)
  end

  it 'finds square_of_sum for limit=2' do
    expect(SumSquareDifference.square_of_sum(2)).to eq(9)
  end

  it 'finds sum_of_squares for limit=10' do
    expect(SumSquareDifference.sum_of_squares(10)).to eq(385)
  end

  it 'finds square_of_sum for limit=10' do
    expect(SumSquareDifference.square_of_sum(10)).to eq(3025)
  end

  it 'finds difference between square_of_sum and sum_of_squares for limit=10' do
    expect(SumSquareDifference.brute_force(10)).to eq(2640)
  end

  it 'finds difference between square_of_sum and sum_of_squares for limit=100' do
    expect(SumSquareDifference.brute_force(100)).to eq(25164150)
  end


end
