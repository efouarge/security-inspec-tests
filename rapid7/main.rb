### This Inspec test confirms that Rapid7 Service is installed and running

control 'Rapid7 Agent is Installed and running' do
  title 'R7 Agent Installed'
  desc 'Rapid 7 Agent is Installed and Running'
  impact 0.9
  require 'rbconfig'
  is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  if is_windows
    describe service('ir_agent') do
      it { should be_installed }
      it { should be_running }
    end
  end
end
i
