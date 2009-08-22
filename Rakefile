require 'mg'
require 'lib/tyrone'

mg = MG.new('tyrone.gemspec')

tyrone_version = Tyrone.version
gemspec_version = mg.spec.version.to_s

unless tyrone_version == gemspec_version
  raise "Version mismatch: #{tyrone_version} (Tyrone) - #{gemspec_version} (gemspec)"
end
