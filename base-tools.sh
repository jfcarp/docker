#!/bin/bash
apt-get -y update
apt-get -y upgrade
apt-get -y install python python-pip build-essential
apt-get -y install wget telnet dnsutils git vim tcpdump htop strace lsof netcat sysstat tcpflow systemd
pip install awscli
mkdir /var/private && chown -hR 1000:1000 /var/private
set -ex && apt-get -y update && apt-get -y upgrade && apt-get -y install wget && wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_1.3.4-c1.3.4_amd64.deb && dpkg -i influxdb-data_1.3.4-c1.3.4_amd64.deb
