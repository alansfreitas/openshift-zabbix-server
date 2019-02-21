FROM centos:centos7

RUN yum install -y https://repo.zabbix.com/zabbix/4.0/rhel/7/x86_64/zabbix-release-4.0-1.el7.noarch.rpm && yum install -y zabbix-server-mysql

COPY zabbix_server.conf /etc/zabbix 

USER zabbix

EXPOSE 10051/TCP

CMD /sbin/zabbix_server -f
