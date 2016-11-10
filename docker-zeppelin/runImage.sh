docker stop zeppelin && docker rm zeppelin || echo "hi"
docker run -d -p 8088:8088 -p 8042:8042 -p 8080:8080 --name zeppelin -h sandbox -v  /share:/share wangpeibin713/zeppelin:0.6.2 -d
