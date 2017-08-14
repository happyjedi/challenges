=begin
Description:

The number n is Evil if it has an even number of 1's in its binary expansion.
First ten: 3, 5, 6, 9, 10, 12, 15, 17, 18, 20

The number n is Odious if it has an odd number of 1's in its binary expansion.
First ten: 1, 2, 4, 7, 8, 11, 13, 14, 16, 19

You have to write a function that determine if a number is Evil of Odious, function
should return "It's Evil!" in case of evil number and "It's Odious!" in case of odious number.

=end

require 'minitest/autorun'

def evil(n)
  n.to_s(2).count('1').even? ? "It's Evil!" : "It's Odious!"
end

def evil_v2(n)
  "It's #{['Evil','Odious'][n.to_s(2).count('1')&1]}!"
end

describe "Basic tests" do
  it "1 - It's Odious!" do
    evil(1).must_equal("It's Odious!")
  end
  it "2 - It's Odious!" do
    evil(2).must_equal("It's Odious!")
  end
  it "3 - It's Evil!" do
    evil(3).must_equal("It's Evil!")
  end
  it "196 - It's Odious!" do
    evil(196).must_equal("It's Odious!")
  end
  it "198 - It's Evil!" do
    evil(198).must_equal("It's Evil!")
  end
end


