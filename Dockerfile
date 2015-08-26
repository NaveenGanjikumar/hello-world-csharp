FROM ubuntu:15.04
MAINTAINER Yonas Yanfa

WORKDIR /root
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get update && apt-get install vim-tiny mono-complete -y
ADD . /root
RUN mcs hello-world.cs
CMD bash -C '/root/run.sh';'bash'
