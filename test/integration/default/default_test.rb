# # encoding: utf-8

# Inspec test for recipe googlechrome::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

return unless os.windows?

describe file('C:\Program Files (x86)\Google\Chrome\Application\chrome.exe') do
  it { should exist }
  its('type') { should cmp 'file' }
end
