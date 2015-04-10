#
# Cookbook Name:: hello_delivery
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "httpd"

service "httpd" do
  action [:start, :enable]
end

file "/var/www/html/index.html" do
  content "Hello, Chef Delivery!\n"
end
