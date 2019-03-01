lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Set gem version here.
Kernel.load 'lib/tesseract/version.rb'

Gem::Specification.new {|s|
	s.name     = 'tesseract-ocr'
	s.version  = Tesseract.version
	s.author   = 'meh.'
	s.email    = 'meh@schizofreni.co'
	s.homepage = 'http://github.com/meh/ruby-tesseract-ocr'
	s.platform = Gem::Platform::RUBY
	s.summary  = 'A wrapper library to the tesseract-ocr API.'
	s.license  = 'BSD'

	s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
	s.require_paths = ["lib"]

	s.add_dependency 'call-me'
	s.add_dependency 'iso-639'

	s.add_dependency 'ffi-extra'
	s.add_dependency 'ffi-inline'
}
