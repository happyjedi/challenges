# The test fixture I use for this kata is pre-populated.
#
#     It will compare your guess to a random number generated using:
#
#                                                                 (Kernel::rand() * 100 + 1).floor
# You can pass by relying on luck or skill but try not to rely on luck.
#
#     "The power to define the situation is the ultimate power." - Jerry Rubin
#
# Good luck!

require 'minitest/autorun'

module Kernel
  def self.rand(max=0)
    return 0.09
  end
end
guess = 10

#########
#####
#
# guess = 10
# $lucky_number = 10

#####
# guess =

#######
# srand(1)
# guess = 42

#########
# Kernel::srand(2)
# guess = (Kernel::rand() * 100 + 1).floor
# Kernel::srand(2)

lucky_number = (Kernel::rand() * 100 + 1).floor

describe "guess" do
  it "the lucky_number" do
    guess.must_equal(lucky_number)
  end
end



