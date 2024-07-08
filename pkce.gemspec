# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "pkce"
  spec.version = "2.4.0"
  spec.authors = ["Brooke Kuhlmann"]
  spec.email = ["brooke@alchemists.io"]
  spec.homepage = "https://alchemists.io/projects/pkce"
  spec.summary = "An OAuth Proof Key for Code Exchange (PKCE) challenge and code verifier."
  spec.license = "Hippocratic-2.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/bkuhlmann/pkce/issues",
    "changelog_uri" => "https://alchemists.io/projects/pkce/versions",
    "documentation_uri" => "https://alchemists.io/projects/pkce",
    "funding_uri" => "https://github.com/sponsors/bkuhlmann",
    "label" => "PKCE",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/bkuhlmann/pkce"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 3.3"
  spec.add_dependency "dry-monads", "~> 1.6"

  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.files = Dir["*.gemspec", "lib/**/*"]
end
