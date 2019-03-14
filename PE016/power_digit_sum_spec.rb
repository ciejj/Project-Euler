require 'rspec/autorun'
require_relative 'power_digit_sum'

describe PowerDigitSum do

    it 'finds sum of digits of 2^15' do
        expect(PowerDigitSum.calculate_digit_sum(2,15)).to eq(26)
    end

    it 'finds sum of digits of 2^1000' do
        expect(PowerDigitSum.calculate_digit_sum(2,1000)).to eq(1366)
    end


end
