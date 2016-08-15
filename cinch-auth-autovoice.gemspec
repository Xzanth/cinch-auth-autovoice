Gem::Specification.new do |gem|
  gem.name          = "cinch-auth-autovoice"
  gem.version       = "0.0.1"
  gem.authors       = ["Jonas Osborn"]
  gem.description   = "Cinch plugin that automatically voices all users in"\
  " specified channels that are authed"
  gem.summary       = "Autovoices all authed users"
  gem.homepage      = "https://github.com/Xzanth/cinch-auth-autovoice"
  gem.license       = "GPL-3.0"
  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.require_paths = ["lib"]

  gem.add_dependency("cinch", "~> 2.3.2")
end
