require 'spec_helper'
require_relative '../../Codility/lesson3-2-frog_jmp'

describe 'solution' do
  context "when the needed 3 jumps" do
    it "returns 3 jumps" do
      expect(solution(10, 90, 30)).to eql(3)
    end
  end

  context "when the jump greater than Y" do
    it "returns 1 jump" do
      expect(solution(1, 3, 5)).to eql(1)
    end
  end

  context "when no need jumps" do
    it "returns 0 jumps" do
      expect(solution(1, 1, 3)).to eql(0)
    end
  end
end