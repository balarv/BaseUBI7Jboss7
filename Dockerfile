FROM registry.access.redhat.com/ubi7/ubi:7.9-681
MAINTAINER <rvbala@qcsdclabs.com>
LABEL description="Base image for JBOSS 7.4 on UBI7.9
Run yum install -y httpd && \
    yum install -y java* && \
    yum install -y unzip && \
    yum clean all
Run echo "Base image for JBOSS7.4 ON UBI7.9" >> /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D","FOREGROUND"]
