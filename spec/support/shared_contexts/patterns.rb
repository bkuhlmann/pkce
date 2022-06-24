# frozen_string_literal: true

RSpec.shared_context "with patterns" do
  let(:challenge_pattern) { /\A[\w\-+]{43}\z/ }
  let(:verify_pattern) { /\A[\w\-+]{58,}\z/ }
end
