Gem::Specification.new do |s|
  s.name = 'tyrone'
  s.version = "0.1.0"

  s.summary = 'Care the shit out of your UI.'
  s.author = 'Chris Lloyd'
  s.date = %q{2008-09-15}
  s.email = 'christopher.lloyd@gmail.com'
  s.files = ['deps.rip', 'Rakefile', 'README.md', 'lib/tyrone.rb']
  s.has_rdoc = false
  s.homepage = 'http://github.com/chrislloyd/tyrone'
  s.require_paths = ['lib']
  s.rubyforge_project = 'tyrone'

  s.add_dependency 'sinatra', '>= 0.9.4'
  s.add_dependency 'haml', '>= 2.2.2'
end
