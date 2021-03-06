FROM registry.access.redhat.com/rhel7:7.3
ENV container docker
RUN yum -y install bind && \
    yum clean all && \
    systemctl enable named

STOPSIGNAL SIGRTMIN+3

EXPOSE 53
EXPOSE 53/udp

CMD [ "/sbin/init" ]
