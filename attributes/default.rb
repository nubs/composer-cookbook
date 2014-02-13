#
# Cookbook Name:: composer
# Attributes:: default
#
# Copyright 2012-2014, Escape Studios
#

if node['platform'] == "windows"
    default['composer']['url'] = "https://getcomposer.org/Composer-Setup.exe"
    default['composer']['install_dir'] = "C:\\ProgramData\\ComposerSetup"
    default['composer']['bin'] = "#{node['composer']['install_dir']}\\composer.bat"
else
    default['composer']['url'] = "http://getcomposer.org/composer.phar"
    default['composer']['install_dir'] = "/usr/local/bin"
    default['composer']['bin'] = "#{node['composer']['install_dir']}/composer"
    default['composer']['install_globally'] = true
end

default['composer']['global_configs'] = {}
default['composer']['php_recipe'] = "php::default"