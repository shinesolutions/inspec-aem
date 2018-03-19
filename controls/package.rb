control 'aem-package-imported' do
  impact 1.0
  title 'Check if AEM Package is imported'
  desc 'Check if AEM PAckage is imported'
  describe aem do
    it { should have_package_imported(package_group, package_name, package_datestamp, component) }
  end
end

control 'aem-package-imported' do
  impact 1.0
  title 'Check if AEM Package is not imported'
  desc 'Check if AEM PAckage is not imported'
  describe aem do
    it { should have_package_not_imported(package_group, package_name, package_datestamp, component) }
  end
end

control 'aem-package-installed' do
  impact 1.0
  title 'Check if AEM Package is installed'
  desc 'Check if AEM PAckage is installed'
  describe aem do
    it { should have_package_installed(group, name, version) }
  end
end

control 'aem-package-not-installed' do
  impact 1.0
  title 'Check if AEM Package is not installed'
  desc 'Check if AEM PAckage is not installed'
  describe aem do
    it { should have_package_installed(group, name, version) }
  end
end
