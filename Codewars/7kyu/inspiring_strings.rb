=begin
Description:

When given a string of space separated words, return the word with the longest length. If there are multiple words with the longest length, return the last instance of the word with the longest length.

    Example:

    'red white blue' //returns string value of white

'red blue gold' //returns gold
=end

require 'minitest/autorun'

def longest_word(string_of_words)
  string_of_words.split.sort_by(&:size).last
end

def longest_word_v2(string_of_words)
  string_of_words.split(" ").sort_by(&:length).pop
end

def longest_word_v3(string_of_words)
  long_word = ""
  string_of_words.split(" ").each {|word| long_word = word if long_word.size <= word.size}
  long_word
end

describe "longest_word" do
  it "a b c d each" do
    longest_word('a b c d each').must_equal("each")
  end

  it "each step" do
    longest_word('each step').must_equal("step")
  end

  it "forward each step going" do
    longest_word('forward each step going').must_equal("forward")
  end

  it "brings each step going" do
    longest_word('brings each step going').must_equal("brings")
  end

  it "brings each opportunity step going" do
    longest_word('brings each opportunity step going').must_equal("opportunity")
  end
end