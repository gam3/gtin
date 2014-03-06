
require File.dirname(__FILE__) + '/test_helper.rb'

require 'gtin/string'
require 'gtin/gcp'

class TestGcp < MiniTest::Unit::TestCase
  def setup
  end

#  9556555

  def test_gcp
    [
      "9556555000176",
      "10050000350107",
      "90073981323379",
      "00014106",
      "10001158",
      "98213306",
      "50457250",
      "69520167",
      "98213306",
      "0000102048870",
      "0000254901771",
      "0000463999002",
    ].each do |gtin|
      assert gtin.is_gtin?
      #puts gtin.size
      #gtin = gtin.to_gtin
      #puts "XXX"
      #puts gtin.gcp
    end
  end
end
