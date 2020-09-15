#!/bin/sh
export VER=2.2.0-1
#docker images -a | grep "moloch-build" | awk '{print $3}' | xargs docker rmi

docker image build build8 --tag andywick/moloch-build-8:$VER
docker image build build7 --tag andywick/moloch-build-7:$VER
docker image build build6 --tag andywick/moloch-build-6:$VER
docker image build build16 --tag andywick/moloch-build-16:$VER
docker image build build18 --tag andywick/moloch-build-18:$VER

exit 0

docker push andywick/moloch-build-8:$VER
docker push andywick/moloch-build-7:$VER
docker push andywick/moloch-build-6:$VER
docker push andywick/moloch-build-16:$VER
docker push andywick/moloch-build-18:$VER
