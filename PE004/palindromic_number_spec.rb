require 'rspec/autorun'
require_relative 'palindromic_number'

describe PalindromicNumber do

  it 'finds that 11 is palindrome' do
    expect(PalindromicNumber.palindrome?(11)).to eq(true)
  end

  it 'finds that 99 is palindrome' do
    expect(PalindromicNumber.palindrome?(99)).to eq(true)
  end

  it 'finds that 12 is NOT palindrome' do
    expect(PalindromicNumber.palindrome?(12)).to eq(false)
  end

  it 'finds that 121 is palindrome' do
    expect(PalindromicNumber.palindrome?(121)).to eq(true)
  end

  it 'finds that 576 is NOT palindrome' do
    expect(PalindromicNumber.palindrome?(576)).to eq(false)
  end

  it 'finds that 888 is NOT palindrome' do
    expect(PalindromicNumber.palindrome?(888)).to eq(true)
  end
end
