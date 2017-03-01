docker stop prometheus-grafana && docker rm prometheus-grafana || echo "hi"
docker run -d -p 9090:9090 -p 3000:3000  --name prometheus-grafana -h prometheus-grafana wangpeibin713/prometheus-grafana
