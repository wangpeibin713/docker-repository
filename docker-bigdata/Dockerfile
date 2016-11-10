FROM wangpeibin713/zeppelin:0.6.2
MAINTAINER wangpeibin713
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN yum install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion

RUN echo 'export PATH=/usr/local/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /usr/local/conda


ENV PATH /usr/local/conda/bin:$PATH

RUN /usr/local/conda/bin/conda install jupyter -y --quiet

#COPY /etc/bootstrap.sh /etc/bootstrap-zeppelin.sh
COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENTRYPOINT ["/etc/bootstrap.sh"]