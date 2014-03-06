module Gtin14
  # Holds the current version number
  VERSION = '0.0.3'
end

require 'gtin/gcp.rb'

class Gtin
  # Holds the current version number of the +Gtin+ class
  VERSION = Gtin14::VERSION

  VALID_SIZES = {
    8 => true,
    12 => true,
    13 => true,
    14 => true,
  }

  # @param [String] gtin
  # @raises ArgumentError "Not a valid GTIN"
  def initialize(gtin, size = nil)
    @gtin = gtin
    raise ArgumentError.new("Not a valid GTIN: #{gtin}") unless is_gtin?
  end

  def self.gtin_valid_checksum?(gtin)
    number = gtin.reverse
    odd = even = 0
    
    (1..number.length-1).each do |i|
      if i.even?
        even += number[i].to_i
      else
        odd += number[i].to_i
      end
    end
    0 == (number[0].to_i + (odd * 3) + even) % 10
  end

  def gtin_valid_checksum?
    Gtin.gtin_valid_checksum? @gtin
  end

  def gcp
    Gcp.get_gcp(self)
  end

  def self.is_gtin?(gtin, size=nil)
    VALID_SIZES[gtin.size] && gtin.match(/^[\d-]+$/) and Gtin.gtin_valid_checksum?(gtin)
  end

  def is_gtin?()
    Gtin.is_gtin?(@gtin)
  end

  def min()
    x = @gtin
    while x[0] == '0' and x.size > 8
      x = x[1..-1]
    end
    while !VALID_SIZES[x.size]
      x = '0' + x
    end
    x
  end

  def to_s
    @gtin
  end
end

