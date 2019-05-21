# frozen_string_literal: true

#  Copyright 2018 Shine Solutions
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
require 'ruby_aem'

def read_config
  config_file = ENV['INSPEC_AEM_CONF'] || './conf/aem.yml'
  config = YAML.load_file(config_file) if File.exist?(config_file)
  config_params = {}
  %w[username password protocol host port verify_ssl debug].each { |field|
    env_field = format('aem_%<field>s', field: field)
    if !ENV[env_field].nil?
      config_params[field.to_sym] = ENV[env_field]
    elsif !config.nil? && !config[field.to_sym].nil?
      config_params[field.to_sym] = config[field.to_sym]
    end
  }
  config_params
end

def init_aem_client(conf)
  RubyAem::Aem.new(
    username: conf[:username],
    password: conf[:password],
    protocol: conf[:protocol] || 'http',
    host: conf[:host] || 'localhost',
    port: conf[:port],
    verify_ssl: conf[:verify_ssl] ? conf[:verify_ssl] == true : false,
    debug: conf[:debug] ? conf['debug'] == true : false
  )
end
