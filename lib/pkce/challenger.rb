# frozen_string_literal: true

require "base64"
require "digest"

module PKCE
  # Handles Proof Key for Code Exchange (PKCE) challenge.
  class Challenger
    def initialize hasher: Digest::SHA256, encoder: Base64
      @hasher = hasher
      @encoder = encoder
    end

    def call(code) = encoder.urlsafe_encode64 hasher.digest(code), padding: false

    private

    attr_reader :hasher, :encoder
  end
end
