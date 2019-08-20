require 'rake'
require 'rspec'
require 'rspec/core/rake_task'
require 'ci/reporter/rake/rspec'
require 'open3'
require 'yaml'

# Set the report path for the ci_reporter test second change
def rspec_report_path
  'reports/rspec/'
end

task :pre_ci do
  ENV['CI_REPORTS'] = rspec_report_path
  gem 'ci_reporter'
  require 'ci/reporter/rake/rspec'
end

task :run_tests, :options do |t, args|
  # Always enable coverage - will trigger the starting of the SimpleCov monitor in the spec_helper.rb file
  ENV['COVERAGE'] = 'true'

  specific_spec_folder = ENV['SpecFolder']

  #set the spec options (tests with silvio tag are purely framework tests)
  RSpec::Core::RakeTask.new(:spec) do |task|
    # Jenkins based parameters that allow to only run certain tests via Jenkins
    unless specific_spec_folder.nil?
      puts "Executing rspec tests in #{specific_spec_folder} folder"
      task.pattern = "spec/#{specific_spec_folder}{,/*/**}/*_spec.rb"
    end
    task.rspec_opts = args[:options]

  end

  Rake::Task[:default].execute

end
