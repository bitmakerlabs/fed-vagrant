#!/usr/bin/env bash

# Update apt-get sources
apt-get update

# Install base system tools
apt-get install -y build-essential curl git

# Install NodeJS
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

# Install Yeoman (+ dependencies) and Bitmaker Generator
npm install -g yo grunt-cli bower generator-bitmaker
