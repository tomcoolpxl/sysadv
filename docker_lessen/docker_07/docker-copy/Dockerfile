FROM frolvlad/alpine-gcc
COPY helloworld.c /root
WORKDIR /root
RUN gcc -o helloworld helloworld.c
CMD ["./helloworld"]