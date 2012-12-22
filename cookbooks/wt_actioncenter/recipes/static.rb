#
# Cookbook Name:: wt_actioncenter
# Recipe:: static
# Author: Marcus Vincent(<marcus.vincent@webtrends.com>)
#
# Copyright 2012, Webtrends
#
# All rights reserved - Do Not Redistribute
# This recipe installs the static content for ActionCenter
 
 tarball      = node['wt_actioncenter']['static_download_url'].split("/")[-1]
 
# pull the install .tgz file down from the repo
remote_file "#{Chef::Config[:file_cache_path]}/#{tarball}" do
  source node['wt_actioncenter']['static_download_url'] 
end

# uncompress the install .tgz
execute 'tar' do
  user  'root'
  group 'root'  
  cwd "/var/www/ationcenter"
  command "tar zxf #{Chef::Config[:file_cache_path]}/#{tarball}"
end
