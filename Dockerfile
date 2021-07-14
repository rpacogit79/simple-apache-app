FROM ubi7/ubi:7.7

MAINTAINER Tester Prog <tester@myprog.com>

LABEL description="A custom Apache container based on UBI 7"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Good morning Rahul. Hope you are happy to learn OpenShift today!!!" > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
