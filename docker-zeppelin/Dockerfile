FROM wangpeibin713/spark:2.0.1
MAINTAINER wangpeibin713

#RUN curl -s http://apache.fayea.com/zeppelin/zeppelin-0.6.2/zeppelin-0.6.2-bin-all.tgz | tar -xz -C /usr/local/
COPY zeppelin-0.6.2-bin-all.tgz /usr/local/zeppelin-0.6.2-bin-all.tgz
RUN cd /usr/local && tar -xzf zeppelin-0.6.2-bin-all.tgz
RUN cd /usr/local && ln -s zeppelin-0.6.2-bin-all zeppelin

# update boot script
#COPY /etc/bootstrap.sh /etc/bootstrap-spark.sh
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENTRYPOINT ["/etc/bootstrap.sh"]