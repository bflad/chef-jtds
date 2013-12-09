#
# Cookbook Name:: jtds
# Attributes:: default
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

default['jtds']['install_paths'] = []
default['jtds']['version']  = '1.3.0'
default['jtds']['url']      = "http://sourceforge.net/projects/jtds/files/jtds/#{node['jtds']['version']}/jtds-#{node['jtds']['version']}-dist.zip/download"
default['jtds']['checksum'] = 'bf01ada2729808fbb17ebe3aefad962520685cb8b1d189a2a66d6354ead0cc46'
