#
# Cookbook Name:: build_cookbook
# Recipe:: syntax
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'running syntax checks on InSpec profile...' do
  command "inspec check #{workflow_workspace_repo}"
end

ruby_block 'Running YAML lint checks' do
  block do
    require 'yaml'
    puts YAML.load_file("#{workflow_workspace_repo}/inspec.yml")
  end
end
