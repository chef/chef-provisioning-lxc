$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/lxc_driver/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning-lxc'
  s.version = Chef::Provisioning::LXCDriver::VERSION
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ['README.md', 'LICENSE' ]
  s.summary = 'Provisioner for creating LXC containers in Chef Provisioning.'
  s.description = s.summary
  s.author = 'Ranjib Dey'
  s.email = 'dey.ranjib@gmail.com'
  s.homepage = 'https://github.com/chef/chef-provisioning-lxc'

  s.add_dependency 'chef-provisioning', '>= 1.0', '< 3.0'
  s.add_dependency 'lxc-extra', '~> 0.0', '>= 0.0.3'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'github_changelog_generator'

  s.bindir       = "bin"
  s.executables  = %w( )

  s.require_path = 'lib'
  s.files = %w(Gemfile Rakefile LICENSE README.md) + Dir.glob("*.gemspec") +
      Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
