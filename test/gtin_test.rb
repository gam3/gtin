require 'test_helper.rb'

require 'gtin'

class TestGtin < MiniTest::Unit::TestCase
  def setup
  end
  
  def test_checksum
    assert_equal(false, Gtin.gtin_valid_checksum?('0006038398506'))
  end
  
end
