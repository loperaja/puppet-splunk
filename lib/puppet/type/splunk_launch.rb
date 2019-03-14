require File.join(File.dirname(__FILE__), '..', '..', 'puppet_x/puppetlabs/splunk/type')

Puppet::Type.newtype(:splunk_launch) do
  @doc = 'Manage splunk launch settings from splunk-launch.conf'
  PuppetX::Puppetlabs::Splunk::Type.clone_type(self)
end
