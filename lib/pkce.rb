# frozen_string_literal: true

require "pkce/challenger"
require "pkce/code"
require "pkce/encoder"
require "pkce/verifier"

# Main namespace.
module PKCE
  def self.call(...) = Encoder.new.call(...)
end
