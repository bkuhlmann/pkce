# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "pkce"
  spec.version = "0.0.0"
  spec.authors = ["Brooke Kuhlmann"]
  spec.email = ["brooke@alchemists.io"]
  spec.homepage = "https://www.alchemists.io/projects/pkce"
  spec.summary = "Encodes Proof Key for Code Exchange (PKCE) for OAuth."
  spec.license = "Hippocratic-2.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/bkuhlmann/pkce/issues",
    "changelog_uri" => "https://www.alchemists.io/projects/pkce/versions",
    "documentation_uri" => "https://www.alchemists.io/projects/pkce",
    "funding_uri" => "https://github.com/sponsors/bkuhlmann",
    "label" => "Pkce",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/bkuhlmann/pkce"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 3.1"
  spec.add_dependency "dry-monads", "~> 1.4"

  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.files = Dir["*.gemspec", "lib/**/*"]
end
