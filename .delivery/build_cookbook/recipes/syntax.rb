#
# Cookbook Name:: build_cookbook
# Recipe:: syntax
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

execute 'running syntax checks on InSpec profile...' do
  command "inspec check #{workflow_workspace_repo}"
end

# Insert version checking here
