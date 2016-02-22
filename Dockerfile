FROM ubuntu:15.10
MAINTAINER Jon Lancelle "bassoman@gmail.com"

# Install AVConv and mkv Tools
RUN apt-get update && \ 
    apt-get install -y libav-tools \
    mkvtoolnix \
    && apt-get clean

# Set up local user to run as
RUN useradd -u 1000 -ms /bin/bash docker
USER docker
ENV HOME /home/docker

CMD ["/usr/bin/avconv"]
