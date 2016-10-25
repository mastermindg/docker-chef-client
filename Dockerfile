# Creating a Docker container containing Chef Client 12.x
#
# https://www.chef.io/download-chef-client/
#
# Start from Ubuntu 14.04.2 Docker images
FROM ubuntu:14.04.2

MAINTAINER Ken Jenney <me@kenjenney.com>

RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release
RUN curl -L https://www.chef.io/chef/install.sh | bash -s -- -v 12.1.1-1
RUN apt-get -yqq clean

# Make Chef available as a volume
VOLUME /opt/chef
