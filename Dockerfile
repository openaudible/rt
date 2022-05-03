# Build: docker build -t rt .

FROM ubuntu:20.04

LABEL description="Container for use with Visual Studio" 
WORKDIR /build

RUN apt-get update -y
RUN apt-get install -y build-essential git vim
COPY * /build/

# RUN git clone https://github.com/openaudible/rt.git 
RUN  make

ENTRYPOINT ["bash"]


