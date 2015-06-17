#!/usr/bin/env bash

# Fix for dpkg-reconfigure: unable to re-open stdin: No file or directory
# https://github.com/mitchellh/vagrant/issues/1673#issuecomment-69060813
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

# Update apt-get sources
apt-get update

# Install base system tools
apt-get install -y build-essential curl git

# Install NodeJS v0.12.x
curl -sL https://deb.nodesource.com/setup_0.12 | bash -
apt-get install -y nodejs

# Update to latest npm
npm install -g npm

# Install Yeoman (+ dependencies) and Bitmaker Generator
npm install -g yo grunt-cli bower generator-bitmaker
