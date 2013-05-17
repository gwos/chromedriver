#
# Cookbook Name:: chromedriver
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cache_dir = Chef::Config[:file_cache_path]
zip_path = "#{cache_dir}/#{node['chromedriver']['zip_file']}"
source_url = node['chromedriver']['source_url']
install_dir = node['chromedriver']['install_dir']

package "unzip" do
    action :install
end

remote_file zip_path do
    source source_url
    mode "0644"
    action :create_if_missing
end

execute "unzip #{zip_path} -d #{install_dir}" do
    creates "#{install_dir}/chromedriver"
end
