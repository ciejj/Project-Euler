require 'rspec/autorun'
require_relative 'longest_collatz_sequence'

describe LongestCollatzSequence do

  context "Collatz Sequence generation" do

    it 'finds next for 13' do
        expect(LongestCollatzSequence.next_in_sequence(13)).to eq(40)
    end

    it 'finds next for 20' do
        expect(LongestCollatzSequence.next_in_sequence(20)).to eq(10)
    end

    it 'finds sequence for 13' do
        expect(LongestCollatzSequence.generate_sequence(13)).to match_array([13, 40, 20, 10, 5, 16, 8, 4, 2, 1])
    end

  end

  context "Collatz Sequence generation" do

  it 'finds number, that generates the longest sequence' do
    expect(LongestCollatzSequence.find_longest_sequence_number(1000000)).to eq(837799)
  end
end
end