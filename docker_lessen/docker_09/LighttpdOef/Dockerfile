FROM alpine
# Install packages
RUN apk update && \
  apk add --no-cache \
  lighttpd \
  openssl \
  curl && \
  rm -rf /var/cache/apk/*

EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]