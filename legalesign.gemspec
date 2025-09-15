# frozen_string_literal: true

require_relative "lib/legalesign/version"

Gem::Specification.new do |s|
  s.name = "legalesign"
  s.version = Legalesign::VERSION
  s.summary = "Ruby library to access the Legalesign API"
  s.authors = ["Legalesign"]
  s.email = "support@legalesign.com"
  s.homepage = "https://gemdocs.org/gems/legalesign"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/legalesign-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
