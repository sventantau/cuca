require 'rubygems'

SPEC = Gem::Specification.new do |s|

 s.name		= 'cuca'
 s.version	= '0.11'
 s.author	= 'Martin Boese'
 s.email	= 'boesemar@gmx.de'
 s.rubyforge_project = 'cuca'
 s.homepage	= 'http://cuca.rubyforge.org/'
 s.platform	= Gem::Platform::RUBY
 s.summary	= 'A widget-based web framework'
 s.description = <<-EOD
Cuca is a light web development framework that supports CGI and FastCGI. It has 
a widget-bases approach to reuse functionality and does not stricktly implement an MVC architecture, 
although possible. Content can be generated directly by the controller with the help of external 
widgets that can generate code using markaby, eruby or any other user implemented 'generator'. It 
supports pretty URL's, layouts, sessions and the rendering of 'partials'.
 EOD
 candidates	= Dir.glob("{bin,lib,tests,application_skeleton}/**/*")
 s.files	= candidates.delete_if { |item| item.include?(".svn") || item.include?("~") }
 s.bindir       = 'bin'
 s.executables  = ['cuca']
 s.require_path	= 'lib'
# s.autorequire	= 'cuca'
 s.has_rdoc	= true
 s.rdoc_options  << '--main' << 'README'
 s.extra_rdoc_files = %w{CHANGELOG README.md}
 s.add_dependency('markaby', '>=0.5')
#  s.add_dependency('fcgi', '>=0.8.7')
end
 