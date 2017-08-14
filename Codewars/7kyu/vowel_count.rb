=begin
Description:

Return the number (count) of vowels in the given string.

We will consider a, e, i, o, and u as vowels for this Kata.
=end

require 'minitest/autorun'

def getCount(inputStr)
  inputStr.downcase.count('aeiou')
end

def getCount_v2(inputStr)
  inputStr.scan(/[aeiou]/i).size
end

def getCount_v3(inputStr)
  inputStr.size - inputStr.gsub(/[aeiou]/, '').size
end

def longest_word(string_of_words)
  long_word = ""
  string_of_words.split(" ").each {|word| long_word = word if long_word.size <= word.size}
  long_word
end

describe "getCount" do
  it "abracadabra" do
    getCount("abracadabra").must_equal(5)
  end
end