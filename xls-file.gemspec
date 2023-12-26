# frozen_string_literal: true

require_relative "lib/xls/file/version"

Gem::Specification.new do |spec|
  spec.name = "xls-file"
  spec.version = Xls::File::VERSION
  spec.authors = ["Rajnish mishra"]
  spec.email = ["rajnish.mishra@jarvis.consulting"]

  spec.summary = "Generate xls file with data and header"
  spec.description = "No need to write logic to generate xls simply pass data and header and get your xls"
  spec.homepage = "https://rajnishmishra.dev/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = "https://github.com/rajnish-jarvis/xls-file"
  spec.metadata["source_code_uri"] = "https://github.com/rajnish-jarvis/xls-file"
  spec.metadata["changelog_uri"] = "https://github.com/rajnish-jarvis/xls-file"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'caxlsx', '~> 3.0'
  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
