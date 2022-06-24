# frozen_string_literal: true

require "spec_helper"

RSpec.describe PKCE do
  include_context "with patterns"

  describe ".call" do
    it "answers code when success" do
      expect(described_class.call.success).to have_attributes(
        challenge: challenge_pattern,
        verify: verify_pattern
      )
    end

    it "answers error when failure" do
      expect(described_class.call(length: 666).failure).to eq(
        "Invalid PKCE verifier length: 666. Must be between 32..96."
      )
    end
  end
end
