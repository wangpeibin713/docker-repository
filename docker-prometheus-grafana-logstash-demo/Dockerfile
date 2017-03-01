#FROM centos
FROM wangpeibin713/base-image
MAINTAINER wangpeibin713

#################### 安装  prometheus  ######################
#RUN curl -L -O https://github-cloud.s3.amazonaws.com/releases/6838921/83c6aa0a-e182-11e6-96a6-5bd92cc95b60.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170209%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170209T010458Z&X-Amz-Expires=300&X-Amz-Signature=9d97779ea9354e234de53f7f40087a42fade4f92541f1f13bda3ab5339ab74d4&X-Amz-SignedHeaders=host&actor_id=2971939&response-content-disposition=attachment%3B%20filename%3Dprometheus-1.5.0.linux-amd64.tar.gz&response-content-type=application%2Foctet-stream

COPY  dependencies/prometheus-1.5.0.linux-amd64.tar.gz /root/prometheus-1.5.0.linux-amd64.tar.gz
RUN cd /root && tar zxf prometheus-1.5.0.linux-amd64.tar.gz
RUN chmod +x /root/prometheus-1.5.0.linux-amd64/prometheus
COPY prometheus-conf/prometheus.yml /root/prometheus-1.5.0.linux-amd64/prometheus.yml
COPY prometheus-conf/alert.rules /root/prometheus-1.5.0.linux-amd64/alert.rules


#################### 安装  grafana  ######################
#RUN curl -L -O https://grafanarel.s3.amazonaws.com/builds/grafana-4.1.1-1484211277.linux-x64.tar.gz
COPY dependencies/grafana-4.1.1-1484211277.linux-x64.tar.gz /root/grafana-4.1.1-1484211277.linux-x64.tar.gz
RUN cd /root && tar zxf grafana-4.1.1-1484211277.linux-x64.tar.gz






#################### 安装  logstash  ######################
#RUN curl -L -O https://artifacts.elastic.co/downloads/logstash/logstash-5.2.1.tar.gz
COPY dependencies/logstash-5.2.1.rpm /root/
#RUN yum localinstall -y /root/logstash-5.2.1.rpm
RUN rpm -ivh  /root/logstash-5.2.1.rpm
RUN mkdir -p /root/logstash
COPY logstash-conf/logstash.conf /root/logstash


#################### 安装  json_exporter  ######################
RUN mkdir -p /root/json_exporter
COPY dependencies/json_exporter /root/json_exporter
COPY json-exporter-conf/json-exporter-logstash.yml /root/json_exporter/config.yml
RUN chmod +x /root/json_exporter/json_exporter


#################### 安装  node_exporter  ######################
#RUN curl -L -O https://github-cloud.s3.amazonaws.com/releases/9524057/f0d15d2a-b3e2-11e6-82b4-0ff3938151de.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170224%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170224T090027Z&X-Amz-Expires=300&X-Amz-Signature=4a64d58a69a24d9f35e7da20c19046b794b1a790990d63b6f04846f710221e0f&X-Amz-SignedHeaders=host&actor_id=2971939&response-content-disposition=attachment%3B%20filename%3Dnode_exporter-0.13.0.linux-amd64.tar.gz&response-content-type=application%2Foctet-stream

COPY dependencies/node_exporter-0.13.0.linux-amd64.tar.gz /root/
RUN cd /root/ && tar -zxvf node_exporter-0.13.0.linux-amd64.tar.gz && chmod +x node_exporter-0.13.0.linux-amd64/node_exporter



#################### 安装  alertmanager  ######################
COPY dependencies/alertmanager-0.5.1.linux-amd64.tar.gz /root/
RUN cd /root/ && tar -zxvf alertmanager-0.5.1.linux-amd64.tar.gz && chmod +x alertmanager-0.5.1.linux-amd64/alertmanager
COPY alertmanager-conf/alertmanager.yml /root/alertmanager-0.5.1.linux-amd64/


#################### 安装  notification-server  ######################
RUN mkdir -p /root/notification-server/
COPY dependencies/notification-server-0.0.1-SNAPSHOT.jar /root/notification-server/

EXPOSE     9093
EXPOSE     8080
EXPOSE     3000
EXPOSE     9600
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
VOLUME     [ "/root" ]
WORKDIR    /prometheus
CMD ["/etc/bootstrap.sh"]
