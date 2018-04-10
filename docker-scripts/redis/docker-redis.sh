#!/usr/bin/env bash

docker stop docker-redis
docker rm docker-redis

docker run -idt -p 6379:6379 -v `pwd`/data:/data --name docker-redis -v `pwd`/redis.conf:/etc/redis/redis_default.conf redis:3.2