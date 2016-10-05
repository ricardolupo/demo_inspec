#
# Cookbook Name:: build_cookbook
# Recipe:: lint
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
# we want to lint ruby and yaml

# ruby check - steal from delivery-truck
execute 'Running Lint checks on Ruby files in this profile...' do
  command "rubocop #{workflow_workspace_repo}/controls/"
end
# yaml check - use ruby command line

ruby_block 'Running YAML lint checks' do
  block do
    require 'yaml'
    puts YAML.load_file("#{workflow_workspace_repo}/inspec.yml")
  end
end
