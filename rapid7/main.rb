### This Inspec test confirms that Rapid7 Service is installed and running

describe service('ir_agent') do
  it { should be_installed }
  it { should be_running }
end
