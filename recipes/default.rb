#
# Cookbook Name:: rundeck
# Recipe:: default
#
# Copyright 2012, Peter Crossley
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

user node['rundeck']['user'] do
  system true
  shell "/bin/bash"
  home node['rundeck']['user_home']
end

directory "#{node['rundeck']['user_home']}/.ssh" do
  owner node['rundeck']['user']
  group node['rundeck']['user']
  recursive true
  mode 00700
end

cookbook_file "#{node['rundeck']['user_home']}/.ssh/authorized_keys" do
  owner node['rundeck']['user']
  group node['rundeck']['user']
  mode 00600
  backup false
  source "rundeck.pub"
end

file "/etc/sudoers.d/rundeck" do
  owner "root"
  group "root"
  mode 00440
  content "rundeck    ALL = NOPASSWD: ALL"
  action :create
end