=begin
Given the triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...
    Calculate the row sums of this triangle from the row index (starting at index 1) e.g.:

    row_sum_odd_numbers(1); # 1
    row_sum_odd_numbers(2); # 3 + 5 = 8
=end

require 'minitest/autorun'

def row_sum_odd_numbers(n)
  n ** 3
end


def start_x(n)
  if n == 1
    sum = 0
  else
    sum = n - 1 + start_x(n-1)
  end
end

def row_sum_odd_numbers_v2(n)
  if n == 1
    sum = 1
  else
    x1 = start_x(n)
    sum = 0
    n.times {
      sum += x1
      x1 += 1
    }
    sum = n + 2 * sum
  end
end


describe "row_sum_odd_numbers" do
  it "for row 1" do
    row_sum_odd_numbers(1).must_equal(1)
  end
  it "for row 1" do
    row_sum_odd_numbers(2).must_equal(8)
  end
  it "for row 1" do
    row_sum_odd_numbers(13).must_equal(2197)
  end
  it "for row 1" do
    row_sum_odd_numbers(19).must_equal(6859)
  end
  it "for row 1" do
    row_sum_odd_numbers(41).must_equal(68921)
  end
end

describe "start_x" do
  it "for n=2" do
    start_x(2).must_equal(1)
  end
  it "for n=3" do
    start_x(3).must_equal(3)
  end
  it "for n=4" do
    start_x(4).must_equal(6)
  end
end