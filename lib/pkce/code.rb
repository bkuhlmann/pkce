# frozen_string_literal: true

module PKCE
  # Encapsulates the challenge and verify code.
  Code = Struct.new :challenge, :verify, keyword_init: true do
    def initialize *arguments
      super
      freeze
    end
  end
end
