FROM centos
MAINTAINER wangpeibin713
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

#RUN curl -L -O https://github-cloud.s3.amazonaws.com/releases/6838921/83c6aa0a-e182-11e6-96a6-5bd92cc95b60.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170209%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170209T010458Z&X-Amz-Expires=300&X-Amz-Signature=9d97779ea9354e234de53f7f40087a42fade4f92541f1f13bda3ab5339ab74d4&X-Amz-SignedHeaders=host&actor_id=2971939&response-content-disposition=attachment%3B%20filename%3Dprometheus-1.5.0.linux-amd64.tar.gz&response-content-type=application%2Foctet-stream

COPY  prometheus-1.5.0.linux-amd64.tar.gz /root/prometheus-1.5.0.linux-amd64.tar.gz
RUN cd /root && tar zxf prometheus-1.5.0.linux-amd64.tar.gz
RUN chmod +x /root/prometheus-1.5.0.linux-amd64/prometheus

#RUN curl -L -O https://grafanarel.s3.amazonaws.com/builds/grafana-4.1.1-1484211277.linux-x64.tar.gz
COPY grafana-4.1.1-1484211277.linux-x64.tar.gz /root/grafana-4.1.1-1484211277.linux-x64.tar.gz
RUN cd /root && tar zxf grafana-4.1.1-1484211277.linux-x64.tar.gz


COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE     3000
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
VOLUME     [ "/prometheus" ]
WORKDIR    /prometheus
ENTRYPOINT ["/etc/bootstrap.sh"]
#ENTRYPOINT ["sh"]

#VOLUME     [ "/prometheus" ]
#WORKDIR    /prometheus
#ENTRYPOINT [ "/bin/prometheus" ]
#CMD        [ "-config.file=/etc/prometheus/prometheus.yml", \
#             "-storage.local.path=/prometheus", \
#             "-web.console.libraries=/usr/share/prometheus/console_libraries", \
#             "-web.console.templates=/usr/share/prometheus/consoles" ]