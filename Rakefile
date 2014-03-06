#!/usr/bin/ruby

#require "bundler/gem_tasks"
require 'rake/testtask'

ENV['YARDOC']=`which yardoc`

# Run 'rake -T' to see list of generated tasks (from gem root directory)

task :doc do |t|
  if !File.exists?('.yardoc') || File.mtime('lib') > File.mtime('.yardoc')
    puts "building docs"
    `test -x $YARDOC && $YARDOC lib/ spec/`
  end
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['specs/spec_*.rb', 'test/*_test.rb']
  t.verbose = true
end

task :default => [] do |t|
  puts "done"
end

