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
