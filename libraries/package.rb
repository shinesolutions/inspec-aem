# Copyright 2018 Shine Solutions
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

# Package class contains checks for AEM package resource
class Package < Inspec.resource(1)
  name 'package'

  desc "
    Custom resource for AEM package
  "

  def initialize(group_name, package_name, package_version)
    conf = read_config
    @client = init_aem_client(conf)

    params = {}
    %w[username password protocol host port debug timeout].each { |field|
      env_field = format('aem_%<field>s', field: field)
      if !ENV[env_field].nil?
        params[field.to_sym] = ENV[env_field]
      elsif !config.nil? && !config[field.to_sym].nil?
        params[field.to_sym] = config[field.to_sym]
      end
      return params
    }

    @params = {
      package_group: ENV[package_group],
      package_name: ENV[package_name],
      package_version: ENV[package_version]
    }
  end

  def has_package_imported?
    package = @client.package(@params[:package_group], @params[:package_name], @params[:package_version])
    result = package.is_uploaded
    return false unless result.message.eql? "Package #{group_name}/#{package_name}-#{package_version} is uploaded"
  end

  def has_package_not_imported?
    package = @client.package(@params[:package_group], @params[:package_name], @params[:package_version])
    result = package.is_uploaded
    return false unless result.message.eql? "Package #{group_name}/#{package_name}-#{package_version} is not uploaded"
  end

  def has_package_installed?
    package = @client.package(@params[:group_name], @params[:package_name], @params[:package_version])
    result = package.exists
    return false unless result.message.eql? "Package #{group_name}/#{package_name}-#{package_version} exist"
  end

  def has_package_not_installed?
    package = @client.package(@params[:group_name], @params[:package_name], @params[:package_version])
    result = package.exists
    return false unless result.message.eql? "Package #{group_name}/#{package_name}-#{package_version} does not exist"
  end
end
