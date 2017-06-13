#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "install-jenkins-repo" do
  command <<-_EOH_
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
    sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
  _EOH_
  action :run
  not_if { ::File.exists?("/etc/yum.repos.d/jenkins.repo")  }
end

package "jenkins" do
  action :install
end

service "jenkins" do
  action [:enable, :start]
end
