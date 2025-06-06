# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "pkce"
  spec.version = "3.2.1"
  spec.authors = ["Brooke Kuhlmann"]
  spec.email = ["brooke@alchemists.io"]
  spec.homepage = "https://alchemists.io/projects/pkce"
  spec.summary = "An OAuth Proof Key for Code Exchange (PKCE) challenge and code verifier."
  spec.license = "Hippocratic-2.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/bkuhlmann/pkce/issues",
    "changelog_uri" => "https://alchemists.io/projects/pkce/versions",
    "homepage_uri" => "https://alchemists.io/projects/pkce",
    "funding_uri" => "https://github.com/sponsors/bkuhlmann",
    "label" => "PKCE",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/bkuhlmann/pkce"
  }

  spec.post_install_message = <<~MESSAGE
    DEPRECATION: The PKCE gem is deprecated and will be fully destroyed on 2026-06-15.
  MESSAGE

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 3.4"
  spec.add_dependency "base64", "~> 0.1"
  spec.add_dependency "dry-monads", "~> 1.8"

  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.files = Dir["*.gemspec", "lib/**/*"]
end
