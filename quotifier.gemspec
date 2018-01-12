Gem::Specification.new do |s|
    s.name        = 'quotifier'
    s.version     = '0.0.4'
    s.summary     = "Rack Middleware implementation of Quotifier by Famingo Labs Inc."
    s.description = "Rack Middleware that inserts random quotes into outbound html being served from any Rack webserver "
    s.authors     = ["Michel Chatmajian"]
    s.email       = 'chamich196@hotmail.com'
    s.files       = ["lib/quotifier.rb"]
    s.homepage    =
      'http://rubygems.org/gems/quotifier'
    s.license       = 'MIT'

  s.metadata = {
    "source_code_uri" => "https://github.com/almiche/quotifier_as_middleware",
    "changelog_uri"   => "https://github.com/almiche/quotifier_as_middleware/blob/master/CHANGELOG.md"
  }

  s.add_dependency 'json'
  s.add_dependency 'quotify'
  s.add_dependency 'faraday'


  end