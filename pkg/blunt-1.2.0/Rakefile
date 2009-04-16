# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'blunt'

task :default => 'spec:run'

PROJ.name = 'blunt'
PROJ.authors = 'Jamie Brough'
PROJ.email = 'jbrough@homeaway.com'
PROJ.url = ''
PROJ.version = Blunt::VERSION
PROJ.rubyforge.name = 'blunt'

PROJ.spec.opts << '--color'

# EOF
