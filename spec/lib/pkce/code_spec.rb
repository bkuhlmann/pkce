# frozen_string_literal: true

require "spec_helper"

RSpec.describe PKCE::Code do
  subject(:code) { described_class.new }

  describe "#initialize" do
    it "answers a frozen instance by default" do
      expect(code.frozen?).to be(true)
    end
  end
end
