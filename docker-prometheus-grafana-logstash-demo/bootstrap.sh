#!/bin/bash
cd /root/grafana-4.1.1-1484211277/ && nohup ./bin/grafana-server web &
cd /root/logstash/ && nohup /usr/share/logstash/bin/logstash -f logstash.conf  --http.host 0.0.0.0 &
cd /root/json_exporter/ && nohup ./json_exporter http://127.0.0.1:9600/_node/stats/pipeline config.yml &
cd /root/node_exporter-0.13.0.linux-amd64/ && nohup ./node_exporter  &

cd /root/alertmanager-0.5.1.linux-amd64/ && nohup ./alertmanager -config.file=alertmanager.yml  &
cd /root/notification-server/ && nohup java -jar notification-server-0.0.1-SNAPSHOT.jar &
cd /root/prometheus-1.5.0.linux-amd64/ && nohup ./prometheus -config.file=./prometheus.yml -storage.local.path=/prometheus -web.console.libraries=/usr/share/prometheus/console_libraries -web.console.templates=/usr/share/prometheus/consoles &

/bin/bash

