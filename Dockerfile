FROM raspbian/stretch

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install unzip

RUN apt-get install libraspberrypi0 -y

WORKDIR /home

RUN wget https://github.com/Jugganourt/displaycameras/archive/refs/heads/master.zip

RUN unzip master.zip

WORKDIR /home/displaycameras-master

RUN chmod +x install.sh

RUN sudo ./install.sh -r N -g ""

ENTRYPOINT displaycameras stop ; displaycameras start ; /bin/bash