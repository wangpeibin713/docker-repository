docker stop prometheus-demo && docker rm prometheus-demo || echo "hi"
docker run -d -p 9090:9090 -p 3000:3000 -p 9600:9600 -p 9093:9093 -p 8080:8080 --name prometheus-demo -h prometheus-demo wangpeibin713/prometheus-demo
