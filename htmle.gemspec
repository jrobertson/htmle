Gem::Specification.new do |s|
  s.name = 'htmle'
  s.version = '0.1.5'
  s.summary = '*Experimental gem under development* Htmle (HTML + Domle) is an implementation of an HTML Document Object Model'
  s.authors = ['James Robertson']
  s.files = Dir['lib/htmle.rb']
  s.add_runtime_dependency('domle', '~> 0.1', '>=0.1.0')
  s.signing_key = '../privatekeys/htmle.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/htmle'
end
