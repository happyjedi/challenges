require 'spec_helper'
require_relative '../../Codility/lesson3-1-perm_missing_elem'

describe 'solution' do
  context "when given array with missed element 4" do
    it "returns the missing element" do
      expect(solution([2, 3, 1, 5,])).to eql(4)
    end
  end
end