FROM ubuntu:16.04 AS builder
RUN apt-get update && apt-get install curl -y
RUN echo "testfile" > /etc/testfile

FROM ubuntu:16.04
COPY --from=0 /etc/testfile /usr/testfile
RUN cat /usr/testfile
