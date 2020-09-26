# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vagrant.plugins = ["vagrant-reload", "vagrant-scp"]
end

travis_cli_box_vagrantfile = './vagrant/Vagrantfile.travis-cli-box'
load travis_cli_box_vagrantfile if File.exists?(travis_cli_box_vagrantfile)
