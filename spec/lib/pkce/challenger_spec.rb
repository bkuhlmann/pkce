# frozen_string_literal: true

require "spec_helper"
require "securerandom"

RSpec.describe PKCE::Challenger do
  subject(:challenger) { described_class.new }

  include_context "with patterns"

  describe "#call" do
    it "answers smallish code" do
      code = SecureRandom.urlsafe_base64 50
      expect(challenger.call(code)).to match(challenge_pattern)
    end

    it "answers longish code" do
      code = SecureRandom.urlsafe_base64 100
      expect(challenger.call(code)).to match(challenge_pattern)
    end
  end
end
