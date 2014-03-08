
require 'gtin'

module Gtin14
  # return a GTIN object from a string
  # @raises ArgumentError "Not a valid GTIN"
  def is_gtin?()
    Gtin.is_gtin?(self)
  end

  # return a GTIN object from a string
  # @raises ArgumentError "Not a valid GTIN"
  def to_gtin()
    Gtin.new(self)
  end
end

class String #:nodoc:
  include Gtin14
end
