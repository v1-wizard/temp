#!/usr/bin/env bash

# Install required packages
apt-get -y update
apt-get -y install python-dev
apt-get -y install python-pip
apt-get -y install libxml2-dev
apt-get -y install libxslt-dev

# Install virtualenv
pip install virtualenv
pip install virtualenvwrapper

# Setup virtualenv wrapper
export WORKON_HOME=/home/vagrant/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Setup virtualenv for alco
mkvirtualenv alco
workon alco
pip install -r /vagrant/.meta/packages_alco
deactivate