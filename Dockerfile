FROM debian
ADD base-tools.sh /opt/influxdb/base-tools.sh
RUN chmod +x /opt/influxdb/base-tools.sh && /opt/influxdb/base-tools.sh
ADD init.sh /opt/influxdb/init.sh
RUN chmod +x /opt/influxdb/init.sh
ENTRYPOINT ["/opt/influxdb/init.sh", "start"]
