#
# Cookbook Name:: remove
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{httpd java-1.8.0-openjdk-devel jenkins}.each do |pkg|
  package pkg do
    action :remove
  end
end
