# frozen_string_literal: true

module PKCE
  # Encapsulates the challenge and verify code.
  Code = Data.define :challenge, :verify
end
