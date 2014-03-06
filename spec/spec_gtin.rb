require "minitest/autorun"

require "gtin"

describe GTIN do
  describe '#initialize' do
    it "must take only one arguemt" do
      lambda { GTIN.new('00031149440211', '00021130124862') }.must_raise( ArgumentError )
    end
    it "must only accept valid GTINs" do
      lambda { GTIN.new('00031149440212') }.must_raise( ArgumentError, "Not a valid GTIN" )
    end
    it "must return a GTIN object" do
      GTIN.new('00031149440211').must_be_instance_of GTIN
    end
  end
  describe '#is_gtin?' do
    it "must take only one arguemt" do
      lambda { GTIN.is_gtin?('00031149440211', '00021130124862') }.must_raise( ArgumentError )
    end
    it "must recognize invalid GTINs" do
      GTIN.is_gtin?('00131149440212').must_equal(false)
    end
    it "must recognize valid GTINs" do
      GTIN.is_gtin?('00031149440211').must_equal(true)
    end
  end
end

