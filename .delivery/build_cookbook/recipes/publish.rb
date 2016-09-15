#
# Cookbook Name:: build_cookbook
# Recipe:: publish
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Need to make sure we are logged into the compliance Server

compliance_server = node['workflow_inspec']['compliance-server']
token = node['workflow_inspec']['compliance-token']
user = node['workflow_inspec']['compliance-user']

execute 'Logging into Compliance Server' do
  command "inspec compliance login #{compliance_server} --user=#{user} --insecure --token=#{token}"
end

execute 'Uploading Profile to Compliance Server' do
  command "inspec compliance upload #{workflow_workspace_repo}"
end
