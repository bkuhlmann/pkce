# frozen_string_literal: true

require "pkce/challenger"
require "pkce/verifier"
require "pkce/code"
require "pkce/encoder"

# Main namespace.
module PKCE
  def self.call(...) = Encoder.new.call(...)
end
