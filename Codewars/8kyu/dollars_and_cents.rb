=begin
Description:

Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
invert([]) == []

You can assume that all values are integers.

=end

require 'minitest/autorun'

def invert(list)
  list.map(&:-@)
end

def invert_v2(list)
  list.map {|n| n*-1 }
end

describe "Basic tests" do
  it "invert to [-1,-2,-3,-4,-5]" do
    invert([1,2,3,4,5]).must_equal([-1,-2,-3,-4,-5])
  end
  it "invert to [-1,2,-3,4,-5]" do
    invert([1,-2,3,-4,5]).must_equal([-1,2,-3,4,-5])
  end
  it "invert to [0]" do
    invert([0]).must_equal([0])
  end
  it "invert to [1,0,-1]" do
    invert([-1,0,1]).must_equal([1,0,-1])
  end
  it "invert to []" do
    invert([]).must_equal([])
  end
end


