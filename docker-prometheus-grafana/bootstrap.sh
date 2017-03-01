#!/bin/bash
cd /root/grafana-4.1.1-1484211277/ && nohup ./bin/grafana-server web &
/root/prometheus-1.5.0.linux-amd64/prometheus -config.file=/etc/prometheus/prometheus.yml -storage.local.path=/prometheus -web.console.libraries=/usr/share/prometheus/console_libraries -web.console.templates=/usr/share/prometheus/consoles
