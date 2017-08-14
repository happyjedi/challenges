=begin
Description

This time no story, no theory. The examples below show you how to write function accum:

Examples:

accum("abcd")    # "A-Bb-Ccc-Dddd"
accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt")    # "C-Ww-Aaa-Tttt"
The parameter of accum is a string which includes only letters from a..z and A..Z.

=end
require 'minitest/autorun'

def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end

describe "Accum" do
  it "ZpglnRxqenU" do
    accum("ZpglnRxqenU").must_equal("Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu")
  end

  it "NyffsGeyylB" do
    accum("NyffsGeyylB").must_equal("N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb")
  end

  it "MjtkuBovqrU" do
    accum("MjtkuBovqrU").must_equal("M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu")
  end

  it "EvidjUnokmM" do
    accum("EvidjUnokmM").must_equal("E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm")
  end

  it "HbideVbxncC" do
    accum("HbideVbxncC").must_equal("H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc")
  end
end
