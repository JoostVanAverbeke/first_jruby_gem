require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
import './tasks/executor.rake'

task :default do
  [:pre_ci, 'ci:setup:rspec', :spec ].each do |task|
    Rake::Task[task].execute
  end
end
