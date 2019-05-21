# frozen_string_literal: true

control 'aem-package-imported' do
  impact 1.0
  title 'Check if AEM Package is imported'
  desc 'Check if AEM PAckage is imported'
  describe package do
    it { should have_package_imported }
  end
end

control 'aem-package-not-imported' do
  impact 1.0
  title 'Check if AEM Package is not imported'
  desc 'Check if AEM PAckage is not imported'
  describe package do
    it { should have_package_not_imported }
  end
end

control 'aem-package-installed' do
  impact 1.0
  title 'Check if AEM Package is installed'
  desc 'Check if AEM PAckage is installed'
  describe package do
    it { should have_package_installed }
  end
end

control 'aem-package-not-installed' do
  impact 1.0
  title 'Check if AEM Package is not installed'
  desc 'Check if AEM PAckage is not installed'
  describe package do
    it { should have_package_not_installed }
  end
end
