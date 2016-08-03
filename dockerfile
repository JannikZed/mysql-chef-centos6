# Dockerfile to have a running centos6 installation with chefdk 
FROM centos:6
RUN curl -O http://downloads.mysql.com/archives/get/file/MySQL-5.6.19-1.el6.x86_64.rpm-bundle.tar
RUN tar -xf MySQL-5.6.19-1.el6.x86_64.rpm-bundle.tar
Sackhuhn
