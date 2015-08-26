# Hello World in C#

## Install
- Install Docker
```
apt-get install docker
```
- Download this repository
```
wget https://github.com/helloworld-universe/hello-world-csharp/archive/master.zip
unzip master.zip
cd hello-world-csharp-master
```
- Build the docker image
```
docker build -t hello-world/csharp .
```
- Run the docker container
```
docker run --rm -it hello-world/csharp
```
