From centos

#RUN curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.rpm
ADD dependencies/jdk-8u121-linux-x64.rpm /root/jdk-8u121-linux-x64.rpm
RUN rpm -ivh /root/jdk-8u121-linux-x64.rpm
ENV JAVA_HOME /usr/java/jdk1.8.0_121/
ENV PATH $PATH:$JAVA_HOME/bin

ADD dependencies/unzip-6.0-15.el7.x86_64.rpm /root/unzip-6.0-15.el7.x86_64.rpm
RUN rpm -ivh /root/unzip-6.0-15.el7.x86_64.rpm

RUN  yum install -y epel-release
RUN  yum install -y openssh-server
RUN  yum install -y passwd
RUN  yum clean all

WORKDIR /root/
CMD ["/usr/sbin/sshd", "-D"]