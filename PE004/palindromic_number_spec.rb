require 'rspec/autorun'
require_relative 'palindromic_number'

describe PalindromicNumber do
  it 'finds that 11 is palindrome' do
    pal_num = PalindromicNumber.new
    expect(pal_num.ispalindrome?(11)).to eq(true)
  end

  it 'finds that 99 is palindrome' do
    pal_num = PalindromicNumber.new
    expect(pal_num.ispalindrome?(99)).to eq(true)
  end

  it 'finds that 12 is NOT palindrome' do
    pal_num = PalindromicNumber.new
    expect(pal_num.ispalindrome?(12)).to eq(true)
  end

  it 'finds that 121 is palindrome' do
    pal_num = PalindromicNumber.new
    expect(pal_num.ispalindrome?(121)).to eq(true)
  end

  it 'finds that 576 is NOT palindrome' do
    pal_num = PalindromicNumber.new
    expect(pal_num.ispalindrome?(576)).to eq(true)
  end

  it 'finds that 888 is NOT palindrome' do
    pal_num = PalindromicNumber.new
    expect(pal_num.ispalindrome?(888)).to eq(true)
  end


end
