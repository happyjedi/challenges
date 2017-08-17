require 'spec_helper'
require_relative '../../Codility/lesson1-1-binary_gap'

describe 'solution' do
  context "when 1 is at the start and end" do
    it "returns binary gap" do
      expect(solution(9)).to eql(2)
    end
  end

  context "when there are more than one sequence of zeros" do
    it "returns the largest binary gap" do
      expect(solution(1041)).to eql(5)
    end
  end

  context "when 0 is at the end" do
    it "returns binary gap with 1 on both ends" do
      expect(solution(20)).to eql(1)
    end
  end

  context "when there are more than 0 zero at the end" do
    it "returns binary gap with 1 on both ends" do
      expect(solution(288)).to eql(2)
    end
  end

  context "when there are no gaps" do
    it "returns 0" do
      expect(solution(15)).to eql(0)
    end
  end

  context "when argument is 0" do
    it "returns 0" do
      expect(solution(0)).to eql(0)
    end
  end
end