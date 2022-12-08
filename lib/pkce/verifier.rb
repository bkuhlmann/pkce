# frozen_string_literal: true

require "dry/monads"
require "securerandom"

module PKCE
  # Handles Proof Key for Code Exchange (PKCE) verification.
  class Verifier
    include Dry::Monads[:result]

    RANGE = 32..96
    MAX = RANGE.max

    def initialize range: RANGE, randomizer: SecureRandom
      @range = range
      @randomizer = randomizer
    end

    def call length: MAX
      if range.cover? length
        Success randomizer.urlsafe_base64(length)
      else
        Failure "Invalid PKCE verifier length: #{length}. Must be between #{range.inspect}."
      end
    end

    private

    attr_reader :range, :randomizer
  end
end
