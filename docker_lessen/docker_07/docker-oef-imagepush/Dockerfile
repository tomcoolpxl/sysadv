FROM frolvlad/alpine-gcc
COPY prime.c /root
WORKDIR /root
RUN gcc -o prime prime.c
CMD ["./prime"]