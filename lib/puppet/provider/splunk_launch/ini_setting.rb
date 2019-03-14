Puppet::Type.type(:splunk_launch).provide(
  :ini_setting,
  parent: Puppet::Type.type(:ini_setting).provider(:splunk)
) do
  def self.file_name
    'launch.conf'
  end

  def file_path
    file_name = self.class.file_name
    File.join(self.class.file_path, file_name)
  end
end
