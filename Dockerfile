FROM raspbian/stretch

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install unzip

RUN apt-get install libraspberrypi0 -y

RUN cd home && \
wget https://github.com/Jugganourt/displaycameras/archive/refs/heads/master.zip && \
unzip master.zip && \
cd displaycameras-master && \
chmod +x install.sh && \
sudo ./install.sh skip

ENTRYPOINT displaycameras start && /bin/bash