FROM phusion/baseimage:jammy-1.0.1
MAINTAINER Bayf <dev@bayf.us>

ADD . /image_build
RUN /image_build/install.sh
#turn cron off
RUN touch /etc/service/cron/down && chmod +x /etc/service/cron/down


RUN apt-get update && apt-get upgrade -y -o Dpkg::Options::="--force-confold"

CMD ["/sbin/my_init", "--skip-startup-files"]
EXPOSE 80 443
