#
# Cookbook Name:: hello_delivery
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'hello_delivery::default' do

  context 'When all attributes are default, on an unspecified platform' do

    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

   it 'installs httpd' do
     expect(chef_run).to install_package 'httpd'
   end

   it 'starts httpd' do
     expect(chef_run).to start_service 'httpd'
   end

   it 'enables httpd' do
     expect(chef_run).to enable_service 'httpd'
   end

   it 'creates a home page' do
     expect(chef_run).to render_file('/var/www/html/index.html').with_content(/Delivery/)
   end

  end
end
