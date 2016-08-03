# Dockerfile to have a running centos6 installation with chefdk 
FROM centos:6
RUN curl -O http://cdn.mysql.com/archives/mysql-5.6/MySQL-5.6.19-1.el6.x86_64.rpm-bundle.tar
RUN tar -xf MySQL-5.6.19-1.el6.x86_64.rpm-bundle.tar
RUN yum localinstall -y MySQL-server-5.6.19-1.el6.x86_64.rpm MySQL-client-5.6.19-1.el6.x86_64.rpm

RUN rpm --import https://downloads.chef.io/packages-chef-io-public.key
RUN echo -e "[chef-stable]\nname=chef-stable\nbaseurl=https://packages.chef.io/stable-yum/el/6/\$basearch/ \ngpgcheck=1 \nenabled=1" > chef-stable.repo
RUN cat chef-stable.repo
RUN mv chef-stable.repo /etc/yum.repos.d/

RUN yum makecache fast
RUN yum install -y chef-12.11.18-1.el6.x86_64

RUN rm -rf *
