FROM ubuntu

LABEL description="Container for use with Visual Studio" 
WORKDIR /build

RUN apt-get update # && apt-get install -y g++ rsync zip openssh-server make git wget vim
RUN apt-get install -y build-essential git vim

RUN git clone https://github.com/openaudible/rainbow.git
RUN cd rainbow && make
# COPY * /build/
ENTRYPOINT ["bash"]

