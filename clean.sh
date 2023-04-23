#!/bin/bash

docker stop my_cont
docker rm my_cont
docker rmi -f my_img:v1
