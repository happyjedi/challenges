=begin
Description:

The company you work for has just been awarded a contract to build a payment gateway.
In order to help move things along, you have volunteered to create a function that will
 take a float and return the amount formatting in dollars and cents.

39.99 becomes $39.99

The rest of your team will make sure that the argument is sanitized before being
 passed to your function although you will need to account for adding trailing zeros
 if they are missing (though you won't have to worry about a dangling period).

Examples:

3 needs to become $3.00

3.1 needs to become $3.10

=end

require 'minitest/autorun'

def format_money(amount)
  '$%.2f' % amount
end

def format_money_v2(amount)
  "$#{sprintf("%.2f", amount)}"
end

describe "Basic tests" do
  it "format_money(39.99)" do
    format_money(39.99).must_equal('$39.99')
  end
  it "format_money(39.90)" do
    format_money(39.90).must_equal('$39.90')
  end
  it "format_money(39)" do
    format_money(39).must_equal('$39.00')
  end
end


