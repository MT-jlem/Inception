#!/bin/bash

sed -i "s/127.0.0.1 /0.0.0.0/" /etc/redis/redis.conf

echo "maxmemory  100mb" >> /etc/redis/redis.conf
echo "maxmemory-policy allkey-lfu" >> /etc/redis/redis.conf


redis-server --protected-mode no