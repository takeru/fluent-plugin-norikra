# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-norikra"
  spec.version       = "0.2.1"
  spec.authors       = ["TAGOMORI Satoshi"]
  spec.email         = ["tagomoris@gmail.com"]
  spec.description   = %q{process events on fluentd with SQL like query, with built-in Norikra server if needed.}
  spec.summary       = %q{Fluentd plugin to do CEP with norikra}
  spec.homepage      = "https://github.com/norikra/fluent-plugin-norikra"
  spec.license       = "APLv2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "norikra-client", ">= 0.0.7"
  spec.add_runtime_dependency "fluentd"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
