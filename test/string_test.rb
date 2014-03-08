
require 'gtin'
require 'test_helper'

class TestGcp < MiniTest::Unit::TestCase
  def setup
  end

#  9556555

  def test_gcp
    [
      "90073981323799",
      "05000111001007",
      "00884912113139",
      "00041820000252",
      "00001541500127",
      "00000360054026",
      "00000098213306",
      "00000001292060",
    ].each do |gtin|
      x = gtin.to_gtin.to_s
      assert_instance_of(String, x)
    end
  end
end
