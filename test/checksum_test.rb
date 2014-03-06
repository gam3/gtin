require File.dirname(__FILE__) + '/test_helper.rb'

require 'gtin/string'

class TestChecksum < MiniTest::Unit::TestCase
  def setup
  end
  
  def test_checksum
    assert '00031149440211'.is_gtin?
    assert '00088767090502'.is_gtin?
    assert '00088767090533'.is_gtin?
    assert '00031149430144'.is_gtin?
    assert '00083041161015'.is_gtin?
    assert '00070097681086'.is_gtin?
    assert '00033799009947'.is_gtin?
    assert '00037838222038'.is_gtin?
    assert '00073658006359'.is_gtin?
    assert '00381370030010'.is_gtin?
  end
  
end
