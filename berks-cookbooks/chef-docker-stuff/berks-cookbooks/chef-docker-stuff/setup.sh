#!/bin/sh

https://opscode-omnibus-packages.s3.amazonaws.com/debian/8/x86_64/chefdk_0.11.0-1_amd64.deb
dpkg -i chefdk_0.11.0-1_amd64.deb
apt-get install git
wget https://www.opscode.com/chef/install.sh; bash install.sh
