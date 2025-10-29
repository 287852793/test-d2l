#!/bin/bash
cd `dirname $0`

docker run -d --gpus all \
-v $PWD/code/:/opt/code/ \
--shm-size=16G \
--rm -p 8889:8888 \
--name test-d2l \
172.20.20.187/test-d2l:0.0.1