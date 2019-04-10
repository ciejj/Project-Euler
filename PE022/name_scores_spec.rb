require 'rspec/autorun'
require_relative 'name_scores'

describe NameScores do
  let(:n_s) { NameScores.new('names.txt') }

  context 'name values calculations' do
    it 'A is worth 1' do
      expect(n_s.value('A')).to eq(1)
    end
    it 'D is worth 4' do
      expect(n_s.value('D')).to eq(4)
    end
  end

  context 'solves the PE022' do
    it 'calculates the names score' do
      expect(n_s.calculate_score).to eq(871_198_282)
    end
  end
end
