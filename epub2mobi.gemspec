# frozen_string_literal: true

require_relative "lib/epub2mobi/version"

Gem::Specification.new do |spec|
  spec.name = "epub2mobi"
  spec.version = Epub2mobi::VERSION
  spec.authors = ["Daniel Vinciguerra"]
  spec.email = ["daniel.vinciguerra@bivee.com.br"]

  spec.summary = "Convert epub to mobi using calibre-ebook ebook-convert cli tool"
  spec.description = spec.summary
  spec.homepage = "https://github.com/dvinciguerra/epub2mobi"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
