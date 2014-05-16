# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'casino/test_authenticator/version'

Gem::Specification.new do |s|
  s.name        = 'casino-test_authenticator'
  s.version     = CASino::TestAuthenticator::VERSION
  s.authors     = ['Andrew Beresford']
  s.email       = ['beezly@beezly.org.uk']
  s.homepage    = 'http://github.com/beezly/casino-test_authenticator/'
  s.license     = 'MIT'
  s.summary     = 'Provides a basic test authenticator for CASino.'
  s.description = 'This gem can be used to allow the CASino backend to authenticate without any backend services.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 2.12'
  s.add_development_dependency 'simplecov', '~> 0.7'
  s.add_development_dependency 'coveralls', '~> 0'

  s.add_runtime_dependency 'casino', '~> 2.0'
  s.add_runtime_dependency 'faker', '~> 0'
end
