require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task default: :spec

namespace :db do
  task :migrate do
    require_relative 'lib/lotus-todo/migrator'
    LotusTodo::Migrator.migrate!
  end
end
