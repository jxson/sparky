require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "sparky"
    gem.summary = "What do you call a dog with no back legs and metal nuts?"
    gem.description = "Light it up sparky! Random text (lorem ipsum), numbers, and names that at least look real.."
    gem.email = "jason@greatergood.cc"
    gem.homepage = "http://github.com/jxson/sparky"
    gem.authors = ["Jason Campbell"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    # gem.files.include %w(lib/base.rb lib/lorem.rb)
    gem.files = FileList['lib/**/*.rb', 'lib/**/**/*.rb']
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "sparky #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
