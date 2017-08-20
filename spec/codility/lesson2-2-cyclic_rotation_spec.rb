require 'spec_helper'
require_relative "../../Codility/#{File.basename(__FILE__).gsub(/\_spec.rb$/, '')}"

describe 'solution' do
  context "when produced 1 rotation" do
    it "returns one rotated array" do
      expect(solution([3, 8, 9, 7, 6], 1)).to eql([6, 3, 8, 9, 7])
    end
  end

  context "when given an empty array" do
    it "returns the empty array" do
      expect(solution([], 10)).to eql([])
    end
  end
end