FROM ubuntu:xenial

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install apt-transport-https -y
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update -y
RUN apt-get install sbt -y
