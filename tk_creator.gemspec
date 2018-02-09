
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tk_creator/version"

Gem::Specification.new do |spec|
  spec.name          = "tk_creator"
  spec.version       = TkCreator::VERSION
  spec.authors       = ["ZhengXianda0512"]
  spec.email         = ["zhengxianda0512@gmail.com"]

  spec.summary       = %q{Code creator.}
  spec.description   = %q{Create code from .tk file and templet.}
  spec.homepage      = "https://github.com/ZhengXianda0512/TKCreator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
