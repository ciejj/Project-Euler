require 'rspec/autorun'
require_relative 'palindromic_number'

describe PalindromicNumber do

  pn_3 = PalindromicNumber.new(3)
  pn_2 = PalindromicNumber.new(2)

  it 'finds that 11 is palindrome' do
    expect(pn_3.palindrome?(11)).to eq(true)
  end

  it 'finds that 99 is palindrome' do
    expect(pn_3.palindrome?(99)).to eq(true)
  end

  it 'finds that 12 is NOT palindrome' do
    expect(pn_3.palindrome?(12)).to eq(false)
  end

  it 'finds that 121 is palindrome' do
    expect(pn_3.palindrome?(121)).to eq(true)
  end

  it 'finds that 576 is NOT palindrome' do
    expect(pn_3.palindrome?(576)).to eq(false)
  end

  it 'finds that 888 is NOT palindrome' do
    expect(pn_3.palindrome?(888)).to eq(true)
  end

  it 'brute_force works properly for 2 digits' do
    expect(pn_2.brute_force).to eq(9009)
  end

  it 'brute_force works properly for 3 digits' do
    expect(pn_3.brute_force).to eq(906609)
  end

  it 'brute_force_optimized works properly for 2 digits' do
    expect(pn_2.brute_force_optimized).to eq(9009)
  end

  it 'brute_force_optimized works properly for 3 digits' do
    expect(pn_3.brute_force_optimized).to eq(906609)
  end

end
