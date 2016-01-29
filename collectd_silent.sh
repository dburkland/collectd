#!/bin/bash
# Filename:             collectd_silent.sh
# By:                   Dan Burkland
# Date:                 2015-12-23
# Purpose:              The purpose of this script is to silently configure collectd.
#						This script has been designed to be executed within the "dburkland/collectd" Docker container. 

### Setup collectd ###
echo "Setting up collectd..."
cd /root

if [ ! -e /etc/collectd-conf/collectd.conf ]; then
	mv -v /etc/collectd.conf /etc/collectd-conf/
else
	rm -vf /etc/collectd.conf
fi

ln -s /etc/collectd-conf/collectd.conf /etc/collectd.conf

# Enable collectd to start at boot and start it
chkconfig collectd on
/etc/init.d/collectd restart 2>&1

echo "Setup of collectd is complete."
###
