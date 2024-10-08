# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'ast-tdl'
  spec.version       = '0.2.4'
  spec.license       = 'MIT'
  spec.authors       = %w[firefly-cpp luckyLukac]
  spec.email         = ['iztok@iztok-jr-fister.eu', 'luka.lukac@student.um.si']

  spec.summary       = 'An experimental and minimalistic Training Description Language for Artificial Sport Trainer'
  spec.homepage      = 'https://github.com/firefly-cpp/ast-tdl'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/firefly-cpp/ast-tdl'
  spec.metadata['changelog_uri'] = 'https://github.com/firefly-cpp/ast-tdl'

  spec.require_paths = ['lib']

  spec.add_runtime_dependency "ruby-enum", "~> 0.9.0"

  spec.files = [
    'LICENSE',
    'README.md',
    'lib/sport.rb',
    'lib/ast.rb',
    'lib/speed.rb',
    'lib/interval.rb',
    'lib/power.rb',
    'lib/series.rb',
    'lib/ast-tdl.rb'
  ]
end
