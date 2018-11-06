#!/bin/bash

# Script for bootstrapping Ubuntu on EC2.

sudo apt-get update

# Install Nginx.
sudo apt-get install curl git-core nginx -y

# Install Ruby via RVM.
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm
rvm requirements

# Install Ruby.
rvm install 2.2.1
rvm use 2.2.1 --default

# Install Rails and Bundler.
gem install rails -V --no-ri --no-rdoc
gem install bundler -V --no-ri --no-rdoc

# Setup SSH with Github.
ssh -T git@github.com
ssh-keygen -t rsa

# Create a public key registered on github then push it to an EC2 instance.
