FROM ubuntu:latest

RUN apt-get update
RUN apt-get full-upgrade -y
RUN apt-get install wget -y
RUN apt-get install python2.7 -y
RUN apt-get install libsdl2-dev -y
RUN apt-get install libpython2.7 -y
RUN apt-get install locales -y

RUN wget https://files.ballistica.net/bombsquad/builds/BombSquad_Server_Linux_64bit_1.4.150.tar.gz
RUN mkdir /bombsquad
RUN tar xvf BombSquad_Server_Linux_64bit_1.4.150.tar.gz -C /bombsquad --strip-components=1
RUN rm BombSquad_Server_Linux_64bit_1.4.150.tar.gz
RUN chmod a+x /bombsquad/bs_headless
RUN ln -s /usr/bin/python2.7 /usr/bin/python

EXPOSE 43210/udp

RUN locale-gen en_US
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

WORKDIR /bombsquad

CMD ["python2.7", "bombsquad_server"]
