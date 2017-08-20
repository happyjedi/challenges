require 'spec_helper'
require_relative "../../Codility/#{File.basename(__FILE__).gsub(/\_spec.rb$/, '')}"

describe 'solution' do
  it "calculates counters" do
    a = [3, 4, 4, 6, 1, 4, 4]
    expect(solution(5, a)).to eql([3, 2, 2, 4, 2])
  end

  context "all max counters" do
    it "calculates counters" do
      a = Array.new(100000, 100001)
      expect(solution(100000, a)).to eql(Array.new(100000, 0))
    end
  end
end