# Requirements
* Ensure you have Docker installed and running on your container host
* A Graphite container running on the same host which will be used as a target by collectd

# Deployment
* Create the "/opt/data/etc/collectd-conf" directory on your container host
* Load the container using the following command:<br>
  # docker run --name collectd -d -v /opt/data/etc/collectd-conf:/etc/collectd-conf:Z --restart=always --link harvest:harvest dburkland/collectd:latest
* NOTE: Replace "harvest" with the name of the Graphite container you have already running on your host as per the requirements.

