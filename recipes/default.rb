#
# Cookbook Name:: foodcritic
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "build-essential"


case node.platform_family
when /debian/
  package "libxml2-dev"
  package "libxslt-dev"
else
  package "libxml2-devel"
  package "libxslt-devel"
end

gem_package "foodcritic" do
  gem_binary "/opt/chef/embedded/bin/gem"
end

file "/opt/chef/embedded/bin/foodcritic" do
  mode "0755"
end
