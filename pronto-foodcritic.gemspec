# -*- encoding: utf-8 -*-

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'English'
require 'pronto/foodcritic/version'

Gem::Specification.new do |s|
  s.name = 'pronto-foodcritic'
  s.version = Pronto::FoodCriticVersion::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = 'Mindaugas Mozūras'
  s.email = 'mindaugas.mozuras@gmail.com'
  s.homepage = 'http://github.com/mmozuras/pronto-foodcritic'
  s.summary = 'Pronto runner for Food Critic, lint tool for chef'

  s.licenses = ['MIT']
  s.required_ruby_version = '>= 2.2.0'
  s.rubygems_version = '1.8.23'

  s.files = `git ls-files`.split($RS).reject do |file|
    file =~ %r{^(?:
    spec/.*
    |Gemfile
    |Rakefile
    |\.rspec
    |\.gitignore
    |\.rubocop.yml
    |\.travis.yml
    )$}x
  end
  s.test_files = []
  s.extra_rdoc_files = ['LICENSE', 'README.md']
  s.require_paths = ['lib']

  s.add_dependency('foodcritic', '~> 10', '>= 10.0.0')
  s.add_dependency('pronto', '~> 0.8.0')
  s.add_development_dependency('rake', '~> 12.0')
  s.add_development_dependency('rspec', '~> 3.4')
  s.add_development_dependency('rspec-its', '~> 1.2')
end
