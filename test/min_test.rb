
require 'gtin/string'
require 'test_helper'
require 'gtin/gcp'

class TestGcp < MiniTest::Unit::TestCase
  def setup
  end

#  9556555

  def test_gcp
    [
      [ "90073981323799", 14 ],
      [ "05000111001007", 13 ],
      [ "00884912113139", 12 ],
      [ "00041820000252", 12 ],
      [ "00001541500127", 12 ],
      [ "00000360054026", 12 ],
      [ "00000098213306",  8 ],
      [ "00000001292060",  8 ],
    ].each do |gtin|
      x = Gtin.new(gtin[0])
      assert_equal(x.min.size, gtin[1])
    end
  end
end
