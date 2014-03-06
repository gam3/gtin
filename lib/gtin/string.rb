
require 'gtin'

module Gtin14
  # return a GTIN object from a string
  # @attr [Fixnum] maximum size of the gtin
  # @raises ArgumentError "Not a valid GTIN"
  def is_gtin?(type = nil)
    Gtin.is_gtin?(self, type)
  end

  # return a GTIN object from a string
  # @attr [Fixnum] maximum size of the gtin
  # @raises ArgumentError "Not a valid GTIN"
  def to_gtin(size = nil)
    Gtin.new(self, size)
  end
end

class String #:nodoc:
  include Gtin14
end
