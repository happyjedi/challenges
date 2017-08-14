=begin
Description

Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others.
Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers,
he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

##Examples :

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd
=end

require 'minitest/autorun'

def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end

def iq_test_v2(numbers)
  evens = 0
  odds = 0
  last_odd = 1
  last_even = 1
  numbers.split.each_with_index do |c, i|
    if c.to_i.even?
      evens += 1
      last_even = i + 1
      return last_odd if evens > 1 && odds == 1
    end

    if c.to_i.odd?
      odds += 1
      last_odd = i + 1
      return last_even if odds > 1 && evens == 1
    end
  end
  return last_odd if evens > 1 && odds == 1
  return last_even if odds > 1 && evens == 1
  return 0
end

describe "iq_test" do
  it "2 4 7 8 10" do
    iq_test("2 4 7 8 10").must_equal(3)
  end

  it "1 2 2" do
    iq_test("1 2 2").must_equal(1)
  end

  it "5 3 2" do
    iq_test("5 3 2").must_equal(3)
  end

  it "100 100 1" do
    iq_test("100 100 1").must_equal(3)
  end

  it "numbers" do
    numbers = "9 31 27 93 17 77 75 9 9 53 89 39 51 99 5 1 11 39 27 49 91 17 27 79 81
               71 37 75 35 13 93 4 99 55 85 11 23 57 5 43 5 61 15 35 23 91 3 81 99 85 43
              37 39 27 5 67 7 33 75 59 13 71 51 27 15 93 51 63 91 53 43 99 25 47 17 71 81 15 53 31
              59 83 41 23 73 25 91 9"
    iq_test(numbers).must_equal(32)
  end
end
