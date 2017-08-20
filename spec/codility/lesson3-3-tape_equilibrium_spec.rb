require 'spec_helper'
require_relative "../../Codility/#{File.basename(__FILE__).gsub(/\_spec.rb$/, '')}"

describe 'solution' do
  it "calculates the minimal difference" do
    expect(solution([3, 1, 2, 4, 3])).to eql(1)
  end

  context "when array has 2 elements" do
    it "calculates the minimal difference" do
      expect(solution([1, 2])).to eql(1)
    end
  end

  context "when elements of the array are negative numbers" do
    it "calculates the minimal difference" do
      expect(solution([-1, -2, -3, -4])).to eql(2)
    end
  end

  context "when elements of the array are both positive and negative" do
    it "calculates the minimal difference" do
      expect(solution([-1000, 1000])).to eql(2000)
    end
  end

  context "when elements of the array are zeros" do
    it "returns 0" do
      expect(solution([0, 0, 0])).to eql(0)
    end
  end
end