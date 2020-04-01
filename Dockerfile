FROM centos:centos7

LABEL maintainer="Alain Nicolas aln.nicolas@gmail.com"

# Base dependencies

# Configure Supervisord
COPY supervisord/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Configure InfluxDB

# Configure Telegraf

# Configure Grafana with provisioning
ADD grafana/provisioning /etc/grafana/provisioning
ADD grafana/dashboards /var/lib/grafana/dashboards
COPY grafana/grafana.ini /etc/grafana/grafana.ini

EXPOSE 3000/tcp 8086/tcp 57000/tcp


CMD ["/usr/bin/supervisord"]
