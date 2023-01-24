# frozen_string_literal: true

module PKCE
  # Encodes Proof Key for Code Exchange (PKCE) codes for authorization.
  class Encoder
    def initialize code: Code, verifier: Verifier.new, challenger: Challenger.new
      @code = code
      @verifier = verifier
      @challenger = challenger
    end

    def call length: Verifier::MAX
      verifier.call(length:).fmap { |value| code[challenge: challenger.call(value), verify: value] }
    end

    private

    attr_reader :code, :verifier, :challenger
  end
end
