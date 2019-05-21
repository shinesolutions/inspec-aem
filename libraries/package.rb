# frozen_string_literal: true

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

  def initialize
    conf = read_config
    @client = init_aem_client(conf)

    @params = {
      package_group: ENV['package_group'],
      package_name: ENV['package_name'],
      package_version: ENV['package_version']
    }
  end

  def has_package_imported?
    package = @client.package(@params[:package_group], @params[:package_name], @params[:package_version])
    result = package.exists
    return true if result.message.eql? "Package #{@params[:package_group]}/#{@params[:package_name]}-#{@params[:package_version]} exists"
  end

  def has_package_not_imported?
    package = @client.package(@params[:package_group], @params[:package_name], @params[:package_version])
    result = package.exists
    return true if result.message.eql? "Package #{@params[:package_group]}/#{@params[:package_name]}-#{@params[:package_version]} does not exist"
  end

  def has_package_installed?
    package = @client.package(@params[:package_group], @params[:package_name], @params[:package_version])
    result = package.exists
    return true if result.message.eql? "Package #{@params[:package_group]}/#{@params[:package_name]}-#{@params[:package_version]} exists"
  end

  def has_package_not_installed?
    package = @client.package(@params[:package_group], @params[:package_name], @params[:package_version])
    result = package.exists
    return true if result.message.eql? "Package #{@params[:package_group]}/#{@params[:package_name]}-#{@params[:package_version]} does not exist"
  end
end
