Gem::Specification.new do |s|
  s.name = 'tyrone'
  s.version = "0.2.1"

  s.summary = 'care the shit out of your ui'
  s.author = 'Chris Lloyd'
  s.email = 'christopher.lloyd@gmail.com'
  s.files = ['deps.rip', 'Rakefile', 'README.md', 'lib/tyrone.rb', 'bin/tyrone', 'templates/config.ru.erb', 'templates/reset.sass.erb', 'templates/sinatra.rb.erb']
  s.has_rdoc = false
  s.homepage = 'http://github.com/chrislloyd/tyrone'
  s.require_paths = ['lib']
  s.rubyforge_project = 'tyrone'
  s.executable = 'tyrone'

  s.add_dependency 'sinatra', '>= 0.9.4'
  s.add_dependency 'haml', '>= 2.2.2'
  s.add_dependency 'pixii', '>= 0.1.0'
end
