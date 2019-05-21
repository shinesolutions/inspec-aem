# frozen_string_literal: true

control 'aem-crxde-enabled' do
  impact 1.0
  title 'Check AEM CRXDE is enabled'
  desc 'Check AEM CRXDE is enabled'
  describe aem do
    it { should have_crxde_enabled }
  end
end

control 'aem-crxde-disabled' do
  impact 1.0
  title 'Check AEM CRXDE is disabled'
  desc 'Check AEM CRXDE is disabled'
  describe aem do
    it { should have_crxde_disabled }
  end
end

control 'aem-login-page-avaiable' do
  impact 1.0
  title 'Check if AEM login page is available'
  desc 'Check if AEM login page is available'
  describe aem do
    it { should have_login_page }
  end
end

control 'aem-login-page-not-avaiable' do
  impact 1.0
  title 'Check if AEM login page is not available'
  desc 'Check if AEM login page is not available'
  describe aem do
    it { should have_no_login_page }
  end
end

control 'author-aem-6.2-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Author AEM 6.2.0 standalone quickstart file exists'
  desc 'Check if Author AEM 6.2.0 standalone quickstart file exists'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.2.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'author-aem-6.3-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Author AEM 6.3.0 standalone quickstart file exists'
  desc 'Check if Author AEM 6.3.0 standalone quickstart file exists'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.3.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'author-aem-6.4-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Author AEM 6.4.0 standalone quickstart file exists'
  desc 'Check if Author AEM 6.4.0 standalone quickstart file exists'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.4.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'author-aem-6.5-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Author AEM 6.5.0 standalone quickstart file exists'
  desc 'Check if Author AEM 6.5.0 standalone quickstart file exists'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.5.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'author-aem-6.2-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Author AEM 6.2.0 standalone quickstart file dont exist'
  desc 'Check if Author AEM 6.2.0 standalone quickstart file dont exist'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.2.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'author-aem-6.3-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Author AEM 6.3.0 standalone quickstart file dont exist'
  desc 'Check if Author AEM 6.3.0 standalone quickstart file dont exist'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.3.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'author-aem-6.4-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Author AEM 6.4.0 standalone quickstart file dont exist'
  desc 'Check if Author AEM 6.4.0 standalone quickstart file dont exist'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.4.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'author-aem-6.5-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Author AEM 6.5.0 standalone quickstart file dont exist'
  desc 'Check if Author AEM 6.5.0 standalone quickstart file dont exist'
  describe file('/opt/aem/author/crx-quickstart/app/cq-quickstart-6.5.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'publish-aem-6.2-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.2.0 standalone quickstart file exists'
  desc 'Check if Publish AEM 6.2.0 standalone quickstart file exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.2.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'publish-aem-6.3-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.3.0 standalone quickstart file exists'
  desc 'Check if Publish AEM 6.3.0 standalone quickstart file exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.3.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'publish-aem-6.4-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.4.0 standalone quickstart file exists'
  desc 'Check if Publish AEM 6.4.0 standalone quickstart file exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.4.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'publish-aem-6.5-standalone-quickstart-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.5.0 standalone quickstart file exists'
  desc 'Check if Publish AEM 6.5.0 standalone quickstart file exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.5.0-standalone-quickstart.jar') do
    it { should exist }
    it { should be_file }
  end
end

control 'publish-aem-6.2-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.2.0 standalone quickstart file dont exists'
  desc 'Check if Publish AEM 6.2.0 standalone quickstart file edont xists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.2.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'publish-aem-6.3-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.3.0 standalone quickstart file dont exists'
  desc 'Check if Publish AEM 6.3.0 standalone quickstart file dont exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.3.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'publish-aem-6.4-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.4.0 standalone quickstart file dont exists'
  desc 'Check if Publish AEM 6.4.0 standalone quickstart file dont exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.4.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'publish-aem-6.5-standalone-quickstart-dont-exist' do
  impact 1.0
  title 'Check if Publish AEM 6.5.0 standalone quickstart file dont exists'
  desc 'Check if Publish AEM 6.5.0 standalone quickstart file dont exists'
  describe file('/opt/aem/publish/crx-quickstart/app/cq-quickstart-6.5.0-standalone-quickstart.jar') do
    it { should_not exist }
  end
end

control 'author-repo-migration-upgrade-log' do
  impact 1.0
  title 'Check if Author repository migration was successful'
  desc 'Check if Author repository migration was successful'
  describe file('/opt/aem/author/crx-quickstart/logs/upgrade.log') do
    it { should exist }
    it { should be_file }
    its('content') { should match(/migration completed/) }
    its('content') { should_not match(/\*WARN\*/) }
    its('content') { should_not match(/\*ERROR\*/) }
  end
end

control 'publish-repo-migration-upgrade-log' do
  impact 1.0
  title 'Check if Publish repository migration was successful'
  desc 'Check if Publish repository migration was successful'
  describe file('/opt/aem/publish/crx-quickstart/logs/upgrade.log') do
    it { should exist }
    it { should be_file }
    its('content') { should match(/migration completed/) }
    its('content') { should_not match(/\*WARN\*/) }
    its('content') { should_not match(/\*ERROR\*/) }
  end
end

control 'aem-author-succesfully-upgraded' do
  impact 1.0
  title 'Check if AEM Upgrade for Author was successful'
  desc 'Check if AEM Upgrade for Author was successful'
  describe file('/opt/aem/author/crx-quickstart/logs/upgrade.log') do
    it { should exist }
    it { should be_file }
    its('content') { should match(/UPGRADE TASK DONE/) }
    its('content') { should match(/UPGRADE FINISHED\:/) }
    its('content') { should_not match(/\*ERROR\*/) }
  end
end

control 'aem-publish-succesfully-upgraded' do
  impact 1.0
  title 'Check if AEM Upgrade for Publish was successful'
  desc 'Check if AEM Upgrade for Publish was successful'
  describe file('/opt/aem/publish/crx-quickstart/logs/upgrade.log') do
    it { should exist }
    it { should be_file }
    its('content') { should match(/UPGRADE TASK DONE/) }
    its('content') { should match(/UPGRADE FINISHED\:/) }
    its('content') { should_not match(/\*ERROR\*/) }
  end
end

control 'aem-6.2.0-version-installed' do
  impact 1.0
  title 'Check if AEM 6.2.0 is installed'
  desc 'Check if AEM 6.2.0 is installed'
  describe aem do
    it { should have_aem_version_installed('6.2.0') }
  end
end

control 'aem-6.2.0.SP1-CFP15-version-installed' do
  impact 1.0
  title 'Check if AEM 6.2.0 is installed'
  desc 'Check if AEM 6.2.0 is installed'
  describe aem do
    it { should have_aem_version_installed('6.2.0.SP1-CFP15') }
  end
end

control 'aem-6.3.0-version-installed' do
  impact 1.0
  title 'Check if AEM 6.3.0 is installed'
  desc 'Check if AEM 6.3.0 is installed'
  describe aem do
    it { should have_aem_version_installed('6.3.0') }
  end
end

control 'aem-6.4.0-version-installed' do
  impact 1.0
  title 'Check if AEM 6.4.0 is installed'
  desc 'Check if AEM 6.4.0 is installed'
  describe aem do
    it { should have_aem_version_installed('6.4.0') }
  end
end

control 'aem-6.5.0-version-installed' do
  impact 1.0
  title 'Check if AEM 6.5.0 is installed'
  desc 'Check if AEM 6.5.0 is installed'
  describe aem do
    it { should have_aem_version_installed('6.5.0') }
  end
end
