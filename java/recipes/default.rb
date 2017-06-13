#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "java" do
  action :remove
end

package "java-1.8.0-openjdk-devel" do
  action :install
end
