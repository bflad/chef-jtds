#
# Cookbook Name:: jtds
# Provider:: jar
#
# Copyright 2013
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

action :create do
  remote_file "#{Chef::Config[:file_cache_path]}/jtds-#{node['jtds']['version']}-dist.zip" do
    source node['jtds']['url']
    checksum node['jtds']['checksum']
    mode 00644
    action :create_if_missing
  end

  execute "jtds-#{new_resource.path}" do
    cwd Chef::Config[:file_cache_path]
    command "unzip jtds-#{node['jtds']['version']}-dist.zip jtds-#{node['jtds']['version']}.jar -d #{new_resource.path}"
    creates "#{new_resource.path}/jtds-#{node['jtds']['version']}.jar"
    action :run
  end

  new_resource.updated_by_last_action(true)
end
