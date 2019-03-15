require 'rspec/autorun'
require_relative 'number_letter_count'

describe NumberLetterCount do
  it 'returns error for number < 1' do
    expect{NumberLetterCount.count_number_letters(0)}.to raise_error(ArgumentError)
  end

  it 'returns error for number > 1000' do
    expect{NumberLetterCount.count_number_letters(1001)}.to raise_error(ArgumentError)
  end

  it 'find number o letters for 1' do
    expect(NumberLetterCount.count_number_letters(1)).to eq(3)
  end

  it 'find number o letters for 11' do
    expect(NumberLetterCount.count_number_letters(11)).to eq(6)
  end

  it 'find number o letters for 21' do
    expect(NumberLetterCount.count_number_letters(21)).to eq(9)
  end

  it 'find number o letters for 99' do
    expect(NumberLetterCount.count_number_letters(99)).to eq(10)
  end

  it 'find number o letters for 342' do
    expect(NumberLetterCount.count_number_letters(342)).to eq(23)
  end

  it 'find number o letters for 115' do
    expect(NumberLetterCount.count_number_letters(115)).to eq(20)
  end

  it 'find number o letters for 100' do
    expect(NumberLetterCount.count_number_letters(100)).to eq(10)
  end

  it 'find number o letters for all numbers smaller than 5' do
    expect(NumberLetterCount.count_letter_range(5)).to eq(19)
  end

  it 'find number o letters for all numbers smaller than 1000' do
    expect(NumberLetterCount.count_letter_range(1000)).to eq(21124)
  end

end
