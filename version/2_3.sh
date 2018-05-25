#!/bin/bash -e

echo "================= Installing Python 2.3 ==================="
# python 2.3 is already installed
yum install -y python-devel-2.3*

# Install virtualenv
virtualenv -p python $HOME/venv/2.3*

# Install pip packages
. $HOME/venv/2.3/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.3 ==================="
