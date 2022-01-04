FROM ubuntu:18.04
RUN apt update \
  && apt -y install iproute2 iputils-ping dnsutils traceroute apache2
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-D", "FOREGROUND"]