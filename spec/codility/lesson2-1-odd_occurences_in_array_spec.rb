require 'spec_helper'
require_relative "../../Codility/#{File.basename(__FILE__).gsub(/\_spec.rb$/, '')}"

describe 'solution' do
  context "when given one unpaired element" do
    it "returns the value of unpaired element" do
      expect(solution([9, 3, 9, 3, 9, 7, 9])).to eql(7)
    end
  end

  context "when given array with single item" do
    it "returns the value of that element" do
      expect(solution([9])).to eql(9)
    end
  end
end