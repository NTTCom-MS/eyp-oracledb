require 'beaker-rspec'

install_puppet_agent_on hosts, {}

RSpec.configure do |c|
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
  module_name = module_root.split('-').last

  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    # Install module and dependencies
    puppet_module_install(:source => module_root, :module_name => module_name)
    hosts.each do |host|
      on host, puppet('module', 'install', 'puppetlabs-stdlib'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'puppetlabs-concat'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-eyplib'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-ntp'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-firewalld'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-tuned'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-grub2'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-chronyd'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-nscd'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-epel'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-selinux'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-pam'), { :acceptable_exit_codes => [0,1] }
      on host, puppet('module', 'install', 'eyp-sysctl'), { :acceptable_exit_codes => [0,1] }

    end
  end
end
