require 'rspec/core/rake_task'

namespace :spec do
  desc "Run all examples"
  RSpec::Core::RakeTask.new('all')

end
task :spec => 'spec:all'
task :default => :spec
