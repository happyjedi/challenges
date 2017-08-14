=begin
Description:

Your task is to make a function that can take any non-negative integer as a argument and return it with it's digits in descending order. Essentially, rearrange the digits to create the highest possible number.

Examples:

Input: 21445 Output: 54421

Input: 145263 Output: 654321

Input: 1254859723 Output: 9875543221

Test1021
Expected: 2110
But was: 1201
Expected: 2110, instead got: 1201

=end

require 'minitest/autorun'

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

describe "descending_order" do
  it "(0)" do
    descending_order(0).must_equal(0)
  end

  it "(1)" do
    descending_order(1).must_equal(1)
  end

  it "(123456789)" do
    descending_order(123456789).must_equal(987654321)
  end

  it "(1021)" do
    descending_order(1021).must_equal(1201)
  end
end