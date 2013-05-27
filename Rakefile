#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts "you must `gem install bundler` and `bundle install` to run rake tasks"
end

require 'bundler/gem_tasks'
require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Thorax-rails'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end

task :default => :test

namespace :thorax do
  desc "Download the latest releases of backbone, underscore and thorax"
  task :download_latest do
    files = {
      'undercore.js' => 'http://underscorejs.org/underscore.js',
      'backbone.js'  => 'http://backbonejs.org/backbone.js',
      'handlebars.js' => 'https://raw.github.com/wycats/handlebars.js/master/lib/handlebars.js'

    }
    vendor_dir = "vendor/assets/javascripts"

    require 'open-uri'
    files.each do |local, remote|
      puts "Downloading #{local} from #{remote}"
      File.open "#{vendor_dir}/#{local}", 'w' do |f|
        f.write open(remote).read
      end
    end
  end
end

