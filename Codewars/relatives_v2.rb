require 'minitest/autorun'

# https://www.quora.com/What-is-the-fastest-algorithm-to-find-all-possible-permutations-of-a-string
## https://stackoverflow.com/questions/8306654/finding-all-possible-permutations-of-a-given-string-in-python
class String
  def all_variants
    self.chars.to_a.permutation.map(&:join).uniq
  end
end

def file_to_hash
  hash = {}
  File.open('words.txt') do |fp|
    fp.each do |line|
      key = line.split("\n")[0]
      hash[key] ||= 0
      hash[key] += 1
    end
  end
  hash
end

def relatives_count(words_hash)
  relative_words = {}
  words_hash.each do |key, value|

    key_variants = key.to_str.all_variants

    key_variants.each do |key_variant|
      relative_words[key_variant] ||= value
      relative_words[key_variant] += 1 unless key_variant == key
    end
  end
  relative_words
end

def solution(word, relative_words)
  if relative_words.key?(word)
    relative_words[word]
  else
    0
  end
end

describe "Relatives" do
  before do
    words_hash = file_to_hash
    @relative_words = relatives_count(words_hash)
  end

  it "should find 3 entries for abba" do
    solution('abba', @relative_words).must_equal(3)
  end

  it "should find 1 entry for ddac" do
    solution('ddac', @relative_words).must_equal(1)
  end

end