# frozen_string_literal: true

require "spec_helper"

RSpec.describe PKCE::Verifier do
  subject(:verifier) { described_class.new }

  include_context "with patterns"

  describe "#call" do
    it "answers code with default length" do
      expect(verifier.call.success).to match(verify_pattern)
    end

    it "answers code with custom length" do
      expect(verifier.call(length: 64).success).to match(verify_pattern)
    end

    it "answers error with small length" do
      expect(verifier.call(length: 31)).to be_failure(
        "Invalid PKCE verifier length: 31. Must be between 32..96."
      )
    end

    it "answers error with large length" do
      expect(verifier.call(length: 97)).to be_failure(
        "Invalid PKCE verifier length: 97. Must be between 32..96."
      )
    end
  end
end
