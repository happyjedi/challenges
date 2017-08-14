=begin
Description:

Remove a exclamation mark from the end of string. For a beginner kata, you can
assume that the input data is always a string, no need to verify it.

Examples

remove("Hi!") === "Hi"
remove("Hi!!!") === "Hi!!"
remove("!Hi") === "!Hi"
remove("!Hi!") === "!Hi"
remove("Hi! Hi!") === "Hi! Hi"
remove("Hi") === "Hi"

=end

require 'minitest/autorun'

def remove(s)
  s.chomp('!')
end

def remove_v2(s)
  s.gsub(/\!$/, '')  ## if needs to delete all last exclamation marks - s.gsub(/\!+$/, '')
end

describe "Remove exclamation mark" do
  it "from Hi!!" do
    remove("Hi!!").must_equal("Hi!")
  end
  it "from Hi!! Hi!" do
    remove("Hi!! Hi!").must_equal("Hi!! Hi")
  end
end

