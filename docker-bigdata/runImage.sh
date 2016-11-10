docker stop bigdata && docker rm bigdata || echo "hi"
docker run -d -p 8088:8088 -p 8042:8042 -p 8080:8080 -p 8888:8888 --name bigdata -h sandbox -v  /share:/share wangpeibin713/bigdata -d
