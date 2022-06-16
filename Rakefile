# frozen_string_literal: true

require 'rake/testtask'
require 'bundler/gem_tasks'
task default: %i[]

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end
