FROM debian:stable-slim

RUN apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y vim && \
  apt-get install -y curl git

ENV p /tools
WORKDIR $p

COPY ./getMac.sh ./
CMD ["bash"]
