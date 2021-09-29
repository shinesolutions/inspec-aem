# frozen_string_literal: true

# Copyright 2018-2021 Shine Solutions Group
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require_relative './helper'

# Aem class contains checks for AEM instance resource
class Aem < Inspec.resource(1)
  name 'aem'

  desc "
    Custom resource for AEM instance
  "

  def initialize
    conf = read_config
    @client = init_aem_client(conf)

    @params = {}
  end

  def has_login_page?
    result = @client.aem.get_login_page_wait_until_ready(
      _retries:
      {
        max_tries: '60',
        base_sleep_seconds: '2',
        max_sleep_seconds: '2'
      }
    )
    return false unless result.message.eql? 'Login page retrieved'
  end

  def has_no_login_page?
    result = @client.aem.get_login_page
    return true unless result.message.eql? 'Login page retrieved'
  end

  def has_crxde_enabled?
    result = @client.aem.get_crxde_status
    result.data == true
  end

  def has_crxde_disabled?
    result = @client.aem.get_crxde_status
    result.data == false
  end

  def has_development_bundles_enabled?
    result = @client.aem.get_development_bundles_status
    result.data == true && result.message == 'Development bundles are all active'
  end

  def has_development_bundles_disabled?
    result = @client.aem.get_development_bundles_status
    result.data == false && result.message == 'Development bundles are all inactive'
  end

  def has_development_bundles_partially_enabled?
    result = @client.aem.get_development_bundles_status
    result.data == false && result.message.start_with? 'Development bundles are partially active'
  end

  def has_saml_enabled?
    result = @client.saml.get

    saml_properties = result.response.body.properties

    saml_properties.idp_cert_alias.is_set == true
  end

  def has_saml_disabled?
    result = @client.saml.get

    saml_properties = result.response.body.properties

    saml_properties.idp_cert_alias.is_set == false
  end

  def has_aem_version_installed?(version)
    result = @client.aem.get_product_info
    installed_version = result.data[6].strip
    return true if installed_version == "Adobe Experience Manager (#{version})"
  end
end
