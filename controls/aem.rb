control 'aem-crxde-enabled' do
  impact 1.0
  desc 'Check AEM CRXDE is enabled'
  describe aem do
    it { should have_crxde_enabled }
  end
end

control 'aem-crxde-disabled' do
  impact 1.0
  desc 'Check AEM CRXDE is disabled'
  describe aem do
    it { should have_crxde_disabled }
  end
end
